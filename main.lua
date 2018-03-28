-----------------------------------------------------------------------------------------
-- Title: PhysicsAndCollisions
-- Name: Dante B
-- Course: ICS2O/3C
-- This program adds physics to balls ad makes them fall and roll around the screen
-----------------------------------------------------------------------------------------

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

-----------------------------------------------------------------------------------------
-- Objects
-----------------------------------------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)

-- Set the x and y pos
ground.x = display.contentCenterX
ground.y = display.contentHeight

-- change the width to be the same as the screen
ground.width = display.contentWidth

-- Add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

-----------------------------------------------------------------------------------------

-- Create a verticle beam
local beam = display.newImage("Images/beam.png", 0, 0)

-- set the x and y pos
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

-- set the beam size
beam.width = display.contentWidth/2
beam.height = display.contentHeight/10

-- rotate the beam -60 degees so its on an angle
beam:rotate(45)

-- send it to the back layer
beam:toBack()

-- add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

local bkg = display.newImage("Images/bkg.png", 0, 0)

-- set  the x and y pos
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

-- set the bkg size
bkg.width = display.contentWidth
bkg.height = display.contentHeight

-- send to back
bkg:toBack()

----------------------------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------------------------

-- create the first ball
local function firstBall()

	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding the physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

---------------------------------------------------------------------------------------

-- create the second ball
local function secondBall()

	-- creating first ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding the physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	-- make it smaller than the original size
	ball2:scale(0.5, 0.5)
end

--------------------------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
--------------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)