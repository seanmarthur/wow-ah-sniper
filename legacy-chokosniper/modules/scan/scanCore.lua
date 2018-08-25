local Choko = ChokoSniper
Choko.SniperItems = nil


local scanTime = 0
local graphTime = 0
local itemCount = 0
Choko.SniperItems = {}




function getLastPage()
	local _, total = GetNumAuctionItems("list")
	return ceil(total / NUM_AUCTION_ITEMS_PER_PAGE) - 1
end


function ChokoSniperScan(self,elapsed)
	scanTime = scanTime + elapsed
	graphTime = graphTime + elapsed
	
	if scanTime >= 0.01 then --Main
		local canQuery, canQueryAll = CanSendAuctionQuery()
		
		if canQuery and Choko.sniperEnabled == true then
			local glp = getLastPage()
			Choko.perfEconSize.text:SetText(glp)
			--QueryAuctionItems(nil, nil, nil,getLastPage(),0)
			QueryAuctionItems(nil, nil, nil,glp,false)
		else
			
		end
		
		scanTime = 0
		
	end
	
	if graphTime >= 0.1 then --Update Graph
		if Choko.sniperEnabled == false then 
			Choko.TTS = 0 
			Choko.perfTTS.text:SetText("0 ms")
		end
		
		local avg = 0
		local c = #Choko.GraphItems
		for i=1,c,1 do
			local tts = Choko.TTS
			
			if tts >= 2300 then
				tts = 2300
			end
			
			Choko.GraphItems[i].x = Choko.GraphItems[i].x - 1
			local tx = Choko.GraphItems[i].x
			Choko.GraphItems[i].frame:SetPoint("BOTTOMLEFT",tx,Choko.GraphItems[i].y)
			
			
			if (tx <= 0) then
				local ny = 0
				if tts >= 1 then 
					ny = math.floor(tts / 25)
				else
					ny = 0 
				end
				
				if ny >= 2300 then ny = 2300 end
				--if Choko.sniperEnabled == true then
					Choko.GraphItems[i].frame:Show()
					
					Choko.GraphItems[i].x = 135
					Choko.GraphItems[i].y = ny
					Choko.GraphItems[i].frame:SetPoint("BOTTOMLEFT",135,ny)
					local point, relativeTo, relativePoint, xOfs, yOfs = Choko.GraphItems[i].frame:GetPoint()
					Choko.GraphItems[i].ms = yOfs
				
					if tts >= 1000 then Choko.GraphItems[i].frame.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\DotRed") end
					if (tts >= 700) and (tts < 1000) then Choko.GraphItems[i].frame.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\DotOrange") end
					if (tts >= 500) and (tts < 700) then Choko.GraphItems[i].frame.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\DotYellow") end
					if (tts >= 400) and (tts < 500) then Choko.GraphItems[i].frame.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\DotGreen") end
					if (tts < 400) then Choko.GraphItems[i].frame.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\DotBlue") end
				--end
				
			end
			avg = avg + Choko.GraphItems[i].ms
		end
		
		avg = math.floor(avg / 27)
		Choko.perfCycleTimeAvg.frame:SetPoint("TOPLEFT",0,avg - 100)
		Choko.perfTTSAVG.text:SetText(avg * 25 .. " ms")
		
		--print("Test")
		graphTime = 0
		
	end
end

function Choko.Scan:CreateSniperItem()
	local self = {}
	
	self.PricePerItem = nil
	self.MarketPrice = nil
	self.Percentage = nil
	self.ItemLink = nil
	self.Buyout = nil
	self.BidStart = nil
	self.BidInc = nil
	self.BidCurrent = nil
	self.Bidder = nil
	self.Name = nil
	self.StackSize = nil
	self.Quality = nil
	self.MinLevel = nil
	self.Seller = nil
	self.ItemID = nil
	self.Hash = nil
	self.SaleStatus = nil
	self.Class = nil
	self.SubClass = nil
	self.VendorSell = nil
	self.BindType = nil
	self.Expansion = nil
	self.ExpireTime = GetTime() + 30
	self.Texture = nil
	
	self.UI = nil

    return self
end

function Choko.GUI:CreateSniperItemUI(Texture,ItemLink,StackSize,BuyoutPrice,PricePerItem,Percentage, Hash)
	local self = {}
	
	

	self.Base = Choko:AcquireFrame(Choko.scrollSniper.content) --CreateFrame("Button","SniperItem",Choko.scrollSniper.content) 
	self.Base:SetPoint("TOPLEFT",0,0)
	self.Base:SetSize(820, 20)
	self.texDark = self.Base:CreateTexture("BACKGROUND") 
	self.texDark:SetColorTexture(0.2,0.2,0.2,1)
	self.texDark:SetAllPoints(self.Base)
	
	self.icon = Choko.GUI:CreateTextureFrame(self.Base, 18, 18, 0, -1, 0, 1, 0, 1, Texture)
	
	self.itemText = self.Base:CreateFontString(nil,"ARTWORK")
	self.itemText:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 12)
	self.itemText:SetText(ItemLink)
	self.itemText:SetPoint("LEFT",25,0)
	
	self.itemStack = self.Base:CreateFontString(nil,"ARTWORK")
	self.itemStack:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 12)
	self.itemStack:SetText("x" .. StackSize)
	self.itemStack:SetPoint("LEFT",325,0)
	
	self.itemPPI = self.Base:CreateFontString(nil,"ARTWORK")
	self.itemPPI:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 10)
	self.itemPPI:SetText(TSMAPI_FOUR.Money.ToString(PricePerItem))
	self.itemPPI:SetPoint("LEFT",380,0)
	
	self.itemTotal = self.Base:CreateFontString(nil,"ARTWORK")
	self.itemTotal:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 10)
	self.itemTotal:SetText(TSMAPI_FOUR.Money.ToString(BuyoutPrice))
	--self.itemTotal:SetText(TSMAPI_FOUR.Money.ToString(MarketPrice))
	self.itemTotal:SetPoint("LEFT",485,0)
	
	self.itemDailySold = self.Base:CreateFontString(nil,"ARTWORK")
	self.itemDailySold:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 10)
	self.itemDailySold:SetText(Choko:CommaVal((TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBRegionSoldPerDay") or 0) * 100 or "?"))
	--self.itemDailySold:SetText(TSMAPI_FOUR.Money.ToString(MarketPrice))
	self.itemDailySold:SetPoint("LEFT",590,0)
	
	self.itemNumAuc= self.Base:CreateFontString(nil,"ARTWORK")
	self.itemNumAuc:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 10)
	if TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DailySold") then
		self.itemNumAuc:SetText(TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DailySold") or 0)
	else
		self.itemNumAuc:SetText("- - -")
	end
	
	--self.itemNumAuc:SetText(TSMAPI_FOUR.Money.ToString(MarketPrice))
	self.itemNumAuc:SetPoint("LEFT",650,0)
	
	self.pricePerc = self.Base:CreateFontString(nil,"ARTWORK")
	self.pricePerc:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 15)
	self.pricePerc:SetText(Percentage .. "%")
	self.pricePerc:SetPoint("LEFT",720,0)
	
	if Percentage <= 40 then
		self.pricePerc:SetTextColor(0.2,0.6,1)
	elseif Percentage > 40 and Percentage <= 70 then
		self.pricePerc:SetTextColor(0,1,0)
	elseif Percentage > 70 and Percentage <= 99 then
		self.pricePerc:SetTextColor(0.8,0.8,0)
	else
		self.pricePerc:SetTextColor(1,0,0)
	end
	
	
	
	self.btnBuy = Choko:AcquireButton(self.Base) --CreateFrame("Button","SniperItemBuyButton",self.Base)
	self.btnBuy.Hash = Hash
	self.btnBuy:SetPoint("TOPLEFT",768,-2)
	self.btnBuy:SetSize(50, 16) 
	self.btnBuy:SetFrameStrata("HIGH")
	self.btnBuy:SetFrameLevel(999999)
	self.btnBuy.graphics = self.btnBuy:CreateTexture("BACKGROUND") 
	self.btnBuy.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\CarbonFiber")
	self.btnBuy.graphics:SetTexCoord(0,1,0,0.2)
	self.btnBuy.graphics:SetAllPoints(self.btnBuy)
	self.btnBuy.title = self.btnBuy:CreateFontString(nil,"ARTWORK")
	self.btnBuy.title:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 10)
	self.btnBuy.title:SetTextColor(1,1,1)
	self.btnBuy.title:SetText("Buyout")
	self.btnBuy.title:SetPoint("CENTER")
	self.btnBuy:SetScript("OnEnter", function(self, arg1)
		self.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\CarbonFiberB")
		self.graphics:SetTexCoord(0,1,0,0.2)
		self.graphics:SetAllPoints(self)
	end)
	self.btnBuy:SetScript("OnLeave", function(self, arg1)
		self.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\CarbonFiber")
		self.graphics:SetTexCoord(0,1,0,0.2)
		self.graphics:SetAllPoints(self)
	end)
	self.btnBuy:SetScript("OnClick", function(self, arg1)
		Choko:BuyAuction(self.Hash)
	end)
	
	
	self.Base:SetScript("OnEnter", function(self, arg1)
		Choko.tt.frame:Show()
		Choko.tt.frame:SetParent(self)
		Choko.tt.frame:SetPoint("TOPLEFT",320,-20)
		Choko.tt.Item.text:SetText(ItemLink)
		
		local salerate = math.ceil((1 / (TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBRegionSaleRate") or 0.0001)) or 0)
		
		local regsaleavg = TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBRegionSaleAvg") or 0
		local reghist = TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBRegionHistorical") or 0
		local regavg = TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBRegionMarketAvg") or 0
		local lochis = TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBHistorical") or 0
		local locmin = TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBMinBuyout") or 0
		local locavg = TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBMarket") or 0
		
		local salecost = (TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "VendorSell") or 0) * salerate
		salecost = salecost + (regavg * 0.05)
		
		
		Choko.tt.SaleTimeVal.text:SetText(salerate .. "  (" .. (TSMAPI_FOUR.CustomPrice.GetItemPrice(ItemLink, "DBRegionSaleRate") or "???") .. ")")
		Choko.tt.SaleCostVal.text:SetText(TSMAPI_FOUR.Money.ToString(salecost))
		Choko.tt.RegionSaleAvgVal.text:SetText(TSMAPI_FOUR.Money.ToString(regsaleavg))
		Choko.tt.RegionHistVal.text:SetText(TSMAPI_FOUR.Money.ToString(reghist))
		Choko.tt.RegionAvgVal.text:SetText(TSMAPI_FOUR.Money.ToString(regavg))
		Choko.tt.LocalMinVal.text:SetText(TSMAPI_FOUR.Money.ToString(locmin))
		Choko.tt.LocalHistVal.text:SetText(TSMAPI_FOUR.Money.ToString(lochis))
		Choko.tt.LocalAvgVal.text:SetText(TSMAPI_FOUR.Money.ToString(locavg))
	end)
	
	self.Base:SetScript("OnLeave", function(self, arg1)
		Choko.tt.frame:Hide()
	end)
	
	
	

    return self
end

function Choko.GUI:DrawSniperItems()
	--print(#Choko.SniperItems)
	local even = false
	local offset = 0
	local order = 1

	--Step 1: Reorder all Frames
	if (#Choko.SniperItems ~= itemCount) then
		itemCount = #Choko.SniperItems
		table.sort(Choko.SniperItems, function(a,b) 
				if (a and b) then
					return a.Percentage < b.Percentage 
				end
			end)
	end
	
	local c = #Choko.SniperItems
	for i=1,c,1 do
		if Choko.SniperItems[i].SaleStatus == 0 then
			if even == true then
				Choko.SniperItems[i].UI.texDark:SetColorTexture(0.2,0.2,0.2,1)
				even = false
			else
				Choko.SniperItems[i].UI.texDark:SetColorTexture(0.3,0.3,0.3,1)
				even = true
			end
			Choko.SniperItems[i].UI.Base:SetPoint("TOPLEFT",0,order * -20)
			order = order + 1
		end
	end
	
	-- for k,v in pairs(Choko.SniperItems) do
		-- if v.SaleStatus == 0 then
			-- if even == true then
				-- Choko.SniperItems[k].UI.texDark:SetColorTexture(0.2,0.2,0.2,1)
				-- even = false
			-- else
				-- Choko.SniperItems[k].UI.texDark:SetColorTexture(0.3,0.3,0.3,1)
				-- even = true
			-- end
			-- Choko.SniperItems[k].UI.Base:SetPoint("TOPLEFT",0,order * -20)
			-- order = order + 1
		-- end
	-- end
	
	
	--Remove Sniper Window Text when enough content is present.
	if (#Choko.SniperItems >= 7) then
		Choko.scrollSniperText.text:SetText("")
	else
		Choko.scrollSniperText.text:SetText("SNIPER WINDOW")
	end

end










