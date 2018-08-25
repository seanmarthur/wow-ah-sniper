ChokoSniper = LibStub("AceAddon-3.0"):NewAddon("ChokoSniper", "AceConsole-3.0", "AceEvent-3.0")
local Choko = ChokoSniper


Choko.GUI = {}
Choko.Scan = {}
Choko.FrameCache = {}
Choko.ButtonCache = {}
Choko.GraphItems = {}
Choko.sniperEnabled = false
Choko.CycleCount = 0

if Choko.Options then

else
	Choko.Options = {}
	print("Creating Options")
end


Choko.sniperCount = 0
Choko.sniperColor = true

function Choko:CommaVal(amount)
  local formatted = amount
  while true do  
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
      break
    end
  end
  return formatted
end


function Choko:DrawScanTime()
	local tts = Choko.TTS
	Choko.perfTTS.text:SetText(Choko.TTS .. " ms")
	
	
	if tts >= 1000 then Choko.perfTTS.text:SetTextColor(1,0,0) end
	if (tts >= 700) and (tts < 1000) then Choko.perfTTS.text:SetTextColor(0.87,0.4,0.2) end
	if (tts >= 500) and (tts < 700) then Choko.perfTTS.text:SetTextColor(0.9,0.8,0.1) end
	if (tts >= 400) and (tts < 500) then Choko.perfTTS.text:SetTextColor(0,1,0) end
	if (tts < 400) then Choko.perfTTS.text:SetTextColor(0.4,0.4,1) end
end

function Choko:StringHash(text)
  local counter = 1
  local len = string.len(text)
  for i = 1, len, 3 do 
    counter = math.fmod(counter*8161, 4294967279) +  -- 2^32 - 17: Prime!
  	  (string.byte(text,i)*16776193) +
  	  ((string.byte(text,i+1) or (len-i+256))*8372226) +
  	  ((string.byte(text,i+2) or (len-i+256))*3932164)
  end
  return tostring("H" .. math.fmod(counter, 4294967291)) -- 2^32 - 5: Prime (and different from the prime in the loop)
end

function Choko:BuyAuction(targetHash)
	if (Choko.PricingMenuActive == true) or (Choko.FilterMenuActive == true) then return end
	print("Buy Start")
	Choko.sniperEnabled = false
	local found = false
	for i=1, 50 do
		exists = false
		approved = false
		
	
		--STEP 1: Prepare all data from this aution.
		local aucName, aucTexture, aucStackSize, aucQuality, aucCanUse, aucMinLevel, aucColHeader, aucBidMin, aucBidInc, aucBuyout, aucBidCurrent, aucBidder, aucBidderFull, aucSeller, aucSellerFull, aucSalesStatus, aucItemID, aucHasAllInfo = GetAuctionItemInfo("list",i)
		local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, iconFileDataID, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, isCraftingReagent = GetItemInfo(aucItemID)
		local aucItemLink = GetAuctionItemLink("list", i)
		local aucPricePerItem = aucBuyout / aucStackSize

		if (aucName == nil) or (itemName == nil) then break end
		
		local plainString = aucName .. aucBuyout
		local hashString = Choko:StringHash(plainString)
		
		if (hashString == targetHash) then
			
			PlaceAuctionBid("list", i, aucBuyout)
			Choko.LastBuy = targetHash
			C_Timer.After(0.1, function() Choko.LasBuy = "H00000001" end)
			found = true
		end
	end
	
	local c = #Choko.SniperItems
	--print("Deleting")
	--print(targetHash)-- , (Choko.SniperItems[targetHash].Buyout or 9999))

		for i=0,c,1 do
			if ( (Choko.SniperItems[i] ~= nil) and (Choko.SniperItems[i].Hash == targetHash) ) then
				Choko.SniperItems[i].UI.Base:Hide()
				Choko.SniperItems[i].UI.icon.frame:Hide()
				Choko.SniperItems[i].UI.btnBuy:Hide()
				Choko.SniperItems[i].SaleStatus = 1
				Choko.SniperItems[i] = nil
				tremove(Choko.SniperItems,i)
				Choko.GUI:DrawSniperItems()
				--Choko:CLS()
				--C_Timer.After(0.3, function() print("Enabling A") Choko.sniperEnabled = true end)
				--Choko:CLS()
				Choko.sniperEnabled = true
				print("Deleted")
				return
			end
		end
	
	print("Enabling B")
	Choko.sniperEnabled = true
end

function Choko:OnInitialize()
    -- Called when the addon is loaded
	Choko:LoadUI()
end

function Choko:OnEnable()
    -- Called when the addon is enabled
	self:RegisterEvent("AUCTION_HOUSE_SHOW")
	self:RegisterEvent("AUCTION_HOUSE_CLOSED")
	self:RegisterEvent("AUCTION_ITEM_LIST_UPDATE")
end

function Choko:OnDisable()
    -- Called when the addon is disabled
end

function Choko:AcquireFrame(parent)
	local frame = tremove(Choko.FrameCache) or CreateFrame("Frame")
	frame:SetParent(parent)
	frame:Show()
	return frame
end

function Choko:AcquireButton(parent)
	local frame = tremove(Choko.ButtonCache) or CreateFrame("Button")
	frame:SetParent(parent)
	return frame
end

function Choko:ReleaseFrame(frame)
	frame:Hide()
	frame:SetParent(nil)
	frame:ClearAllPoints()
	tinsert(Choko.FrameCache, frame)
end

function Choko:ReleaseButton(frame)
	frame:Hide()
	frame:SetParent(nil)
	frame:ClearAllPoints()
	tinsert(Choko.ButtonCache, frame)
end



function Choko:CLS()
	--TODO: Frame Reuse needs to be thought out again an re-implemented. Current method is not desireable
	
	for k,v in pairs(Choko.SniperItems) do
		v.UI.Base:Hide()
		v.UI.icon.frame:Hide()
		v.UI.itemText:SetText("")
		v.UI.itemStack:SetText("")
		v.UI.itemTotal:SetText("")
		v.UI.itemPPI:SetText("")
		v.UI.pricePerc:SetText("")
		--Choko:ReleaseButton(v.UI.btnBuy)
		--Choko:ReleaseFrame(v.UI.icon.frame)
		--Choko:ReleaseFrame(v.UI.Base)
		
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
		self.ExpireTime = nil
		self.Texture = nil
	
		self.UI = {}
	end
	
	Choko.SniperItems = {}
end

function Choko:LoadUI()
	
	
	--******************************************************************************* Armor
	--*******************************************************************************
	if (Choko.Options.filArmorQualGry == true) then
		Choko.filArmorQualGry.frame:SetChecked(true)
	else
		Choko.filArmorQualGry.frame:SetChecked(false)
	end
	
	-- if (Choko.Options.filArmorQualCom == true) then
		-- Choko.filArmorQualCom.frame:SetChecked(true)
	-- else
		-- Choko.filArmorQualCom.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorQualUnc == true) then
		-- Choko.filArmorQualUnc.frame:SetChecked(true)
	-- else
		-- Choko.filArmorQualUnc.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorQualRar == true) then
		-- Choko.filArmorQualRar.frame:SetChecked(true)
	-- else
		-- Choko.filArmorQualRar.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorQualEpi == true) then
		-- Choko.filArmorQualEpi.frame:SetChecked(true)
	-- else
		-- Choko.filArmorQualGry.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorQualLeg == true) then
		-- Choko.filArmorQualLeg.frame:SetChecked(true)
	-- else
		-- Choko.filArmorQualLeg.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpVan == true) then
		-- Choko.filArmorExpVan.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpVan.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpBc == true) then
		-- Choko.filArmorExpBc.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpBc.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpWlk == true) then
		-- Choko.filArmorExpWlk.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpWlk.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpCat == true) then
		-- Choko.filArmorExpCat.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpCat.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpMop == true) then
		-- Choko.filArmorExpMop.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpMop.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpWod == true) then
		-- Choko.filArmorExpWod.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpWod.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpLeg == true) then
		-- Choko.filArmorExpLeg.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpLeg.frame:SetChecked(false)
	-- end
	
	-- if (Choko.Options.filArmorExpBfa == true) then
		-- Choko.filArmorExpBfa.frame:SetChecked(true)
	-- else
		-- Choko.filArmorExpBfa.frame:SetChecked(false)
	-- end
	
	-- Choko.filArmorValMin.frame:SetText(Choko.Options.filArmorValMin or 1)
	-- Choko.filArmorValMax.frame:SetText(Choko.Options.filArmorValMax or 1)
	-- Choko.filArmorIlvlMin.frame:SetText(Choko.Options.filArmorIlvlMin or 1)
	-- Choko.filArmorIlvlMax.frame:SetText(Choko.Options.filArmorIlvlMax or 1)
	-- Choko.filArmorPlayerMin.frame:SetText(Choko.Options.filArmorPlayerMin or 1)
	-- Choko.filArmorPlayerMax.frame:SetText(Choko.Options.filArmorPlayerMax or 1)
	-- Choko.filArmorComp.frame:SetText(Choko.Options.filArmorComp or 1)
	-- Choko.filArmorSold.frame:SetText(Choko.Options.filArmorSold or 1)
	
	
	
	
	
	
	
	
	
	
end











