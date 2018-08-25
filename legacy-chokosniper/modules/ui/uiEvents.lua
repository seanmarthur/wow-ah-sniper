--Address any basic UI events.

local Choko = ChokoSniper

--Auction house is closed.
function Choko:AUCTION_HOUSE_CLOSED(...)
	SortAuctionItems("list", "duration")
	Choko.frameMain.frame:Hide()
	Choko.sniperEnabled = false
	Choko.btnStartStop.frame.title:SetText("START SNIPER")
	CloseAuctionHouse()
	Choko:CLS()
	return
end

--Auction house is opened.
function Choko:AUCTION_HOUSE_SHOW(...)
	Choko.frameMain.frame:Show()
	Choko:CLS()
	SortAuctionItems("list", "duration")
end

--Start or stop sniper
Choko.btnStartStop.frame:SetScript("OnClick", function(self, ...)
	if Choko.sniperEnabled == true then
		Choko.sniperEnabled = false
		print("Sniper Terminated")
		Choko.btnStartStop.frame.title:SetText("START SNIPER")
		Choko.CycleCount = 0
	else
		Choko.sniperEnabled = true
		print("Sniper Engaged")
		Choko.btnStartStop.frame.title:SetText("STOP SNIPER")
	end
	return
	
end)


--Initate method to clear the screen.
Choko.btnClear.frame:SetScript("OnClick", function(self, ...)
	Choko:CLS()
end)


--Close the addon window.
Choko.btnClose.frame:SetScript("OnClick", function(self, ...)
	SortAuctionItems("list", "duration")
	Choko.frameMain.frame:Hide()
	Choko.sniperEnabled = false
	Choko.btnStartStop.frame.title:SetText("START SNIPER")
	CloseAuctionHouse()
	Choko:CLS()
	return
end)


--Initiate method to purchase auction at top of the list
Choko.btnBuyTop.frame:SetScript("OnClick", function(self, ...)
	local c = #Choko.SniperItems
	
	--if this is the first item in the list..lets buy it!
	if c >= 1 then
		Choko:BuyAuction(Choko.SniperItems[1].Hash)
	end
	return
end)





