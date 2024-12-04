local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local ContextItem = (Framework.ContextServices :: any).ContextItem

return ContextItem:createSimple("Inspector")
