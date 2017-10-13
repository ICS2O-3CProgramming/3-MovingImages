-- Title: MovingImages
-- Name: Your Name
-- Course: ICS2O/3C
-- What does this program do?

-- FILL IN YOUR COMMENT HERE
display.setStatusBar(display.HiddenStatusBar)

-- global variable to control speed of moving object
scrollSpeedBeetleship = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- a second character image with width and height
--*** INSERT THE CODE TO ADD A SECOND CHARACTER IMAGE

-- set the image to be transparent
beetleship.alpha = 0

-- set the second image to be completely visible
--*** INSERT CODE TO MAKE THE SECOND IMAGE VISIBLE

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

-- Function: AddNameHere
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function makes the second object move in the opposite direction while fading out
-- ***INSERT CODE HERE FOR SECOND FUNCTION

-- MoveShip will be called at program start over and over (30 frames or times per second)
Runtime:addEventListener("enterFrame", MoveShip)

-- SecondFunctionName will be called at program start over and over
--*** INSERT CODE TO CALL SECOND FUNCTION HERE
