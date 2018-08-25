local Choko = ChokoSniper

Choko.pricingBase = Choko.GUI:CreateStaticFrame(0.2, 842, 671, 154, -4, nil, Choko.frameMenuBase.frame)
Choko.pricingBase.frame:SetFrameLevel(9050)


Choko.priceTitleCustom = Choko.GUI:CreateStaticText(0.4,0.7,1, 14, 5, -5, Choko.pricingBase.frame, "CHOKO CUSTOM PRICING","LEFT")
Choko.priceCheckAggr = Choko.GUI:CreateCheckBox(Choko.pricingBase.frame, 5, -40, "AGGRESSIVE",1,1,1)
Choko.priceCheckNorm = Choko.GUI:CreateCheckBox(Choko.pricingBase.frame, 5, -25, "NORMAL",1,1,1)
Choko.priceCheckCons = Choko.GUI:CreateCheckBox(Choko.pricingBase.frame, 5, -55, "CONSERVATIVE",1,1,1)


Choko.priceTitleTSM = Choko.GUI:CreateStaticText(0.4,0.7,1, 14, 5, -95, Choko.pricingBase.frame, "TSM PRICING","LEFT")
Choko.priceCheckTSM = Choko.GUI:CreateCheckBox(Choko.pricingBase.frame, 5, -115, "TSM SOURCE:",1,1,1)


Choko.priceEditTSM = Choko.GUI:CreateEditBox(Choko.priceCheckTSM.frame, 95, 0)
Choko.priceEditTSM.frame:SetSize(150, 10)
Choko.priceEditTSM.frame:SetText("DBMarket")


Choko.pricingBase.frame:Hide()