local root = script:FindFirstAncestor("AbuseReportMenu")
local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local GetFFlagAbuseReportTabHideShowRetimingEnabled = require(root.Flags.GetFFlagAbuseReportTabHideShowRetimingEnabled)
local WAIT_FRAMES = 10
local MIN_WAIT_TIME = (WAIT_FRAMES / 60) -- Covers the case of the user having their maximum framerate set higher than 60

local useHideForScreenshot = function(
	shouldcapturescreenshot,
	isReportTabVisible,
	hideReportTab,
	showReportTab,
	onScreenshotHide,
	onUserInitiatedHide
)
	local isHidingForScreenshot, setIsHidingForScreenshot = React.useState(false)
	React.useEffect(function()
		if isReportTabVisible then
			if isHidingForScreenshot then
				setIsHidingForScreenshot(false)
			elseif shouldcapturescreenshot then
				setIsHidingForScreenshot(true)
				hideReportTab()

				local avatarIDConnection: RBXScriptConnection
				local screenshotWaitCount = 0
				local waitCount = 0
				local waitConnection: RBXScriptConnection

				local waitStart
				if GetFFlagAbuseReportTabHideShowRetimingEnabled() then
					waitStart = os.clock()
				end

				avatarIDConnection = RunService.Heartbeat:Connect(function()
					-- wait for 1 frame after hiding so the remaining menu UI goes away
					if screenshotWaitCount == 1 then
						onScreenshotHide()
						avatarIDConnection:Disconnect()
						return
					end

					screenshotWaitCount += 1
				end)

				waitConnection = RunService.Heartbeat:Connect(function()
					if GetFFlagAbuseReportTabHideShowRetimingEnabled() then
						if ((os.clock() - waitStart) >= MIN_WAIT_TIME) and waitCount >= 10 then
							waitConnection:Disconnect()
							showReportTab()
							return
						end
					else
						-- waiting for fewer frames than this
						-- to re-show can cause the menu to get stuck
						if waitCount == WAIT_FRAMES then
							showReportTab()
							waitConnection:Disconnect()
							return
						end
					end

					waitCount += 1
				end)
			end
		else
			if not isHidingForScreenshot then
				onUserInitiatedHide()
			end
		end
		-- only run when isReportTabVisible changes
	end, { isReportTabVisible })
end

return useHideForScreenshot
