--Handle Scanning related events.

local Choko = ChokoSniper

Choko.SniperCount = 0
Choko.LastBuy = "H00000001"
Choko.ScanTimeNow = GetTime()
Choko.ScanTimeLast = GetTime()
Choko.TTS = 0




function Choko:AUCTION_ITEM_LIST_UPDATE()
	Choko.ScanTimeLast = Choko.ScanTimeNow
	Choko.ScanTimeNow = GetTime()
	Choko.TTS = math.floor((Choko.ScanTimeNow - Choko.ScanTimeLast) * 1000)
	
	Choko:DrawScanTime()
	
	
	
	
	-- Do nothing, because we are not currently sniping.
	if (Choko.sniperEnabled == false) then return end
	
	--Ensure the AH is facing the correct direction
	if IsAuctionSortReversed("list","duration") then
		SortAuctionItems("list", "duration")
	end
	
	local exists = false
	local approved = false
	

	--Cycle through each item returned from AH.
	for i=1, 50 do
		exists = false
		approved = false
		
		--PROCESS AUCTION INFO
		--STEP 1: Prepare all data from this aution.
		local aucName, aucTexture, aucStackSize, aucQuality, aucCanUse, aucMinLevel, aucColHeader, aucBidMin, aucBidInc, aucBuyout, aucBidCurrent, aucBidder, aucBidderFull, aucSeller, aucSellerFull, aucSaleStatus, aucItemID, aucHasAllInfo = GetAuctionItemInfo("list",i)
		local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, iconFileDataID, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, isCraftingReagent = GetItemInfo(aucItemID)
		local aucItemLink = GetAuctionItemLink("list", i)
		local aucPricePerItem = aucBuyout / aucStackSize
		
		--PRICING
		--TODO: Integrate custom pricing later
		local aucMarketPrice = TSMAPI_FOUR.CustomPrice.GetItemPrice(aucItemLink, "dbmarket") or TSMAPI_FOUR.CustomPrice.GetItemPrice(aucItemLink, "DBRegionMarketAvg") or 1
		local aucPercentage = ceil((aucPricePerItem / aucMarketPrice) * 100)
		--Let's limit Percentage to 3 digits
		if aucPercentage >= 1000 then aucPercentage = 999 end
		
		
		if (aucName == nil) or (itemName == nil) then break end
		
		--FILTER GOES HERE
		--STEP 2: Does this item meet filter requirements? TODO: Add Filtering
		
		--Temp Filter just to see results.
		if (aucPercentage <= 75) and (aucBuyout >= 1) and (TSMAPI_FOUR.CustomPrice.GetItemPrice(aucItemLink, "DBRegionMarketAvg") >=  1000 * 1000)then -- <--Temporary
			approved = true 
		end
		
		if approved == true then
			
			--STEP 3: Do we already have this item? check Hash.
			local plainString = aucName .. aucBuyout
			local hashString = Choko:StringHash(plainString)
			
			local c = #Choko.SniperItems
			for i=1,c,1 do
				if Choko.SniperItems[i].Hash == hashString then 
					exists = true 
				end
			end
			
			-- for k,v in pairs(Choko.SniperItems) do
				-- if v.Hash == hashString then 
					-- exists = true 
				-- end
			-- end
			
			
			
		
			if exists == false then
				--STEP 4: Create a new sniper item and add it to the list.
				local si = Choko.Scan:CreateSniperItem()
				si.Hash = hashString
				si.ItemID = aucItemID
				si.Buyout = aucBuyout
				si.BidCurrent = aucBidCurrent
				si.PricePerItem = aucPricePerItem
				si.MarketPrice = aucMarketPrice
				si.Percentage = aucPercentage
				si.ItemLink = aucItemLink
				si.StackSize = aucStackSize
				si.Quality = aucQuality
				si.Class = itemType
				si.SubClass = itemSubType
				si.BidStart = aucBidMin
				si.BidInc = aucBidInc
				si.Bidder = aucBidder
				si.MinLevel = aucMinLevel
				si.Seller = aucSeller
				si.VendorSell = itemSellPrice
				si.SaleStatus = aucSaleStatus
				si.BindType = bindType
				si.Expansion = expacID
				si.Texture = aucTexture
				
				si.UI = Choko.GUI:CreateSniperItemUI(si.Texture,si.ItemLink,si.StackSize,si.Buyout,si.PricePerItem,si.Percentage,si.Hash)
				
				--Choko.SniperItems[si.Hash] = si
				if si.Hash ~= Choko.LastBuy then
					tinsert(Choko.SniperItems,si)
				end
			else
				
			end
	
		else
		
		end
		
		
		
	end
	
	local c = 0
	
	for k,v in pairs(Choko.SniperItems) do
		c = c + 1
	end
	ChokoSniperCount = c
	Choko.GUI:DrawSniperItems()
	Choko.CycleCount = Choko.CycleCount + 1
	Choko.perfCycleTotal.text:SetText(Choko.CycleCount)
	--print(Choko.TTS)
end