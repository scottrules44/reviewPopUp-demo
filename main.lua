--Old verison (will work for android but not iOS)
--[[
local platformVersion = system.getInfo( "platformVersion" ) or 0
local iOSVersion = tonumber(string.sub( platformVersion, 1, 4 )) 
if( iOSVersion >= 10.3 and system.getInfo("platform") == "ios" ) then 
	local reviewPopUp = require "plugin.reviewPopUp"
	reviewPopUp.show()
else
	local textAlert = display.newText( "You need iOS 10.3 to test", display.contentCenterX, display.contentCenterY, native.systemFont, 20 )
end
]]--
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor(.5)
local title = display.newText("Review PopUp Plugin", display.contentCenterX, 50, native.systemFontBold, 15)
local reviewPopUp = require "plugin.reviewPopUp"

reviewPopUp.init(function(e)
	if e.status == "ready" then
		reviewPopUp.show()
	end
end)
