local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromeService = require(Root.Service)

local useChromeWindowItems = require(Root.Hooks.useChromeWindowItems)
local WindowHost = require(Root.Unibar.ComponentHosts.WindowHost)

local GetFFlagChromeTrackWindowPosition = require(Root.Parent.Flags.GetFFlagChromeTrackWindowPosition)

type Array<T> = { [number]: T }
type Table = { [any]: any }

return function(props)
	-- Tree of window items to display
	local windowItems = useChromeWindowItems()

	local children: Table = {} -- Windows to be rendered

	for k, item in windowItems do
		children[("window_" .. item.integration.id)] = React.createElement(WindowHost, {
			position = if GetFFlagChromeTrackWindowPosition()
				then ChromeService:windowPosition(item.integration.id)
				else item.integration.startingWindowPosition,
			integration = item,
		})
	end

	return children
end
