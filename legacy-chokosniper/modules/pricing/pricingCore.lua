local Choko = ChokoSniper



function Choko:SetPriceSource(val)
	
	if val == "Normal" then
		Choko.PriceSource = "Normal"
		Choko.priceCheckNorm.frame:SetChecked(true)
		Choko.priceCheckAggr.frame:SetChecked(false)
		Choko.priceCheckCons.frame:SetChecked(false)
		Choko.priceCheckTSM.frame:SetChecked(false)
		
		
	elseif val == "Aggressive" then
		Choko.PriceSource = "Agressive"
		Choko.PriceSource = "Normal"
		Choko.priceCheckNorm.frame:SetChecked(false)
		Choko.priceCheckAggr.frame:SetChecked(true)
		Choko.priceCheckCons.frame:SetChecked(false)
		Choko.priceCheckTSM.frame:SetChecked(false)
		
	elseif val == "Conservative" then
		Choko.PriceSource = "Conservative"
		Choko.PriceSource = "Normal"
		Choko.priceCheckNorm.frame:SetChecked(false)
		Choko.priceCheckAggr.frame:SetChecked(false)
		Choko.priceCheckCons.frame:SetChecked(true)
		Choko.priceCheckTSM.frame:SetChecked(false)
		
		
	elseif val == "TSM" then
		Choko.PriceSource = "TSM"
		Choko.PriceSource = "Normal"
		Choko.priceCheckNorm.frame:SetChecked(false)
		Choko.priceCheckAggr.frame:SetChecked(false)
		Choko.priceCheckCons.frame:SetChecked(false)
		Choko.priceCheckTSM.frame:SetChecked(true)
		
		
	end
end