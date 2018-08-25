local Choko = ChokoSniper



Choko.priceCheckNorm.frame:SetScript("OnClick", function(self, arg1)
		local c = Choko.priceCheckNorm.frame:GetChecked()
		
		if c == true then
			Choko:SetPriceSource("Normal")
		end
	end)
	
Choko.priceCheckAggr.frame:SetScript("OnClick", function(self, arg1)
		local c = Choko.priceCheckAggr.frame:GetChecked()
		
		if c == true then
			Choko:SetPriceSource("Aggressive")
		end
	end)
	
Choko.priceCheckCons.frame:SetScript("OnClick", function(self, arg1)
		local c = Choko.priceCheckCons.frame:GetChecked()
		
		if c == true then
			Choko:SetPriceSource("Conservative")
		end
	end)
	
Choko.priceCheckTSM.frame:SetScript("OnClick", function(self, arg1)
		local c = Choko.priceCheckTSM.frame:GetChecked()
		
		if c == true then
			Choko:SetPriceSource("TSM")
		end
	end)
	
	
Choko.btnPricing.frame:SetScript("OnClick", function(self, ...)
	if Choko.PricingMenuActive == true then
		Choko.pricingBase.frame:Hide()
		Choko.PricingMenuActive = false
		
		Choko.filterBase.frame:Hide()
		Choko.FilterMenuActive = false
		
	else
		Choko.pricingBase.frame:Show()
		Choko.PricingMenuActive = true
		
		Choko.filterBase.frame:Hide()
		Choko.FilterMenuActive = false
	end
	
	return
end)



