--Assemble UI elements to create GUI.


local Choko = ChokoSniper
local mainWidth = 1000
local mainHeight = 700
local NEG_OFFSET = 5

--Main UI
Choko.frameMain = Choko.GUI:CreateMovableFrame(0.3, mainWidth, mainHeight, 0, 0, "frMain", UIParent)
Choko.frameSniperBase = Choko.GUI:CreateStaticFrame(0.2, 850, 345, 150, -20, "frMainTitle", Choko.frameMain.frame)
Choko.frameUndercutBase = Choko.GUI:CreateStaticFrame(0.2, 850, 340, 150, -360, "frMainTitle", Choko.frameMain.frame)
Choko.frameMenuBase = Choko.GUI:CreateStaticFrame(0.15, 150, (mainHeight - 20), 0, -20, "frMainTitle", Choko.frameMain.frame)
Choko.scrollUndercut = Choko.GUI:CreateStaticScrollFrame(840, 330, 5, -5, "Scroller", Choko.frameUndercutBase.frame)
Choko.scrollUndercutText = Choko.GUI:CreateStaticText(0.13,0.13,0.13, 40, 420, -165, Choko.scrollUndercut.content, "UNDERCUT WINDOW", "CENTER")


--Sniper Window
Choko.scrollSniper = Choko.GUI:CreateStaticScrollFrame(840, 335, 5, -5, "Scroller", Choko.frameSniperBase.frame)
Choko.scrollSniperText = Choko.GUI:CreateStaticText(0.13,0.13,0.13, 40, 420, -165, Choko.scrollSniper.frame, "SNIPER WINDOW", "CENTER")

--Sniper Window Header
Choko.scrollHeaderBar = Choko.GUI:CreateStaticFrame(0.4, 820, 20, 0, 0, "frHeader", Choko.scrollSniper.frame)
Choko.scrollHeaderBar.frame:SetFrameLevel(6000)
Choko.scrollHeaderBar.texDark:SetColorTexture(0.3,0.3,0.35,1)
Choko.scrollHeaderTextName = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 12, 5, -3, Choko.scrollHeaderBar.frame, "ITEM", "LEFT")
Choko.scrollHeaderTextStack = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 12, 325 - NEG_OFFSET, -3, Choko.scrollHeaderBar.frame, "| VOL", "LEFT")
Choko.scrollHeaderTextPPI = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 12, 380 - NEG_OFFSET, -3, Choko.scrollHeaderBar.frame, "| PER ITEM", "LEFT")
Choko.scrollHeaderTextTotal = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 12, 485 - NEG_OFFSET, -3, Choko.scrollHeaderBar.frame, "| TOTAL", "LEFT")
Choko.scrollHeaderTextPercentage = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 12, 720 - NEG_OFFSET, -3, Choko.scrollHeaderBar.frame, "| %", "LEFT")
Choko.scrollHeaderTextDailySold = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 12, 590 - NEG_OFFSET, -3, Choko.scrollHeaderBar.frame, "| #Daily", "LEFT")
Choko.scrollHeaderTextNumAuctions = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 12, 650 - NEG_OFFSET, -3, Choko.scrollHeaderBar.frame, "| o/", "LEFT")
 Choko.scrollHeaderDivG = Choko.GUI:CreateStaticFrame(0.73, 820, 1, 0, -19, "frHeader", Choko.scrollHeaderBar.frame)
 Choko.scrollHeaderDivH = Choko.GUI:CreateStaticFrame(0.13, 1, 336, 820, 0, "frHeader", Choko.scrollHeaderBar.frame)
-- Choko.scrollHeaderDivB = Choko.GUI:CreateStaticFrame(0.4, 1, 16, 320, -2, "frHeader", Choko.scrollHeaderBar.frame)
-- Choko.scrollHeaderDivC = Choko.GUI:CreateStaticFrame(0.4, 1, 16, 375, -2, "frHeader", Choko.scrollHeaderBar.frame)
-- Choko.scrollHeaderDivD = Choko.GUI:CreateStaticFrame(0.4, 1, 16, 515, -2, "frHeader", Choko.scrollHeaderBar.frame)
 --Choko.scrollHeaderDivE = Choko.GUI:CreateStaticFrame(0.4, 1, 16, 715, -2, "frHeader", Choko.scrollHeaderBar.frame)
 --Choko.scrollHeaderDivF = Choko.GUI:CreateStaticFrame(0.4, 1, 16, 763, -2, "frHeader", Choko.scrollHeaderBar.frame)

--Strata. I'm sure there is a better way to do this?
-- Choko.scrollHeaderDivB.frame:SetFrameLevel(6001)
-- Choko.scrollHeaderDivC.frame:SetFrameLevel(6001)
-- Choko.scrollHeaderDivD.frame:SetFrameLevel(6001)
-- Choko.scrollHeaderDivE.frame:SetFrameLevel(6001)
-- Choko.scrollHeaderDivF.frame:SetFrameLevel(6001)
 Choko.scrollHeaderDivG.frame:SetFrameLevel(6002)
 Choko.scrollHeaderDivH.frame:SetFrameLevel(6002)

--Menu Buttons
Choko.btnStartStop = Choko.GUI:CreateMenuButton(145,25, 5, -650, Choko.frameMenuBase.frame, 14, "START SNIPER")
Choko.btnClear = Choko.GUI:CreateMenuButton(145,25, 5, -315, Choko.frameMenuBase.frame, 14, "CLS")
Choko.btnBuyTop = Choko.GUI:CreateMenuButton(145,25, 5, -290, Choko.frameMenuBase.frame, 14, "BUY TOP")
Choko.btnPricing = Choko.GUI:CreateMenuButton(145,25, 5, -5, Choko.frameMenuBase.frame, 14, "PRICING")
Choko.btnFilters = Choko.GUI:CreateMenuButton(145,25, 5, -30, Choko.frameMenuBase.frame, 14, "FILTERS")
Choko.btnOptions = Choko.GUI:CreateMenuButton(145,25, 5, -55, Choko.frameMenuBase.frame, 14, "OPTIONS")

--Menu Button Colors
Choko.btnPricing.frame.title:SetTextColor(0.6,0.9,1)
Choko.btnFilters.frame.title:SetTextColor(0.6,0.9,1)
Choko.btnOptions.frame.title:SetTextColor(0.6,0.9,1)
Choko.btnClear.frame.title:SetTextColor(1,0.545,0.18)
Choko.btnBuyTop.frame.title:SetTextColor(1,0.27,0.18)
Choko.btnStartStop.frame.title:SetTextColor(0.7,1,0.58)

--Border and Title
Choko.frameBorder = Choko.GUI:CreateTextureFrame(Choko.frameMain.frame,1002, 700, 0, 0, 0, 1, 0, 0.699, "Interface\\AddOns\\ChokoSniper\\img\\ChokoSniperBorder")
Choko.frameBorder.frame:SetFrameLevel(9002)
Choko.frameMainTitleText = Choko.GUI:CreateStaticText(1,1,1, 18, 6, -3, Choko.frameMain.frame, "CHOKO SNIPER", "LEFT")
Choko.frameMainTitleText.frame:SetFrameLevel(9003)

--Close Button
Choko.btnClose = Choko.GUI:CreateMenuButton(20,20, 976, -2, Choko.frameBorder.frame, 14, "X")
Choko.btnClose.frame.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\CarbonFiberC")
Choko.btnClose.frame.graphics:SetTexCoord(0,0.2,0,0.2)
Choko.btnClose.frame.graphics:SetAllPoints(Choko.btnClose.frame)
Choko.btnClose.frame.Rollover = false



--Performance Data
Choko.perfBase = Choko.GUI:CreateStaticFrame(0.1, 150, 200, 5, -450, "perfBase", Choko.frameMenuBase.frame)
Choko.perfBase.frame:SetFrameLevel(8000)
Choko.perfBaseChart = Choko.GUI:CreateStaticFrame(0.0, 150, 100, 0, -100, "perfBase", Choko.perfBase.frame)
Choko.perfHeader = Choko.GUI:CreateStaticFrame(0.4, 150, 20, 0, 0, nil, Choko.perfBase.frame)
Choko.perfHeader.texDark:SetColorTexture(0.3,0.3,0.35,1)
Choko.perfHeadertitle = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 15, 75, -3, Choko.perfHeader.frame, "PERFORMANCE", "CENTER")
Choko.perfPreTTS = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 10, 75, -23, Choko.perfBase.frame,    "CYCLE TIME -", "RIGHT")
Choko.perfTTS = Choko.GUI:CreateStaticText(1,1,1, 10, 80, -23, Choko.perfBase.frame, "0", "LEFT")
Choko.perfPreTTSAVG = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 10, 75, -33, Choko.perfBase.frame, "CYCLE AVG -", "RIGHT")
Choko.perfTTSAVG = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 10, 80, -33, Choko.perfBase.frame, "0", "LEFT")
Choko.perfPreEconSize = Choko.GUI:CreateStaticText(0.73,0.73,1.73, 10, 75, -50, Choko.perfBase.frame, "ECON SIZE -", "RIGHT")
Choko.perfEconSize = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 10, 80, -50, Choko.perfBase.frame, "0", "LEFT")
Choko.perfPreCycleTotal = Choko.GUI:CreateStaticText(0.73,0.73,1.73, 10, 75, -60, Choko.perfBase.frame, "CYCLE COUNT -", "RIGHT")
Choko.perfCycleTotal = Choko.GUI:CreateStaticText(0.73,0.73,0.73, 10, 80, -60, Choko.perfBase.frame, "0", "LEFT")
Choko.perfCycleTimeAvg = Choko.GUI:CreateStaticFrame(0.3, 150, 1, 0, -50, nil, Choko.perfBaseChart.frame)
Choko.perfCycleTimeAvg.frame:SetFrameLevel(8060)


--Tooltip
Choko.tt = Choko.GUI:CreateStaticFrame(0.0, 445, 240, 0, -20, nil, Choko.scrollSniper.frame)
Choko.tt.frame:SetFrameLevel(9999999)
Choko.tt.frame:SetFrameStrata("TOOLTIP")
Choko.tt.Item = Choko.GUI:CreateStaticText(1,1,1, 15, 5, -3, Choko.tt.frame, "[SUPER DUPER DUPER DUPER LONG ITEM LINK of the Long]", "LEFT")
Choko.tt.SaleTimeText = Choko.GUI:CreateStaticText(0.7,0.5,0.5, 14, 200, -20, Choko.tt.frame, "ESTIMATED REPOSTS:", "RIGHT")
Choko.tt.SaleCostText = Choko.GUI:CreateStaticText(0.7,0.5,0.5, 14, 200, -35, Choko.tt.frame, "ESTIMATED COST TO SELL:", "RIGHT")
Choko.tt.RegionSaleAvgText = Choko.GUI:CreateStaticText(0.5,0.5,0.7, 14, 200, -65, Choko.tt.frame, "Regional Sale Average:", "RIGHT")
Choko.tt.RegionHistText = Choko.GUI:CreateStaticText(0.5,0.5,0.7, 14, 200, -80, Choko.tt.frame, "Regional Historical:", "RIGHT")
Choko.tt.RegionAvgText = Choko.GUI:CreateStaticText(0.5,0.5,0.7, 14, 200, -95, Choko.tt.frame, "Regional Average:", "RIGHT")
Choko.tt.LocalMinText = Choko.GUI:CreateStaticText(0.5,0.7,0.5, 14, 200, -125, Choko.tt.frame, "Local Minimum:", "RIGHT")
Choko.tt.LocalHistText = Choko.GUI:CreateStaticText(0.5,0.7,0.5, 14, 200, -140, Choko.tt.frame, "Local Historical:", "RIGHT")
Choko.tt.LocalAvgText = Choko.GUI:CreateStaticText(0.5,0.7,0.5, 14, 200, -155, Choko.tt.frame, "Local Average:", "RIGHT")

Choko.tt.SuggestedPurchaseText = Choko.GUI:CreateStaticText(0.9,0.8,0.1, 14, 200, -185, Choko.tt.frame, "Suggested Purchase Price:", "RIGHT")
Choko.tt.EstimatedProfitText = Choko.GUI:CreateStaticText(0.9,0.8,0.1, 14, 200, -200, Choko.tt.frame, "Estiamted Profit:", "RIGHT")

Choko.tt.SaleTimeVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -20, Choko.tt.frame, "???", "LEFT")
Choko.tt.SaleCostVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -35, Choko.tt.frame, "???", "LEFT")
Choko.tt.RegionSaleAvgVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -65, Choko.tt.frame, "???", "LEFT")
Choko.tt.RegionHistVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -80, Choko.tt.frame, "???", "LEFT")
Choko.tt.RegionAvgVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -95, Choko.tt.frame, "???", "LEFT")
Choko.tt.LocalMinVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -125, Choko.tt.frame, "???", "LEFT")
Choko.tt.LocalHistVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -140, Choko.tt.frame, "???", "LEFT")
Choko.tt.LocalAvgVal = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -155, Choko.tt.frame, "???", "LEFT")

Choko.tt.SuggestedPurchaseText = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -185, Choko.tt.frame, "???", "LEFT")
Choko.tt.EstimatedProfitText = Choko.GUI:CreateStaticText(1,1,1, 14, 210, -200, Choko.tt.frame, "???", "LEFT")



Choko.tt.frame:Hide()


local c = 5
for i=0,26,1 do
	local f = Choko.GUI:CreatePlotPoint(Choko.perfBaseChart.frame,5, 5, c, 0, 0, 1, 0, 1, "Interface\\AddOns\\ChokoSniper\\img\\DotOrange")
	f.x = c
	f.frame:SetFrameLevel(8061)
	f.frame:Hide()
	c = c + 5
	tinsert(Choko.GraphItems,f)
end

TestAddon = {}
MyFrames = {}

--Static frame class.
function TestAddon:CreateStaticFrameX(shade, x, y, xoff, yoff, name, parent)
	local self = {}
	self.frame = CreateFrame("Frame",name,parent)
	self.frame:SetPoint("TOPLEFT",xo,yo)
	self.frame:SetSize(x, y)
	self.texture = self.frame:CreateTexture("ARTWORK") 
	self.texture:SetColorTexture(shade,shade,shade,1)
	self.texture:SetAllPoints(self.frame)
	self.frame:SetFrameStrata("HIGH")
	self.frame:Show()
    return self
end

for i=20,200,10 do
	local f = TestAddon:CreateStaticFrameX(0.2, 15, 15, 0, 0, "TestFrame", UIParent)
	tinsert(MyFrames ,f)
end

--Initial State
Choko.frameMain.frame:Hide()
