local Choko = ChokoSniper


Choko.btnFilters.frame:SetScript("OnClick", function(self, ...)
	if Choko.FilterMenuActive == true then
		Choko.filterBase.frame:Hide()
		Choko.FilterMenuActive = false
		
		Choko.pricingBase.frame:Hide()
		Choko.PricingMenuActive = false
	else
		Choko.filterBase.frame:Show()
		Choko.FilterMenuActive = true
		
		Choko.pricingBase.frame:Hide()
		Choko.PricingMenuActive = false
	end
	
	return
end)



--******************************************************************************* Armor
--*******************************************************************************
Choko.filArmorQualGry.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorQualGry = Choko.filArmorQualGry.frame:GetChecked()
	return
end)
Choko.filArmorQualCom.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorQualCom = Choko.filArmorQualCom.frame:GetChecked()
	return
end)
Choko.filArmorQualUnc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorQualUnc = Choko.filArmorQualUnc.frame:GetChecked()
	return
end)
Choko.filArmorQualRar.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorQualRar = Choko.filArmorQualRar.frame:GetChecked()
	return
end)
Choko.filArmorQualEpi.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorQualEpi = Choko.filArmorQualEpi.frame:GetChecked()
	return
end)
Choko.filArmorQualLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorQualLeg = Choko.filArmorQualLeg.frame:GetChecked()
	return
end)
Choko.filArmorExpVan.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpVan = Choko.filArmorExpVan.frame:GetChecked()
	return
end)
Choko.filArmorExpBc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpBc = Choko.filArmorExpBc.frame:GetChecked()
	return
end)
Choko.filArmorExpWlk.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpWlk = Choko.filArmorExpWlk.frame:GetChecked()
	return
end)
Choko.filArmorExpCat.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpCat = Choko.filArmorExpCat.frame:GetChecked()
	return
end)
Choko.filArmorExpMop.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpMop = Choko.filArmorExpMop.frame:GetChecked()
	return
end)
Choko.filArmorExpWod.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpWod = Choko.filArmorExpWod.frame:GetChecked()
	return
end)
Choko.filArmorExpLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpLeg = Choko.filArmorExpLeg.frame:GetChecked()
	return
end)
Choko.filArmorExpBfa.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filArmorExpBfa = Choko.filArmorExpBfa.frame:GetChecked()
	return
end)
Choko.filArmorValMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorValMin = Choko.filArmorValMin.frame:GetText()
	return
end)
Choko.filArmorValMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorValMax = Choko.filArmorValMax.frame:GetText()
	return
end)
Choko.filArmorIlvlMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorIlvlMin = Choko.filArmorIlvlMin.frame:GetText()
	return
end)
Choko.filArmorIlvlMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorIlvlMax = Choko.filArmorIlvlMax.frame:GetText()
	return
end)
Choko.filArmorPlayerMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorPlayerMin = Choko.filArmorPlayerMin.frame:GetText()
	return
end)
Choko.filArmorPlayerMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorPlayerMax = Choko.filArmorPlayerMax.frame:GetText()
	return
end)
Choko.filArmorComp.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorComp = Choko.filArmorComp.frame:GetText()
	return
end)
Choko.filArmorSold.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filArmorSold = Choko.filArmorSold.frame:GetText()
	return
end)







--******************************************************************************* Trade
--*******************************************************************************
Choko.filTradeQualGry.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeQualGry = Choko.filTradeQualGry.frame:GetChecked()
	return
end)
Choko.filTradeQualCom.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeQualCom = Choko.filTradeQualCom.frame:GetChecked()
	return
end)
Choko.filTradeQualUnc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeQualUnc = Choko.filTradeQualUnc.frame:GetChecked()
	return
end)
Choko.filTradeQualRar.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeQualRar = Choko.filTradeQualRar.frame:GetChecked()
	return
end)
Choko.filTradeQualEpi.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeQualEpi = Choko.filTradeQualEpi.frame:GetChecked()
	return
end)
Choko.filTradeQualLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeQualLeg = Choko.filTradeQualLeg.frame:GetChecked()
	return
end)
Choko.filTradeExpVan.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpVan = Choko.filTradeExpVan.frame:GetChecked()
	return
end)
Choko.filTradeExpBc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpBc = Choko.filTradeExpBc.frame:GetChecked()
	return
end)
Choko.filTradeExpWlk.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpWlk = Choko.filTradeExpWlk.frame:GetChecked()
	return
end)
Choko.filTradeExpCat.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpCat = Choko.filTradeExpCat.frame:GetChecked()
	return
end)
Choko.filTradeExpMop.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpMop = Choko.filTradeExpMop.frame:GetChecked()
	return
end)
Choko.filTradeExpWod.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpWod = Choko.filTradeExpWod.frame:GetChecked()
	return
end)
Choko.filTradeExpLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpLeg = Choko.filTradeExpLeg.frame:GetChecked()
	return
end)
Choko.filTradeExpBfa.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filTradeExpBfa = Choko.filTradeExpBfa.frame:GetChecked()
	return
end)
Choko.filTradeValMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradeValMin = Choko.filTradeValMin.frame:GetText()
	return
end)
Choko.filTradeValMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradeValMax = Choko.filTradeValMax.frame:GetText()
	return
end)
Choko.filTradeIlvlMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradeIlvlMin = Choko.filTradeIlvlMin.frame:GetText()
	return
end)
Choko.filTradeIlvlMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradeIlvlMax = Choko.filTradeIlvlMax.frame:GetText()
	return
end)
Choko.filTradePlayerMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradePlayerMin = Choko.filTradePlayerMin.frame:GetText()
	return
end)
Choko.filTradePlayerMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradePlayerMax = Choko.filTradePlayerMax.frame:GetText()
	return
end)
Choko.filTradeComp.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradeComp = Choko.filTradeComp.frame:GetText()
	return
end)
Choko.filTradeSold.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filTradeSold = Choko.filTradeSold.frame:GetText()
	return
end)






--******************************************************************************* Recipe
--*******************************************************************************
Choko.filRecipeQualGry.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeQualGry = Choko.filRecipeQualGry.frame:GetChecked()
	return
end)
Choko.filRecipeQualCom.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeQualCom = Choko.filRecipeQualCom.frame:GetChecked()
	return
end)
Choko.filRecipeQualUnc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeQualUnc = Choko.filRecipeQualUnc.frame:GetChecked()
	return
end)
Choko.filRecipeQualRar.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeQualRar = Choko.filRecipeQualRar.frame:GetChecked()
	return
end)
Choko.filRecipeQualEpi.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeQualEpi = Choko.filRecipeQualEpi.frame:GetChecked()
	return
end)
Choko.filRecipeQualLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeQualLeg = Choko.filRecipeQualLeg.frame:GetChecked()
	return
end)
Choko.filRecipeExpVan.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpVan = Choko.filRecipeExpVan.frame:GetChecked()
	return
end)
Choko.filRecipeExpBc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpBc = Choko.filRecipeExpBc.frame:GetChecked()
	return
end)
Choko.filRecipeExpWlk.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpWlk = Choko.filRecipeExpWlk.frame:GetChecked()
	return
end)
Choko.filRecipeExpCat.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpCat = Choko.filRecipeExpCat.frame:GetChecked()
	return
end)
Choko.filRecipeExpMop.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpMop = Choko.filRecipeExpMop.frame:GetChecked()
	return
end)
Choko.filRecipeExpWod.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpWod = Choko.filRecipeExpWod.frame:GetChecked()
	return
end)
Choko.filRecipeExpLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpLeg = Choko.filRecipeExpLeg.frame:GetChecked()
	return
end)
Choko.filRecipeExpBfa.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filRecipeExpBfa = Choko.filRecipeExpBfa.frame:GetChecked()
	return
end)
Choko.filRecipeValMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipeValMin = Choko.filRecipeValMin.frame:GetText()
	return
end)
Choko.filRecipeValMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipeValMax = Choko.filRecipeValMax.frame:GetText()
	return
end)
Choko.filRecipeIlvlMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipeIlvlMin = Choko.filRecipeIlvlMin.frame:GetText()
	return
end)
Choko.filRecipeIlvlMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipeIlvlMax = Choko.filRecipeIlvlMax.frame:GetText()
	return
end)
Choko.filRecipePlayerMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipePlayerMin = Choko.filRecipePlayerMin.frame:GetText()
	return
end)
Choko.filRecipePlayerMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipePlayerMax = Choko.filRecipePlayerMax.frame:GetText()
	return
end)
Choko.filRecipeComp.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipeComp = Choko.filRecipeComp.frame:GetText()
	return
end)
Choko.filRecipeSold.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filRecipeSold = Choko.filRecipeSold.frame:GetText()
	return
end)







--******************************************************************************* Bpet
--*******************************************************************************
Choko.filBpetQualGry.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetQualGry = Choko.filBpetQualGry.frame:GetChecked()
	return
end)
Choko.filBpetQualCom.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetQualCom = Choko.filBpetQualCom.frame:GetChecked()
	return
end)
Choko.filBpetQualUnc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetQualUnc = Choko.filBpetQualUnc.frame:GetChecked()
	return
end)
Choko.filBpetQualRar.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetQualRar = Choko.filBpetQualRar.frame:GetChecked()
	return
end)
Choko.filBpetQualEpi.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetQualEpi = Choko.filBpetQualEpi.frame:GetChecked()
	return
end)
Choko.filBpetQualLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetQualLeg = Choko.filBpetQualLeg.frame:GetChecked()
	return
end)
Choko.filBpetExpVan.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpVan = Choko.filBpetExpVan.frame:GetChecked()
	return
end)
Choko.filBpetExpBc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpBc = Choko.filBpetExpBc.frame:GetChecked()
	return
end)
Choko.filBpetExpWlk.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpWlk = Choko.filBpetExpWlk.frame:GetChecked()
	return
end)
Choko.filBpetExpCat.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpCat = Choko.filBpetExpCat.frame:GetChecked()
	return
end)
Choko.filBpetExpMop.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpMop = Choko.filBpetExpMop.frame:GetChecked()
	return
end)
Choko.filBpetExpWod.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpWod = Choko.filBpetExpWod.frame:GetChecked()
	return
end)
Choko.filBpetExpLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpLeg = Choko.filBpetExpLeg.frame:GetChecked()
	return
end)
Choko.filBpetExpBfa.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filBpetExpBfa = Choko.filBpetExpBfa.frame:GetChecked()
	return
end)
Choko.filBpetValMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetValMin = Choko.filBpetValMin.frame:GetText()
	return
end)
Choko.filBpetValMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetValMax = Choko.filBpetValMax.frame:GetText()
	return
end)
Choko.filBpetIlvlMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetIlvlMin = Choko.filBpetIlvlMin.frame:GetText()
	return
end)
Choko.filBpetIlvlMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetIlvlMax = Choko.filBpetIlvlMax.frame:GetText()
	return
end)
Choko.filBpetPlayerMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetPlayerMin = Choko.filBpetPlayerMin.frame:GetText()
	return
end)
Choko.filBpetPlayerMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetPlayerMax = Choko.filBpetPlayerMax.frame:GetText()
	return
end)
Choko.filBpetComp.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetComp = Choko.filBpetComp.frame:GetText()
	return
end)
Choko.filBpetSold.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filBpetSold = Choko.filBpetSold.frame:GetText()
	return
end)







--******************************************************************************* Other
--*******************************************************************************
Choko.filOtherQualGry.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherQualGry = Choko.filOtherQualGry.frame:GetChecked()
	return
end)
Choko.filOtherQualCom.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherQualCom = Choko.filOtherQualCom.frame:GetChecked()
	return
end)
Choko.filOtherQualUnc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherQualUnc = Choko.filOtherQualUnc.frame:GetChecked()
	return
end)
Choko.filOtherQualRar.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherQualRar = Choko.filOtherQualRar.frame:GetChecked()
	return
end)
Choko.filOtherQualEpi.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherQualEpi = Choko.filOtherQualEpi.frame:GetChecked()
	return
end)
Choko.filOtherQualLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherQualLeg = Choko.filOtherQualLeg.frame:GetChecked()
	return
end)
Choko.filOtherExpVan.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpVan = Choko.filOtherExpVan.frame:GetChecked()
	return
end)
Choko.filOtherExpBc.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpBc = Choko.filOtherExpBc.frame:GetChecked()
	return
end)
Choko.filOtherExpWlk.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpWlk = Choko.filOtherExpWlk.frame:GetChecked()
	return
end)
Choko.filOtherExpCat.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpCat = Choko.filOtherExpCat.frame:GetChecked()
	return
end)
Choko.filOtherExpMop.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpMop = Choko.filOtherExpMop.frame:GetChecked()
	return
end)
Choko.filOtherExpWod.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpWod = Choko.filOtherExpWod.frame:GetChecked()
	return
end)
Choko.filOtherExpLeg.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpLeg = Choko.filOtherExpLeg.frame:GetChecked()
	return
end)
Choko.filOtherExpBfa.frame:SetScript("OnClick", function(self, ...)
	Choko.Options.filOtherExpBfa = Choko.filOtherExpBfa.frame:GetChecked()
	return
end)
Choko.filOtherValMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherValMin = Choko.filOtherValMin.frame:GetText()
	return
end)
Choko.filOtherValMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherValMax = Choko.filOtherValMax.frame:GetText()
	return
end)
Choko.filOtherIlvlMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherIlvlMin = Choko.filOtherIlvlMin.frame:GetText()
	return
end)
Choko.filOtherIlvlMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherIlvlMax = Choko.filOtherIlvlMax.frame:GetText()
	return
end)
Choko.filOtherPlayerMin.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherPlayerMin = Choko.filOtherPlayerMin.frame:GetText()
	return
end)
Choko.filOtherPlayerMax.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherPlayerMax = Choko.filOtherPlayerMax.frame:GetText()
	return
end)
Choko.filOtherComp.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherComp = Choko.filOtherComp.frame:GetText()
	return
end)
Choko.filOtherSold.frame:SetScript("OnTextChanged",function(self,event,...)
	Choko.Options.filOtherSold = Choko.filOtherSold.frame:GetText()
	return
end)



























