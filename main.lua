-- Title: PhysicsAndCollisions
-- Name: Dante Beltran
-- Course: ICS2O
-- This program...

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--load physics
local physics = require("physics")

--start physics
physics.start()
-----------------------------------------------------
--Objects
-----------------------------------------------------
--Ground
local ground = display.newImage("Images/ground.png", 0, 0)

  -- set he x and y possition
  ground.x = display.contentCenterX
  ground.y = display.contentHeight

  --Change the width to be the same as te screen
  ground.width = display.contentWidth

  -- Add to physics
  physics.addBody(ground, "static", {friction=0.5,bounce=0.3})

-------------------------------------------------------------------
--create a local beam
local beam = display.newImage("Images/beam.png", 0, 0)

   --set the x and y position
   beam.x = display.contentCenterX/5
   beam.y = display.contentCenterY*1.65

   --set the beam size
   beam.width = display.contentWidth/2
   beam.height = display.contentHeight/10

   --rotate the beam -60 degrees do its on an angle
   beam:rotate(45)

   -- send it to the back layer
   beam:toBack()

   --add to physics
   physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

-----------------------------------------------------------------------
--create a second local beam that will prevent the balls 
--from going out of screen
local beam2 = display.newImage("Images/beam.png", 0, 0)

  --set the x and y position
  beam2.x = display.contentWidth 
  beam2.y = 350

  --set the beam size
  beam2.width = 70
  beam2.height = display.contentHeight + 100

  --send it to bacl layer
  beam2:toBack()

  --add to physics
  physics.addBody(beam2, "static", {friction = 0.5, bounce = 0.3})

-----------------------------------------------------------------------

--create the object
local beam3 = display.newImage("Images/beam.png", 0, 0)

  --set the x and y position
  beam3.x = 900
  beam3.y = display.contentCenterY

  --set the beam size
  beam3.width = 70
  beam3.height = 300

  --rotate the beam -60 degrees do its on an angle
  beam3:rotate(60)

  -- send it to the back layer
  beam3:toBack()

  --add to physics
  physics.addBody(beam3, "static", {friction=0.5, bounce=0.3})

--create bkg
local bkg  = display.newImage("Images/bkg.png", 0, 0)

  --set the x and y position
  bkg.x = display.contentCenterX
  bkg.y = display.contentCenterY

  --set the bkg size
  bkg.width = display.contentWidth
  bkg.height = display.contentHeight

  --send to back
  bkg:toBack()

---------------------------------------------------------------------------------------------
--FUNCTIONS
---------------------------------------------------------------------------------------------

--create the fisrt ball
local function fisrtBall()
	--creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density = 1.0, friction = 0.5, bounce = 0.3, radius = 25})
end

-----------------------------------------------------------------------------------------------

local function secondBall()
	--creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	--adding to physics
	physics.addBody(ball2, {density = 1.0, friction = 0.5, bounce = 0.3, radius = 12.5})

	--make it smaller than the original size
	ball2:scale(0.5, 0.5)
end

-------------------------------------------------------------------------------------------------

local function thirdBall()
    --creating third ball
    local ball3 = display.newImage("Images/super_ball.png", 0, 0)

    --adding to physics
    physics.addBody(ball3, { density = 1.0, friction = 1, bounce = 0.5, radius = 37.5})

    --make the ball bigger than the original size
    ball3:scale(1.5, 1.5)
end

---------------------------------------------------------------------------------------------------

local function fourthBall()

	--create the object
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	--adding to physics
	physics.addBody(ball4, "dynamic", {density = 0.7, friction = 0, bounce = 1, radius = 75})

	--set the scale of the object
	ball4:scale(3, 3)
end

--------------------------------------------------------------------------------------------------

local function fifthBall()

  --create the object
  local ball5 = display.newImage("Images/super_ball.png", 900, 300)

  --adding to physics
  physics.addBody(ball5, "dynamic", {density = 0.5, friction = 0.2, bounce = 0.6, radius = 100})

  --set the scale of the object
  ball5:scale(4, 4)
end

----------------------------------------------------------------------------------------------------

local function sixthBall()

	--create the object
	local ball6 = display.newImage("Images/super_ball.png", 900, 300)

	--adding to physics
	physics.addBody(ball6,{ density = 1, friction = 0, bounce = 1.5, radius = 50})

	--set the scale of the object
	ball6:scale(2, 2)
end

---------------------------------------------------------------------------------------------------

local function seventhBall()
	
	--create the object
	local ball7 = display.newImage("Images/super_ball.png", 900, 300)

	--adding to physics
	physics.addBody(ball7, {density = 1, friction = 0.5, bounce = 0.5, radius = 50})

	--set the scale
	ball7:scale(2,2)
end
--------------------------------------------------------------------------------------------------
--TIMER DELAYS - call each function after the given milliseconds
--------------------------------------------------------------------------------------------------
timer.performWithDelay( 0, fisrtBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 1000, thirdBall)
timer.performWithDelay(2000, fourthBall)
timer.performWithDelay(5000, fifthBall)
timer.performWithDelay(6000, sixthBall)
timer.performWithDelay(7000, seventhBall)