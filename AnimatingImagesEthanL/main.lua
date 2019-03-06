-----------------------------------------------------------------------------------------
-- Title: AnimatedImages
-- Name: Ethan. L
-- Course: ICS2O/3C
-- This program displays images that animate and move.
-----------------------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create the background image
local mushroomBackground = display.newImageRect ( "mushroom.jpg", 1920, 1175 )

mushroomBackground:translate( 512, 384 )
------------------------------------------------------------------------------------------
-- create my local variables and get the physics
local physics = require( "physics" )

local reginald = display.newImageRect ( "reginald.png", 350, 197 )
-- reginald coordinates/anchor
reginald.anchorX = 0
reginald.anchorY = 0
reginald.x = 0
reginald.y = 0

-- start the physics (all of it)
physics.start(true)

local reginald_outline = graphics.newOutline( 1, "reginald.png" )
physics.addBody( reginald, { outline=reginald_outline } )

physics.addBody( reginald, { density=1, friction=1, bounce=1} )

--Create global screen boundaries
local leftWall = display.newRect(0, 768, 5, 1536)
local rightWall = display.newRect (1024, 0, 5, 1536)
local topWall = display.newRect (0, 0, 2048, 5)
local bottomWall = display.newRect (1024, 768, 2048, 5)
-- add the physics properties to the borders
physics.addBody(leftWall, "static", { bounce = 1} )
physics.addBody(rightWall, "static", { bounce = 1} )
physics.addBody(topWall, "static", { bounce = 1} )
physics.addBody(bottomWall, "static", { bounce = 1} )

-- make sure the fish doesn't go out the screen
if reginald.x > display.contentWidth then  reginald.x = display.contentWidth 
elseif reginald.x < 0 then reginald.x = 0
end
if reginald.y > display.contentWidth then  reginald.y = display.contentWidth 
elseif reginald.y < 0 then reginald.y = 0
end
-- the speed of the fish
scrollSpeed1 = 1
-- the way the fish moves in a parabolic path
local function MoveReginald(event)

	reginald.y = reginald.x + scrollSpeed1
	reginald.x = reginald.y + scrollSpeed1

	reginald:scale(1, 1)

	reginald:rotate( 1 )
end
-- add the event listener
Runtime:addEventListener("enterFrame", MoveReginald)
--------------------------------------------------------------------------------------------
-- create the Steve character
local steve = display.newImageRect ( "steve.gif", 400, 400 )

-- the speed of Steve
scrollspeed2 = 1

steve:translate( 500, 100 )
-- What moves the steve
local function MoveSteve(event)

	steve:rotate( 3 )

	steve:scale(1.1 ^ -0.01, 1.1 ^ -0.01)

end
-- Add the event listener
Runtime:addEventListener("enterFrame", MoveSteve)
-------------------------------------------------------------------------------
-- create the arctic fish
local arcticFish = display.newImageRect ( "arcticpeeper.png", 250, 150 )
-- Set the transparnency of the fish
arcticFish.alpha = 1
-- Set the spawn point of the fish
arcticFish:translate( 500, 600 )
-- What makes the fish dissapear
local function dissapearArcticFish(event)
	arcticFish.alpha = arcticFish.alpha - 0.00000001
	arcticFish:scale(1.1^0.05, 1.1^0.05)
end
-- Add event listener
Runtime:addEventListener("enterFrame", dissapearArcticFish)
-------------------------------------------------------------------------