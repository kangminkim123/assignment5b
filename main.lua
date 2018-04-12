-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on: kangmin
-- created by: April 12
-----------------------------------------------------------------------------------------

local xText = display.newText( "x", 500, 200, systemFont, 85)
xText:setFillColor( 1, 0, 0)

local xTextField = native.newTextField(display.contentCenterX, display.contentCenterY - 550, 400, 150)
xTextField.id = "x TextField"

local yText = display.newText( "y", 500, 400, systemFont, 85)
yText:setFillColor( 1, 0, 0)

local yTextField = native.newTextField(display.contentCenterX, display.contentCenterY - 350, 400, 150)
yTextField.id = "y TextField"

local comspeak = display.newText( "what is x than y?", display.contentCenterX, display.contentCenterY + 250, 700, 150)

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 400, 157)
calculateButton.x = display.contentCenterX - 0
calculateButton.y = display.contentCenterY - 50
calculateButton.id = "calculate button"

local function calculateButtonFunction( event )
	-- body
	local x = 0
	local y = 0

	local x = tonumber(xTextField.text)
	local y = tonumber(yTextField.text)

	if x == y then
	      comspeak.text = "x same y."
	elseif x < y then
	      comspeak.text = "x is less than y."
    elseif x > y then
	      comspeak.text = "x is greater than y."
	end
end

calculateButton:addEventListener( "touch", calculateButtonFunction)