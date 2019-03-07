-----------------------------------------------------------------------------------------
-- Title: AnimatedImages
-- Name: Ethan. L
-- Course: ICS2O/3C
-- This program displays images that animate and move.
-----------------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)


local mushroomBackground = display.newImageRect ( "mushroom.jpg", 1920, 1175 )

mushroomBackground:translate( 512, 384 )
------------------------------------------------------------------------------------------
local physics = require( "physics" )

local reginald = display.newImageRect ( "reginald.png", 350, 197 )

reginald.anchorX = 50
reginald.anchorY = 0
reginald.x = 150
reginald.y = 50

reginald:translate( 300, 500 )
reginald.rotation = 5

display.contentWidth = display.contentWidth * 2
display.contentHeight = display.contentHeight * 2

physics.start(true)
local reginald_outline = graphics.newOutline( 2, "reginald.png" )
physics.addBody( reginald, { outline=reginald_outline } )

physics.addBody( reginald, { density=1.0, friction=1, bounce=1 } )

--Create global screen boundaries
local leftWall = display.newRect(0, 0, 3, 1536)
local rightWall = display.newRect (1024, 0, 3, 1536)
local topWall = display.newRect (0, 0, 2048, 3)
local bottomWall = display.newRect (0, 768, 2048, 3)

physics.addBody(leftWall, "static", { bounce = 1} )
physics.addBody(rightWall, "static", { bounce = 1} )
physics.addBody(topWall, "static", { bounce = 1} )
physics.addBody(bottomWall, "static", { bounce = 1} )

if reginald.x > display.contentWidth then  reginald.x = display.contentWidth 
elseif reginald.x < 0 then reginald.x = 0
end
-- similar thing should be done for Y axis.

scrollSpeed1 = 1

local function MoveReginald(event)

	reginald.y = reginald.x + scrollSpeed1
	reginald.x = reginald.y + scrollSpeed1

	reginald:rotate( 1 )

	reginald:scale(1, 1)

end

Runtime:addEventListener("enterFrame", MoveReginald)
--------------------------------------------------------------------------------------------
local myImage3 = display.newImageRect ( "steve.gif", 400, 400 )

scrollspeed2 = 1

myImage3:translate( 100, 600 )

local function MoveSteve(event)

	myImage3.y = myImage3.x + scrollSpeed1
	myImage3.x = myImage3.y + scrollSpeed1

	myImage3:rotate( 3 )

	myImage3:scale(1, 1)
end

local myImage4 = display.newImageRect ( "arcticpeeper.png", 250, 150 )

myImage4:translate( 500, 600 )
--------------------------------------------