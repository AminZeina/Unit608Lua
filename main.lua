-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By: Amin Zeina
-- Created On: Apr 2018
--
-- Multiplication
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

local answerText
local answer = 0
local numberA
local numberB

local instructions = display.newText( 'Enter the two numbers to be multiplied:', display.contentCenterX, 200, native.systemFont, 110 )
instructions.id = "instructions"

local numberATextField = native.newTextField( 400, 425, 300, 128)
numberATextField.id = "Number A Text Field"
local numberBTextField = native.newTextField( 1100, 425, 300, 128)
numberBTextField.id = "Number B Text Field"
local xSymbol = display.newText( "X", 750, 425, native.systemFont, 128)
xSymbol.id = "X Symbol"
local equalsSymbol = display.newText( "=", 1400, 425, native.systemFont, 128)
equalsSymbol.id = "Equals Symbol"
local enterButton = display.newImageRect( './assets/sprites/clickButton.png', 625, 300 )
enterButton.x = display.contentCenterX
enterButton.y = 750
enterButton.id = "Enter Button"

local function onEnterClicked( event )
	-- Defining Variables
	numberA = numberATextField.text
	numberB = numberBTextField.text

	-- Loop for calculations
	for timesAdded=1, numberB do
		answer = answer + numberA
	end
	answerText = display.newText( answer, 1800, 425, native.systemFont, 128 )
	print( answer )
end

enterButton:addEventListener( 'touch', onEnterClicked)
