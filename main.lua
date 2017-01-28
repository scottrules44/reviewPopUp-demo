local platformVersion = system.getInfo( "platformVersion" ) or 0
local iOSVersion = tonumber(string.sub( platformVersion, 1, 4 )) 
if( majorVersion >= 10.3 and system.getInfo("platform") == "ios" ) then 
	local reviewPopUp = require "plugin.reviewPopUp"
	reviewPopUp.show()
else
	local textAlert = display.newText( "You need iOS 10.3 to test", display.contentCenterX, display.contentCenterY, native.systemFont, 20 )
end