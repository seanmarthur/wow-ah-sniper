local Choko = ChokoSniper

Choko.filterBase = Choko.GUI:CreateStaticFrame(0.2, 842, 671, 154, -4, "filterBase", Choko.frameMenuBase.frame)



Choko.filterBase.frame:SetFrameLevel(9050)

Choko.txtTitleMsg = Choko.GUI:CreateStaticText(0.9,0.0,0.2, 10, 0, -0, Choko.filterBase.frame, "If it's not checked, then it can't show up in sniper.", "LEFT")


local YO = 0
Choko.filArmorTitleMain = Choko.GUI:CreateStaticText(0.4,0.7,1, 14, 421, -5 + YO, Choko.filterBase.frame, "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       ARMOR / WEAPONS      - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", "CENTER")
Choko.filArmorQualTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -25 + YO, Choko.filterBase.frame, "QUALITY:", "LEFT")
Choko.filArmorQualGry = Choko.GUI:CreateCheckBox(Choko.filArmorQualTitle.frame, 60, 0, "GRY",0.62,0.62,0.62)
Choko.filArmorQualCom = Choko.GUI:CreateCheckBox(Choko.filArmorQualTitle.frame, 110, 0, "COM",1,1,1)
Choko.filArmorQualUnc = Choko.GUI:CreateCheckBox(Choko.filArmorQualTitle.frame, 160, 0, "UNC",0.12,1,0.0)
Choko.filArmorQualRar = Choko.GUI:CreateCheckBox(Choko.filArmorQualTitle.frame, 60, -15, "RAR",0.0,0.44,0.87)
Choko.filArmorQualEpi = Choko.GUI:CreateCheckBox(Choko.filArmorQualTitle.frame, 110, -15, "EPI",0.64,0.21,0.93)
Choko.filArmorQualLeg = Choko.GUI:CreateCheckBox(Choko.filArmorQualTitle.frame, 160, -15, "LEG",1,0.5,0.0)

Choko.filArmorExpTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 225, -25 + YO, Choko.filterBase.frame, "EXPANSION:", "LEFT")
Choko.filArmorExpVan = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 80, 0, "VAN",1,1,1)
Choko.filArmorExpBc = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 130, 0, "BC",1,1,1)
Choko.filArmorExpWlk = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 180, 0, "WLK",1,1,1)
Choko.filArmorExpCat = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 230, 0, "CAT",1,1,1)
Choko.filArmorExpMop = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 80, -15, "MOP",1,1,1)
Choko.filArmorExpWod = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 130, -15, "WOD",1,1,1)
Choko.filArmorExpLeg = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 180, -15, "LEG",1,1,1)
Choko.filArmorExpBfa = Choko.GUI:CreateCheckBox(Choko.filArmorExpTitle.frame, 230, -15, "BFA",1,1,1)

Choko.filArmorValTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 520, -25 + YO, Choko.filterBase.frame, "VALUE :      min:                               max:", "LEFT")
Choko.filArmorValMin = Choko.GUI:CreateEditBox(Choko.filArmorValTitle.frame, 95, 0)
Choko.filArmorValMax = Choko.GUI:CreateEditBox(Choko.filArmorValTitle.frame, 215, 0)


Choko.filArmorIlvlTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -67 + YO, Choko.filterBase.frame, "iLvl:        min:                               max:", "LEFT")
Choko.filArmorIlvlMin = Choko.GUI:CreateEditBox(Choko.filArmorIlvlTitle.frame, 82, 0)
Choko.filArmorIlvlMax = Choko.GUI:CreateEditBox(Choko.filArmorIlvlTitle.frame, 202, 0)

Choko.filArmorPlayerTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 300, -67 + YO, Choko.filterBase.frame, "PLAYER LEVEL:      min:                               max:", "LEFT")
Choko.filArmorPlayerMin = Choko.GUI:CreateEditBox(Choko.filArmorPlayerTitle.frame, 140, 0)
Choko.filArmorPlayerMax = Choko.GUI:CreateEditBox(Choko.filArmorPlayerTitle.frame, 260, 0)

Choko.filArmorCompTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 650, -67 + YO, Choko.filterBase.frame, "MAX COMP: ", "LEFT")
Choko.filArmorComp = Choko.GUI:CreateEditBox(Choko.filArmorCompTitle.frame, 85, 0)

Choko.filArmorSoldTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -103 + YO, Choko.filterBase.frame, "DAILY SOLD:      min:", "LEFT")
Choko.filArmorSold = Choko.GUI:CreateEditBox(Choko.filArmorSoldTitle.frame, 125, 0)




Choko.filArmorDivA = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -55 + YO, "filterBase", Choko.filterBase.frame)
Choko.filArmorDivB = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -90 + YO, "filterBase", Choko.filterBase.frame)
Choko.filArmorDivC = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 215, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filArmorDivD = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 505, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filArmorDivE = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 285, -60 + YO, "filterBase", Choko.filterBase.frame)
Choko.filArmorDivF = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 635, -60 + YO, "filterBase", Choko.filterBase.frame)





YO = -125
Choko.filTradeTitleMain = Choko.GUI:CreateStaticText(0.4,0.7,1, 14, 421, -5 + YO, Choko.filterBase.frame, "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       TRADEGOODS      - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", "CENTER")
Choko.filTradeQualTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -25 + YO, Choko.filterBase.frame, "QUALITY:", "LEFT")
Choko.filTradeQualGry = Choko.GUI:CreateCheckBox(Choko.filTradeQualTitle.frame, 60, 0, "GRY",0.62,0.62,0.62)
Choko.filTradeQualCom = Choko.GUI:CreateCheckBox(Choko.filTradeQualTitle.frame, 110, 0, "COM",1,1,1)
Choko.filTradeQualUnc = Choko.GUI:CreateCheckBox(Choko.filTradeQualTitle.frame, 160, 0, "UNC",0.12,1,0.0)
Choko.filTradeQualRar = Choko.GUI:CreateCheckBox(Choko.filTradeQualTitle.frame, 60, -15, "RAR",0.0,0.44,0.87)
Choko.filTradeQualEpi = Choko.GUI:CreateCheckBox(Choko.filTradeQualTitle.frame, 110, -15, "EPI",0.64,0.21,0.93)
Choko.filTradeQualLeg = Choko.GUI:CreateCheckBox(Choko.filTradeQualTitle.frame, 160, -15, "LEG",1,0.5,0.0)

Choko.filTradeExpTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 225, -25 + YO, Choko.filterBase.frame, "EXPANSION:", "LEFT")
Choko.filTradeExpVan = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 80, 0, "VAN",1,1,1)
Choko.filTradeExpBc = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 130, 0, "BC",1,1,1)
Choko.filTradeExpWlk = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 180, 0, "WLK",1,1,1)
Choko.filTradeExpCat = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 230, 0, "CAT",1,1,1)
Choko.filTradeExpMop = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 80, -15, "MOP",1,1,1)
Choko.filTradeExpWod = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 130, -15, "WOD",1,1,1)
Choko.filTradeExpLeg = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 180, -15, "LEG",1,1,1)
Choko.filTradeExpBfa = Choko.GUI:CreateCheckBox(Choko.filTradeExpTitle.frame, 230, -15, "BFA",1,1,1)

Choko.filTradeValTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 520, -25 + YO, Choko.filterBase.frame, "VALUE :      min:                               max:", "LEFT")
Choko.filTradeValMin = Choko.GUI:CreateEditBox(Choko.filTradeValTitle.frame, 95, 0)
Choko.filTradeValMax = Choko.GUI:CreateEditBox(Choko.filTradeValTitle.frame, 215, 0)


Choko.filTradeIlvlTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -67 + YO, Choko.filterBase.frame, "iLvl:        min:                               max:", "LEFT")
Choko.filTradeIlvlMin = Choko.GUI:CreateEditBox(Choko.filTradeIlvlTitle.frame, 82, 0)
Choko.filTradeIlvlMax = Choko.GUI:CreateEditBox(Choko.filTradeIlvlTitle.frame, 202, 0)

Choko.filTradePlayerTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 300, -67 + YO, Choko.filterBase.frame, "PLAYER LEVEL:      min:                               max:", "LEFT")
Choko.filTradePlayerMin = Choko.GUI:CreateEditBox(Choko.filTradePlayerTitle.frame, 140, 0)
Choko.filTradePlayerMax = Choko.GUI:CreateEditBox(Choko.filTradePlayerTitle.frame, 260, 0)

Choko.filTradeCompTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 650, -67 + YO, Choko.filterBase.frame, "MAX COMP: ", "LEFT")
Choko.filTradeComp = Choko.GUI:CreateEditBox(Choko.filTradeCompTitle.frame, 85, 0)

Choko.filTradeSoldTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -103 + YO, Choko.filterBase.frame, "DAILY SOLD:      min:", "LEFT")
Choko.filTradeSold = Choko.GUI:CreateEditBox(Choko.filTradeSoldTitle.frame, 125, 0)

Choko.filTradeDivA = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -55 + YO, "filterBase", Choko.filterBase.frame)
Choko.filTradeDivB = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -90 + YO, "filterBase", Choko.filterBase.frame)
Choko.filTradeDivC = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 215, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filTradeDivD = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 505, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filTradeDivE = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 285, -60 + YO, "filterBase", Choko.filterBase.frame)
Choko.filTradeDivF = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 635, -60 + YO, "filterBase", Choko.filterBase.frame)



YO = -250
Choko.filRecipeTitleMain = Choko.GUI:CreateStaticText(0.4,0.7,1, 14, 421, -5 + YO, Choko.filterBase.frame, "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       RECIPE      - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", "CENTER")
Choko.filRecipeQualTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -25 + YO, Choko.filterBase.frame, "QUALITY:", "LEFT")
Choko.filRecipeQualGry = Choko.GUI:CreateCheckBox(Choko.filRecipeQualTitle.frame, 60, 0, "GRY",0.62,0.62,0.62)
Choko.filRecipeQualCom = Choko.GUI:CreateCheckBox(Choko.filRecipeQualTitle.frame, 110, 0, "COM",1,1,1)
Choko.filRecipeQualUnc = Choko.GUI:CreateCheckBox(Choko.filRecipeQualTitle.frame, 160, 0, "UNC",0.12,1,0.0)
Choko.filRecipeQualRar = Choko.GUI:CreateCheckBox(Choko.filRecipeQualTitle.frame, 60, -15, "RAR",0.0,0.44,0.87)
Choko.filRecipeQualEpi = Choko.GUI:CreateCheckBox(Choko.filRecipeQualTitle.frame, 110, -15, "EPI",0.64,0.21,0.93)
Choko.filRecipeQualLeg = Choko.GUI:CreateCheckBox(Choko.filRecipeQualTitle.frame, 160, -15, "LEG",1,0.5,0.0)

Choko.filRecipeExpTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 225, -25 + YO, Choko.filterBase.frame, "EXPANSION:", "LEFT")
Choko.filRecipeExpVan = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 80, 0, "VAN",1,1,1)
Choko.filRecipeExpBc = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 130, 0, "BC",1,1,1)
Choko.filRecipeExpWlk = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 180, 0, "WLK",1,1,1)
Choko.filRecipeExpCat = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 230, 0, "CAT",1,1,1)
Choko.filRecipeExpMop = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 80, -15, "MOP",1,1,1)
Choko.filRecipeExpWod = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 130, -15, "WOD",1,1,1)
Choko.filRecipeExpLeg = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 180, -15, "LEG",1,1,1)
Choko.filRecipeExpBfa = Choko.GUI:CreateCheckBox(Choko.filRecipeExpTitle.frame, 230, -15, "BFA",1,1,1)

Choko.filRecipeValTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 520, -25 + YO, Choko.filterBase.frame, "VALUE :      min:                               max:", "LEFT")
Choko.filRecipeValMin = Choko.GUI:CreateEditBox(Choko.filRecipeValTitle.frame, 95, 0)
Choko.filRecipeValMax = Choko.GUI:CreateEditBox(Choko.filRecipeValTitle.frame, 215, 0)


Choko.filRecipeIlvlTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -67 + YO, Choko.filterBase.frame, "iLvl:        min:                               max:", "LEFT")
Choko.filRecipeIlvlMin = Choko.GUI:CreateEditBox(Choko.filRecipeIlvlTitle.frame, 82, 0)
Choko.filRecipeIlvlMax = Choko.GUI:CreateEditBox(Choko.filRecipeIlvlTitle.frame, 202, 0)

Choko.filRecipePlayerTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 300, -67 + YO, Choko.filterBase.frame, "PLAYER LEVEL:      min:                               max:", "LEFT")
Choko.filRecipePlayerMin = Choko.GUI:CreateEditBox(Choko.filRecipePlayerTitle.frame, 140, 0)
Choko.filRecipePlayerMax = Choko.GUI:CreateEditBox(Choko.filRecipePlayerTitle.frame, 260, 0)

Choko.filRecipeCompTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 650, -67 + YO, Choko.filterBase.frame, "MAX COMP: ", "LEFT")
Choko.filRecipeComp = Choko.GUI:CreateEditBox(Choko.filRecipeCompTitle.frame, 85, 0)

Choko.filRecipeSoldTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -103 + YO, Choko.filterBase.frame, "DAILY SOLD:      min:", "LEFT")
Choko.filRecipeSold = Choko.GUI:CreateEditBox(Choko.filRecipeSoldTitle.frame, 125, 0)

Choko.filRecipeDivA = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -55 + YO, "filterBase", Choko.filterBase.frame)
Choko.filRecipeDivB = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -90 + YO, "filterBase", Choko.filterBase.frame)
Choko.filRecipeDivC = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 215, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filRecipeDivD = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 505, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filRecipeDivE = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 285, -60 + YO, "filterBase", Choko.filterBase.frame)
Choko.filRecipeDivF = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 635, -60 + YO, "filterBase", Choko.filterBase.frame)




YO = -375
Choko.filBpetTitleMain = Choko.GUI:CreateStaticText(0.4,0.7,1, 14, 421, -5 + YO, Choko.filterBase.frame, "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       BATTLE PETS      - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", "CENTER")
Choko.filBpetQualTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -25 + YO, Choko.filterBase.frame, "QUALITY:", "LEFT")
Choko.filBpetQualGry = Choko.GUI:CreateCheckBox(Choko.filBpetQualTitle.frame, 60, 0, "GRY",0.62,0.62,0.62)
Choko.filBpetQualCom = Choko.GUI:CreateCheckBox(Choko.filBpetQualTitle.frame, 110, 0, "COM",1,1,1)
Choko.filBpetQualUnc = Choko.GUI:CreateCheckBox(Choko.filBpetQualTitle.frame, 160, 0, "UNC",0.12,1,0.0)
Choko.filBpetQualRar = Choko.GUI:CreateCheckBox(Choko.filBpetQualTitle.frame, 60, -15, "RAR",0.0,0.44,0.87)
Choko.filBpetQualEpi = Choko.GUI:CreateCheckBox(Choko.filBpetQualTitle.frame, 110, -15, "EPI",0.64,0.21,0.93)
Choko.filBpetQualLeg = Choko.GUI:CreateCheckBox(Choko.filBpetQualTitle.frame, 160, -15, "LEG",1,0.5,0.0)

Choko.filBpetExpTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 225, -25 + YO, Choko.filterBase.frame, "EXPANSION:", "LEFT")
Choko.filBpetExpVan = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 80, 0, "VAN",1,1,1)
Choko.filBpetExpBc = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 130, 0, "BC",1,1,1)
Choko.filBpetExpWlk = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 180, 0, "WLK",1,1,1)
Choko.filBpetExpCat = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 230, 0, "CAT",1,1,1)
Choko.filBpetExpMop = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 80, -15, "MOP",1,1,1)
Choko.filBpetExpWod = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 130, -15, "WOD",1,1,1)
Choko.filBpetExpLeg = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 180, -15, "LEG",1,1,1)
Choko.filBpetExpBfa = Choko.GUI:CreateCheckBox(Choko.filBpetExpTitle.frame, 230, -15, "BFA",1,1,1)

Choko.filBpetValTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 520, -25 + YO, Choko.filterBase.frame, "VALUE :      min:                               max:", "LEFT")
Choko.filBpetValMin = Choko.GUI:CreateEditBox(Choko.filBpetValTitle.frame, 95, 0)
Choko.filBpetValMax = Choko.GUI:CreateEditBox(Choko.filBpetValTitle.frame, 215, 0)


Choko.filBpetIlvlTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -67 + YO, Choko.filterBase.frame, "iLvl:        min:                               max:", "LEFT")
Choko.filBpetIlvlMin = Choko.GUI:CreateEditBox(Choko.filBpetIlvlTitle.frame, 82, 0)
Choko.filBpetIlvlMax = Choko.GUI:CreateEditBox(Choko.filBpetIlvlTitle.frame, 202, 0)

Choko.filBpetPlayerTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 300, -67 + YO, Choko.filterBase.frame, "PLAYER LEVEL:      min:                               max:", "LEFT")
Choko.filBpetPlayerMin = Choko.GUI:CreateEditBox(Choko.filBpetPlayerTitle.frame, 140, 0)
Choko.filBpetPlayerMax = Choko.GUI:CreateEditBox(Choko.filBpetPlayerTitle.frame, 260, 0)

Choko.filBpetCompTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 650, -67 + YO, Choko.filterBase.frame, "MAX COMP: ", "LEFT")
Choko.filBpetComp = Choko.GUI:CreateEditBox(Choko.filBpetCompTitle.frame, 85, 0)

Choko.filBpetSoldTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -103 + YO, Choko.filterBase.frame, "DAILY SOLD:      min:", "LEFT")
Choko.filBpetSold = Choko.GUI:CreateEditBox(Choko.filBpetSoldTitle.frame, 125, 0)

Choko.filBpetDivA = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -55 + YO, "filterBase", Choko.filterBase.frame)
Choko.filBpetDivB = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -90 + YO, "filterBase", Choko.filterBase.frame)
Choko.filBpetDivC = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 215, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filBpetDivD = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 505, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filBpetDivE = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 285, -60 + YO, "filterBase", Choko.filterBase.frame)
Choko.filBpetDivF = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 635, -60 + YO, "filterBase", Choko.filterBase.frame)






YO = -500
Choko.filOtherTitleMain = Choko.GUI:CreateStaticText(0.4,1,0.7, 14, 421, -5 + YO, Choko.filterBase.frame, "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -             OTHER            - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", "CENTER")
Choko.filOtherTitleMainB = Choko.GUI:CreateStaticText(0.9,0.0,0.2, 10, 421,  5 + YO, Choko.filterBase.frame, "  [ IMPLICIT ]","CENTER")
Choko.filOtherQualTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -25 + YO, Choko.filterBase.frame, "QUALITY:", "LEFT")
Choko.filOtherQualGry = Choko.GUI:CreateCheckBox(Choko.filOtherQualTitle.frame, 60, 0, "GRY",0.62,0.62,0.62)
Choko.filOtherQualCom = Choko.GUI:CreateCheckBox(Choko.filOtherQualTitle.frame, 110, 0, "COM",1,1,1)
Choko.filOtherQualUnc = Choko.GUI:CreateCheckBox(Choko.filOtherQualTitle.frame, 160, 0, "UNC",0.12,1,0.0)
Choko.filOtherQualRar = Choko.GUI:CreateCheckBox(Choko.filOtherQualTitle.frame, 60, -15, "RAR",0.0,0.44,0.87)
Choko.filOtherQualEpi = Choko.GUI:CreateCheckBox(Choko.filOtherQualTitle.frame, 110, -15, "EPI",0.64,0.21,0.93)
Choko.filOtherQualLeg = Choko.GUI:CreateCheckBox(Choko.filOtherQualTitle.frame, 160, -15, "LEG",1,0.5,0.0)

Choko.filOtherExpTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 225, -25 + YO, Choko.filterBase.frame, "EXPANSION:", "LEFT")
Choko.filOtherExpVan = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 80, 0, "VAN",1,1,1)
Choko.filOtherExpBc = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 130, 0, "BC",1,1,1)
Choko.filOtherExpWlk = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 180, 0, "WLK",1,1,1)
Choko.filOtherExpCat = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 230, 0, "CAT",1,1,1)
Choko.filOtherExpMop = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 80, -15, "MOP",1,1,1)
Choko.filOtherExpWod = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 130, -15, "WOD",1,1,1)
Choko.filOtherExpLeg = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 180, -15, "LEG",1,1,1)
Choko.filOtherExpBfa = Choko.GUI:CreateCheckBox(Choko.filOtherExpTitle.frame, 230, -15, "BFA",1,1,1)

Choko.filOtherValTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 520, -25 + YO, Choko.filterBase.frame, "VALUE :      min:                               max:", "LEFT")
Choko.filOtherValMin = Choko.GUI:CreateEditBox(Choko.filOtherValTitle.frame, 95, 0)
Choko.filOtherValMax = Choko.GUI:CreateEditBox(Choko.filOtherValTitle.frame, 215, 0)


Choko.filOtherIlvlTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -67 + YO, Choko.filterBase.frame, "iLvl:        min:                               max:", "LEFT")
Choko.filOtherIlvlMin = Choko.GUI:CreateEditBox(Choko.filOtherIlvlTitle.frame, 82, 0)
Choko.filOtherIlvlMax = Choko.GUI:CreateEditBox(Choko.filOtherIlvlTitle.frame, 202, 0)

Choko.filOtherPlayerTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 300, -67 + YO, Choko.filterBase.frame, "PLAYER LEVEL:      min:                               max:", "LEFT")
Choko.filOtherPlayerMin = Choko.GUI:CreateEditBox(Choko.filOtherPlayerTitle.frame, 140, 0)
Choko.filOtherPlayerMax = Choko.GUI:CreateEditBox(Choko.filOtherPlayerTitle.frame, 260, 0)

Choko.filOtherCompTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 650, -67 + YO, Choko.filterBase.frame, "MAX COMP: ", "LEFT")
Choko.filOtherComp = Choko.GUI:CreateEditBox(Choko.filOtherCompTitle.frame, 85, 0)

Choko.filOtherSoldTitle = Choko.GUI:CreateStaticText(0.7,0.7,0.1, 12, 2, -103 + YO, Choko.filterBase.frame, "DAILY SOLD:      min:", "LEFT")
Choko.filOtherSold = Choko.GUI:CreateEditBox(Choko.filOtherSoldTitle.frame, 125, 0)

Choko.filOtherDivA = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -55 + YO, "filterBase", Choko.filterBase.frame)
Choko.filOtherDivB = Choko.GUI:CreateStaticFrame(0.25, 842, 1, 0, -90 + YO, "filterBase", Choko.filterBase.frame)
Choko.filOtherDivC = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 215, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filOtherDivD = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 505, -25 + YO, "filterBase", Choko.filterBase.frame)
Choko.filOtherDivE = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 285, -60 + YO, "filterBase", Choko.filterBase.frame)
Choko.filOtherDivF = Choko.GUI:CreateStaticFrame(0.25, 1, 25, 635, -60 + YO, "filterBase", Choko.filterBase.frame)




Choko.filterBase.frame:Hide()






