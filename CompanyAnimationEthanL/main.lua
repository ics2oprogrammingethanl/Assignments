-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- background
local bkg = display.newRect(512, 384, display.contentWidth*2, display.contentHeight*2)
bkg:scale(5, 5)

-- make sound
local lampPull = audio.loadSound("Sounds/lamppull.mp3")
local lampPullSoundChannel
local textSound = audio.loadSound("Sounds/sparkle.mp3")
local textSoundChannel

-- make images
local companyImageBeforeGlow = display.newImage("Images/CompanyLogo2EthanL.png", 512, 384)
local companyImageAfterGlow = display.newImage("Images/CompanyLogoEthanL.png", 512, 384)

-- make text
local companyText = display.newImage("Images/nightTimeText.png", 500, 500, 500)
companyText.isVisible = false

companyImageBeforeGlow:scale(0.5, 0.5)
companyImageAfterGlow:scale(0.5, 0.5)

companyImageBeforeGlow.isVisible = true
companyImageAfterGlow.isVisible = false
companyImageBeforeGlow.alpha = 0

local function turnLampOn()
	companyImageBeforeGlow.alpha = companyImageBeforeGlow.alpha + 0.01

	if (companyImageBeforeGlow.alpha == 1) then
		companyImageBeforeGlow.isVisible = false
		companyImageAfterGlow.isVisible = true
	end
end

local function lampSound()
	if (companyImageAfterGlow.alpha == 1) then
		lampPullSoundChannel = audio.play(lampPull)
	end
end

local function soundText()
	companyText.isVisible = true
	textSoundChannel = audio.play(textSound)
end
timer.performWithDelay(2800, lampSound)
Runtime:addEventListener("enterFrame", turnLampOn)
timer.performWithDelay(4000, soundText)
