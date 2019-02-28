-----------------------------------------------------------------------------------------
-- Title: DisplayShapes
-- Name: Ethan L
-- Course: ICS2O/3C
-- This program displays shapes 
-----------------------------------------------------------------------------------------
-- hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Create my local variables
local halfW = display.contentWidth * 0.5
local halfH = display.contentHeight * 0.5
local myPentagon
local pentagonVertices = { 128, 48, 204.8, 120, 153.6, 240, 102.4, 240, 51.2, 120, }

myPentagon = display.newPolygon( halfW, halfH, pentagonVertices )

myPentagon.anchorX = 256
myPentagon.anchorY = 0
myPentagon.x = 256
myPentagon.y = 20

-- The paint of the pentagon
local paintPentagon = { 1, 0, 0, }
myPentagon.fill = paintPentagon

local pentagonBorder = { 0, 0, 1, }

myPentagon.stroke = pentagonBorder
myPentagon.strokeWidth = 25

-- The text showing "Pentagon"
local pentagonText
local pentagonTextSize = 40
pentagonText = display.newText("Pentagon", 0, 0, Arial, pentagonTextSize)

pentagonText.anchorX = 0
pentagonText.anchorY = 0
pentagonText.x = 100
pentagonText.y = 300
---------------------------------------------------------------------------------------
-- create my local variables
local hexagonVertices = { 358.4, 48, 409.6, 48, 460.8, 144, 409.6, 240, 358.4, 240, 307.2, 144, }
local myHexagon

myHexagon = display.newPolygon( halfW, halfH, hexagonVertices )

myHexagon.anchorX = 512
myHexagon.anchorY = 0
myHexagon.x = 512
myHexagon.y = 20
-- The design of the hexagon
local hexagonPaint = {
	type = "composite",
	paint1 = { type="image", filename="waterCover.jpg" },
	paint2 = { type="image", filename="Large_bonfire.jpg" }
}

myHexagon.fill = hexagonPaint
myHexagon.fill.effect = "composite.average"

-- The text showing "Hexagon"
local hexagonText
local hexagonTextSize = 40
hexagonText = display.newText("Hexagon", 0, 0, Arial, hexagonTextSize)

hexagonText.anchorX = 0
hexagonText.anchorY = 0
hexagonText.x = 350
hexagonText.y = 300
---------------------------------------------------------------------------------------
-- create my local variables
local octogonVertices = { 614.4, 48, 665.6, 48, 716.8, 96, 716.8, 144, 665.6, 192, 614.4, 192, 563.2, 144, 563.2, 96, }
local myOctogon

myOctogon = display.newPolygon( halfW, halfH, octogonVertices )

myOctogon.anchorX = 768
myOctogon.anchorY = 0
myOctogon.x = 768
myOctogon.y = 20
-- the design of the octogon
local octogonPaint = {
	type = "gradient",
	color1 = { 1,0.5,0 },
	color2 = { 1,0.1,0, 0.3 },
	direction = "down"
}
myOctogon.fill = octogonPaint
-- the text showing "Octogon"
local octogonText
local octogonTextSize = 40
octogonText = display.newText("Octogon", 0, 0, Arial, octogonTextSize)

octogonText.anchorX = 0
octogonText.anchorY = 0
octogonText.x = 620
octogonText.y = 300
---------------------------------------------------------------------------------------
-- create my local variables

local triangleVertices = { 819.2, 48, 972.8, 48, 895.9, 192, }
local myTriangle

myTriangle = display.newPolygon( halfW, halfH, triangleVertices )

myTriangle.anchorX = 1024
myTriangle.anchorY = 0
myTriangle.x = 1024
myTriangle.y = 20

-- create my area/text variables
local baseOfTriangle = 20
local heightOfTriangle = 30
local areaOfTriangle
local textSize = 50

-- calculate the area of the triangle
areaOfTriangle = baseOfTriangle * heightOfTriangle /2

-- write the area on the screen.
areaText = display.newText("The area of this triangle with a base of \n" ..
	baseOfTriangle .. " and a height of " .. heightOfTriangle .. " is " ..
	areaOfTriangle .. " pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- create the image variable that is going inside the triangle
local trianglePaint = {
	type = "image",
	filename = "broke.png",
}

-- fill the triangle
myTriangle.fill = trianglePaint

local triangleText
local triangleTextSize = 40
triangleText = display.newText("Triangle", 0, 0, Arial, triangleTextSize)

triangleText.anchorX = 0
triangleText.anchorY = 0
triangleText.x = 850
triangleText.y = 300
--------------------------------------------------------------------------------------
