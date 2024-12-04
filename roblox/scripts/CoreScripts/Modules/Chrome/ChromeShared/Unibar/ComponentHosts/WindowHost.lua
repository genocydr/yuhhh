local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local VRService = game:GetService("VRService")

local ReactOtter = require(CorePackages.Packages.ReactOtter)

local UIBlox = require(CorePackages.Packages.UIBlox)
local Interactable = UIBlox.Core.Control.Interactable

local MouseIconOverrideService = require(CorePackages.InGameServices.MouseIconOverrideService)
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol
local INGAME_SELFVIEW_CURSOR_OVERRIDE_KEY = Symbol.named("SelfieViewCursorOverride")

local debounce = require(Root.Utility.debounce)
local ChromeService = require(Root.Service)
local Constants = require(Root.Unibar.Constants)
local ChromeTypes = require(Root.Service.Types)
local ChromeAnalytics = require(Root.Analytics.ChromeAnalytics)
local FFlagEnableChromeAnalytics = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeAnalytics()
local FFlagSelfViewFixes = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewFixes()
local FFlagWindowFixes = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagWindowFixes()
local shouldRejectMultiTouch = require(Root.Utility.shouldRejectMultiTouch)

local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local GetFFlagSelfViewAssertFix = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewAssertFix
-- APPEXP-2053 TODO: Remove all use of RobloxGui from ChromeShared
local GetFFlagSelfieViewMoreFixMigration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfieViewMoreFixMigration
local FIntChromeWindowLayoutOrder = game:DefineFastInt("ChromeWindowLayoutOrder", 2)
local FFlagWindowDragDetection = game:DefineFastFlag("WindowDragDetection", false)
local FIntWindowMinDragDistance = game:DefineFastInt("WindowMinDragDistance", 25)

local useWindowSize = require(Root.Hooks.useWindowSize)

export type WindowHostProps = {
	integration: ChromeTypes.IntegrationComponentProps,
	position: UDim2?,
}

local RESIZE_DEBOUNCE_TIME = 0.2
local ICON_SIZE = 42
local MOTOR_OPTIONS = {
	dampingRatio = 1,
	frequency = 3,
}
local COMPONENT_ZINDEX = {
	INTEGRATION = 1,
	CLOSE_BUTTON = 2,
	INPUT_SHIELD = 3,
	INPUT_WRAPPER = 4,
}

local didOverrideMouse = false

local WindowHost = function(props: WindowHostProps)
	local windowSize = useWindowSize(props.integration.integration)
	local windowRef: { current: Frame? } = React.useRef(nil)
	local connection: { current: RBXScriptConnection? } = React.useRef(nil)
	local dragging, setDragging = React.useBinding(false)
	local dragDistance = 0
	local positionTween: Tween? = React.useMemo(function()
		return nil
	end, {})

	local isMenuOpen = if FFlagSelfViewFixes
		then useSelector(function(state)
			return state.displayOptions.menuOpen or state.displayOptions.inspectMenuOpen
		end)
		else nil

	-- When a reposition tween is playing, momentarily disallow dragging the window
	local isRepositioning, updateIsRepositioning = React.useBinding(false)

	local frameWidth, setFrameWidth = ReactOtter.useAnimatedBinding(windowSize.X.Offset)
	local frameHeight, setFrameHeight = ReactOtter.useAnimatedBinding(windowSize.Y.Offset)

	React.useEffect(function()
		if frameWidth:getValue() == 0 then
			setFrameWidth(ReactOtter.instant(windowSize.X.Offset) :: any)
		else
			setFrameWidth(ReactOtter.spring(windowSize.X.Offset, MOTOR_OPTIONS))
		end
	end, { windowSize.X.Offset })

	React.useEffect(function()
		if frameHeight:getValue() == 0 then
			setFrameHeight(ReactOtter.instant(windowSize.Y.Offset) :: any)
		else
			setFrameHeight(ReactOtter.spring(windowSize.Y.Offset, MOTOR_OPTIONS))
		end
	end, { windowSize.Y.Offset })

	-- This effect is responsible for ultimately assigning the window position to the window host frame.
	-- Check whether the window was opened as a result of a drag from IconHost, when
	-- a connection is active drive the window frame position with the input object and
	-- adjust the size of the window to expand as if it was scaling up from the icon
	React.useEffect(function()
		local storedConnection: { current: RBXScriptConnection? }? = nil
		local originalInputObj: InputObject? = nil
		local dragConnection: any = ChromeService:dragConnection(props.integration.id)

		if not FFlagWindowFixes or dragConnection then
			storedConnection = dragConnection.connection
			originalInputObj = dragConnection.inputObject
		end
		assert(windowRef.current ~= nil)
		assert(windowRef.current.Parent ~= nil)

		local frame = windowRef.current
		local frameParent = windowRef.current:FindFirstAncestorWhichIsA("ScreenGui") :: ScreenGui
		local parentScreenSize = frameParent.AbsoluteSize

		if storedConnection ~= nil then
			connection = storedConnection
			setDragging(true)

			if connection then
				setFrameWidth(ReactOtter.instant(ICON_SIZE) :: any)
				setFrameHeight(ReactOtter.instant(ICON_SIZE) :: any)

				task.defer(setFrameWidth, ReactOtter.spring(windowSize.X.Offset, MOTOR_OPTIONS))
				task.defer(setFrameHeight, ReactOtter.spring(windowSize.Y.Offset, MOTOR_OPTIONS))

				local frameStartPosition =
					Vector3.new(windowRef.current.AbsolutePosition.X, windowRef.current.AbsolutePosition.Y, 0)
				local dragStartPosition = frameStartPosition

				if FFlagEnableChromeAnalytics then
					ChromeAnalytics.default:setWindowDefaultPosition(
						props.integration.id,
						Vector2.new(frameStartPosition.X, frameStartPosition.Y)
					)
				end

				connection.current = UserInputService.InputChanged:Connect(function(inputChangedObj: InputObject, _)
					local inputPosition = inputChangedObj.Position

					if shouldRejectMultiTouch(originalInputObj, inputChangedObj) then
						return
					end

					local delta = inputPosition - dragStartPosition
					local newPosition = {
						X = math.clamp((delta + frameStartPosition).X, 0, parentScreenSize.X),
						Y = math.clamp((delta + frameStartPosition).Y, 0, parentScreenSize.Y),
					}

					frame.Position = UDim2.fromOffset(newPosition.X, newPosition.Y)
				end)
			end
		else
			-- If the position signal is available consume it
			-- Always translate the position to absolute coordinates accounting for X scale
			local defaultPosition: UDim2 = props.position or UDim2.new()
			if props.integration.integration.cachePosition then
				local cachedPosition = ChromeService:windowPosition(props.integration.id) or UDim2.new()
				local leftSideOffset = if cachedPosition.X.Scale == 1 then parentScreenSize.X else 0
				cachedPosition = UDim2.new(0, leftSideOffset + cachedPosition.X.Offset, 0, cachedPosition.Y.Offset)
				frame.Position = cachedPosition
			else
				local leftSideOffset = if defaultPosition.X.Scale == 1 then parentScreenSize.X else 0
				frame.Position = UDim2.new(0, leftSideOffset + defaultPosition.X.Offset, 0, defaultPosition.Y.Offset)
			end
		end
	end, {})

	local cachePosition = React.useCallback(function(position: UDim2)
		if props.integration.integration.cachePosition then
			ChromeService:updateWindowPosition(props.integration.id, position)
		end
	end, { props.integration })

	local mouseEntered = if GetFFlagSelfieViewMoreFixMigration()
		then React.useCallback(function()
			if not VRService.VREnabled then
				didOverrideMouse = true
				MouseIconOverrideService.push(
					INGAME_SELFVIEW_CURSOR_OVERRIDE_KEY,
					Enum.OverrideMouseIconBehavior.ForceShow
				)
			end
		end)
		else nil

	local mouseLeft = if GetFFlagSelfieViewMoreFixMigration()
		then React.useCallback(function()
			if didOverrideMouse then
				didOverrideMouse = false
				MouseIconOverrideService.pop(INGAME_SELFVIEW_CURSOR_OVERRIDE_KEY)
			end
		end)
		else nil

	local touchBegan = React.useCallback(function(_: Frame, inputObj: InputObject)
		assert(windowRef.current ~= nil)
		assert(windowRef.current.Parent ~= nil)

		local frame = windowRef.current
		local frameParent = windowRef.current:FindFirstAncestorWhichIsA("ScreenGui") :: ScreenGui
		local parentScreenSize = frameParent.AbsoluteSize

		local anchorPosition = Vector2.new(frameWidth:getValue(), frameHeight:getValue())
			* (props.integration.integration.windowAnchorPoint or Vector2.new(0.5, 0.5))

		-- Input Objects are reused across different connections
		-- therefore cache the value of the start position
		local dragStartPosition = inputObj.Position
		local frameStartPosition = Vector3.new(
			windowRef.current.AbsolutePosition.X + anchorPosition.X,
			windowRef.current.AbsolutePosition.Y + anchorPosition.Y,
			0
		)

		if
			inputObj.UserInputType == Enum.UserInputType.MouseButton1
			or inputObj.UserInputType == Enum.UserInputType.Touch
		then
			if FFlagEnableChromeAnalytics then
				ChromeAnalytics.default:onWindowTouchBegan(
					props.integration.id,
					Vector2.new(windowRef.current.AbsolutePosition.X, windowRef.current.AbsolutePosition.Y)
				)
			end

			-- Handle dragging
			if not connection.current and not isRepositioning:getValue() then
				-- The dragging callback might never be called when a single tap is registered
				-- Assign the position to the frame ref itself to ensure we have the most current
				local newPosition = {
					X = math.clamp(
						(frameStartPosition).X,
						0,
						parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
					),
					Y = math.clamp(
						(frameStartPosition).Y,
						0,
						parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
					),
				}
				frame.Position = UDim2.fromOffset(newPosition.X, newPosition.Y)
				connection.current = UserInputService.InputChanged:Connect(function(inputChangedObj: InputObject, _)
					if shouldRejectMultiTouch(inputObj, inputChangedObj) then
						return
					end

					local inputPosition = inputChangedObj.Position
					local delta = inputPosition - dragStartPosition
					if FFlagWindowDragDetection then
						dragDistance += delta.Magnitude
					end

					if not FFlagWindowDragDetection or dragDistance > FIntWindowMinDragDistance then
						setDragging(true)

						local newPosition = {
							X = math.clamp(
								(delta + frameStartPosition).X,
								anchorPosition.X,
								parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
							),
							Y = math.clamp(
								(delta + frameStartPosition).Y,
								anchorPosition.Y,
								parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
							),
						}

						frame.Position = UDim2.fromOffset(newPosition.X, newPosition.Y)

						if FFlagEnableChromeAnalytics then
							ChromeAnalytics.default:onWindowDrag(props.integration.id, inputPosition)
						end
					end
				end)
			end
		end
	end, {})

	local requiresRepositioning = function(frame: Frame)
		local frameParent = frame.Parent :: ScreenGui

		local xPosition = frame.Position.X.Offset
		local yPosition = frame.Position.Y.Offset

		local anchorPosition = Vector2.new(frameWidth:getValue(), frameHeight:getValue())
			* (props.integration.integration.windowAnchorPoint or Vector2.new(0.5, 0.5))
		local parentScreenSize = frameParent.AbsoluteSize

		return xPosition < anchorPosition.X
			or xPosition > parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
			or yPosition < anchorPosition.Y
			or yPosition > parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
	end

	-- When the drag ends and the window frame is clipped, reposition it within the screen bounds
	local repositionWindowWithinScreenBounds = React.useCallback(function(instant: boolean?)
		if GetFFlagSelfViewAssertFix() then
			-- Don't reposition if the window was closed within the debounce or umount
			if windowRef == nil or windowRef.current == nil then
				return
			end
		end
		assert(windowRef.current ~= nil)
		assert(windowRef.current.Parent ~= nil)

		local frame = windowRef.current

		local xPosition = frame.Position.X.Offset
		local yPosition = frame.Position.Y.Offset

		if positionTween and positionTween.PlaybackState == Enum.PlaybackState.Playing then
			positionTween:Cancel()
		end

		if requiresRepositioning(frame) then
			if frame == nil then
				return
			end

			local frameParent = windowRef.current.Parent :: ScreenGui

			local anchorPosition = Vector2.new(frameWidth:getValue(), frameHeight:getValue())
				* (props.integration.integration.windowAnchorPoint or Vector2.new(0.5, 0.5))

			local parentScreenSize = frameParent.AbsoluteSize

			local x = 0
			local y = 0
			if parentScreenSize.X > frameWidth:getValue() then
				x = math.clamp(
					xPosition,
					anchorPosition.X,
					parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
				)
			end
			if parentScreenSize.Y > frameHeight:getValue() then
				y = math.clamp(
					yPosition,
					anchorPosition.Y,
					parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
				)
			end

			local positionTarget = UDim2.new(0, x, 0, y)

			cachePosition(positionTarget)
			if not instant then
				updateIsRepositioning(true)
				local tweenStyle = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
				positionTween = TweenService:Create(frame, tweenStyle, { Position = positionTarget })
				assert(positionTween ~= nil)
				positionTween.Completed:Connect(function(_)
					updateIsRepositioning(false)
					positionTween = nil
				end)
				positionTween:Play()
			else
				frame.Position = positionTarget
			end
		else
			cachePosition(UDim2.new(0, xPosition, 0, yPosition))
		end
	end, {})

	local touchEnded = React.useCallback(function(_: Frame, inputObj: InputObject)
		if FFlagWindowDragDetection then
			dragDistance = 0
		end
		if
			inputObj.UserInputType == Enum.UserInputType.MouseButton1
			or inputObj.UserInputType == Enum.UserInputType.Touch
		then
			if windowRef.current then
				if FFlagEnableChromeAnalytics then
					ChromeAnalytics.default:onWindowTouchEnded(
						props.integration.id,
						Vector2.new(windowRef.current.AbsolutePosition.X, windowRef.current.AbsolutePosition.Y),
						requiresRepositioning(windowRef.current)
					)
				end
			end

			-- Handle dragging
			if connection.current then
				connection.current:Disconnect()
				connection.current = nil
				setDragging(false)
				ChromeService:gesture(props.integration.id, nil)
				repositionWindowWithinScreenBounds()
			end
		end
	end, {})

	local windowDisplayOrder = FIntChromeWindowLayoutOrder

	return ReactRoblox.createPortal({
		Name = React.createElement("ScreenGui", {
			Name = Constants.WINDOW_HOST_GUI_NAME .. ":" .. props.integration.id,
			-- TODO manage display ordering
			[React.Change.AbsoluteSize] = debounce(function()
				repositionWindowWithinScreenBounds()
			end, RESIZE_DEBOUNCE_TIME),
			DisplayOrder = if not FFlagSelfViewFixes then 100 elseif isMenuOpen then -1 else windowDisplayOrder,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			WindowFrame = React.createElement("Frame", {
				Size = React.joinBindings({ frameWidth, frameHeight }):map(function(sizes)
					repositionWindowWithinScreenBounds(true)
					return UDim2.fromOffset(sizes[1], sizes[2])
				end),
				LayoutOrder = 1,
				ref = windowRef,
				BorderSizePixel = 0,
				AnchorPoint = if props.integration.integration.windowAnchorPoint
					then props.integration.integration.windowAnchorPoint
					else Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
			}, {
				WindowWrapper = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				}, {
					Integration = props.integration.component(props) or nil,
					-- This prevents onActivated (taps/clicks) from propagating
					-- to the integration whenever the user is trying to drag.
					InputShield = React.createElement(Interactable, {
						ZIndex = COMPONENT_ZINDEX.INPUT_SHIELD,
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						Visible = dragging,
					}),
					InputWrapper = React.createElement("Frame", {
						ZIndex = COMPONENT_ZINDEX.INPUT_WRAPPER,
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						[React.Event.InputBegan] = touchBegan,
						[React.Event.InputEnded] = touchEnded,
						[React.Event.MouseEnter] = if GetFFlagSelfieViewMoreFixMigration()
							then mouseEntered
							else nil :: any,
						[React.Event.MouseLeave] = if GetFFlagSelfieViewMoreFixMigration()
							then mouseLeft
							else nil :: any,
						[React.Event.Destroying] = if GetFFlagSelfieViewMoreFixMigration()
							then mouseLeft
							else nil :: any,
					}),
				}),
			}),
		}),
	}, CoreGui)
end

return WindowHost
