--Basic classes for UI elements

local Choko = ChokoSniper


--Movaable frame class.
function Choko.GUI:CreateMovableFrame(shade, x, y, xo, yo, name, parent)
	local self = {}
	self.name = name
	self.frame = CreateFrame("Frame", name, parent)
	self.frame:SetPoint("TOPLEFT",xo,yo)
	self.frame:SetSize(x, y)
	self.texDark = self.frame:CreateTexture("ARTWORK") 
	self.texDark:SetColorTexture(shade,shade,shade,1)
	self.texDark:SetAllPoints(self.frame)
	self.frame:SetMovable(true)
	self.frame:EnableMouse(true)
	self.frame:RegisterForDrag("LeftButton")
	self.frame:SetScript("OnDragStart", self.frame.StartMoving)
	self.frame:SetScript("OnDragStop", self.frame.StopMovingOrSizing)
	self.frame:SetClampedToScreen( true )
	self.frame:SetFrameStrata("HIGH")
	self.frame:Show()
	return self
end

--Static frame class.
function Choko.GUI:CreateStaticFrame(shade, x, y, xo, yo, name, parent)
	local self = {}
	self.name = name
	self.frame = CreateFrame("Frame",name,parent)
	self.frame:SetPoint("TOPLEFT",xo,yo)
	self.frame:SetSize(x, y)
	self.texDark = self.frame:CreateTexture("ARTWORK") 
	self.texDark:SetColorTexture(shade,shade,shade,1)
	self.texDark:SetAllPoints(self.frame)
	self.frame:SetFrameStrata("HIGH")
	--self.frame:SetFrameLevel(9998)
	self.frame:Show()
	
    return self
end

--Static Text class.
function Choko.GUI:CreateStaticText(r,g,b, fontSize, xo, yo, parent, message, anchor)
	local self = {}
	self.name = name
	self.frame = CreateFrame("Frame","ChokoText",parent)
	self.frame:SetPoint("TOPLEFT",xo,yo)
	self.frame:SetSize(1, fontSize)
	self.texDark = self.frame:CreateTexture("ARTWORK") 
	self.texDark:SetColorTexture(0,0,0,0)
	self.texDark:SetAllPoints(self.frame)
	self.text = self.frame:CreateFontString(nil,"ARTWORK")
	self.text:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", fontSize)
	self.text:SetTextColor(r,g,b)
	self.text:SetText(message)
	self.text:SetPoint(anchor)
	self.frame:SetFrameStrata("HIGH")
	--self.frame:SetFrameLevel(333333)
	self.frame:Show()
    return self
end

--Static Scrollframe class.
function Choko.GUI:CreateStaticScrollFrame(x, y, xo, yo, name, parent)
	local self = {}
	self.name = name
	self.frame = CreateFrame("Frame","BaseScrollFrame",parent)
	self.frame:SetPoint("TOPLEFT",xo,yo)
	self.frame:SetSize(x, y)
	self.texDark = self.frame:CreateTexture("BACKGROUND") 
	self.texDark:SetColorTexture(0.1,0.1,0.1,1)
	self.texDark:SetAllPoints(self.frame)
	self.frame:SetFrameStrata("HIGH")
	self.frame:SetScript("OnMouseWheel", function (self, value) 
		--self:GetParent():SetVerticalScroll(value) 
		print("Mouse fun times: ",value)
		local d = self.scrollbar:GetValue()
		value = value * -10
		self.scrollbar:SetValue(d + value)
	end)
	
	self.scrollframe = CreateFrame("ScrollFrame", "ScrollFrame", self.frame) 
	self.scrollframe:SetPoint("TOPLEFT", 0, 0) 
	self.scrollframe:SetPoint("BOTTOMRIGHT", 0, 0)
	self.scrollframe:EnableMouseWheel(1)
	self.texture = self.scrollframe:CreateTexture() 
	self.texture:SetAllPoints() 
	self.texture:SetTexture(0.1,0.1,0.1,1) 
	self.frame.scrollframe = self.scrollframe
	
	
	
	
	self.sliderBG = CreateFrame("Frame",nil,parent)
	self.sliderBG:SetPoint("TOPLEFT",825,-5)
	self.sliderBG:SetSize(20, y)
	self.sliderTexDark = self.sliderBG:CreateTexture("BACKGROUND") 
	self.sliderTexDark:SetColorTexture(0.3,0.3,0.3,1)
	self.sliderTexDark:SetAllPoints(self.sliderBG)
	self.sliderBG:SetFrameStrata("HIGH")
	--self.sliderBG:SetFrameLevel(5000)
	
	self.scrollbar = CreateFrame("Slider", "ScrollBar", self.scrollframe, "UIPanelScrollBarTemplate") 
	self.scrollbar:SetPoint("TOPLEFT", self.frame, "TOPRIGHT", -18, -16) 
	self.scrollbar:SetPoint("BOTTOMLEFT", self.frame, "BOTTOMRIGHT", -18, 16) 
	self.scrollbar:SetMinMaxValues(1, 1000) 
	self.scrollbar:SetValueStep(1) 
	self.scrollbar.scrollStep = 1 
	self.scrollbar:SetValue(0) 
	self.scrollbar:SetWidth(16) 
	self.scrollbar:SetScript("OnValueChanged", function (self, value) self:GetParent():SetVerticalScroll(value) end) 
	self.scrollbg = self.scrollbar:CreateTexture(nil, "ARTWORK") 
	self.scrollbg:SetAllPoints(self.scrollbar) 
	self.scrollbg:SetTexture(0.1, 0.1, 0.1, 0.4) 
	self.frame.scrollbar = self.scrollbar 
	--self.scrollbar:SetFrameLevel(5001)
	
	
	
	self.content = CreateFrame("Frame", "ScrollContent", self.scrollframe) 
	self.content:SetSize(x, 1000) 
	self.contextTex = self.frame:CreateTexture("ARTWORK") 
	self.contextTex:SetColorTexture(0.1,0.1,0.1,1)
	self.contextTex:SetAllPoints(self.frame)
	self.content.contextTex = self.contextTex 
	self.scrollframe.content = self.content 
	
	self.scrollframe:SetScrollChild(self.content)
	
	
	self.frame:Show()
    return self
end

--Textured Frame class
function Choko.GUI:CreateTextureFrame(parent, x, y, xo, yo, u, v, uo, vo, tex)
	local self = {}
	self.frame = Choko:AcquireFrame(parent)--CreateFrame("Frame","TextureFrame",parent)
	self.frame:SetPoint("BOTTOMLEFT",xo,yo)
	self.frame:SetSize(x, y) 
	self.frame.graphics = self.frame:CreateTexture("ARTWORK") 
	self.frame.graphics:SetTexture(tex)
	self.frame.graphics:SetTexCoord(u,v,uo,vo)
	self.frame.graphics:SetAllPoints(self.frame)
	self.frame:SetFrameStrata("HIGH")
	--self.frame:SetFrameLevel(222222)
	return self
end

function Choko.GUI:CreatePlotPoint(parent, x, y, xo, yo, u, v, uo, vo, tex)
	local self = {}
	self.vis = false
	self.x = x
	self.y = y
	self.ms = 0
	self.frame = Choko:AcquireFrame(parent)--CreateFrame("Frame","TextureFrame",parent)
	self.frame:SetPoint("BOTTOMLEFT",xo,yo)
	self.frame:SetSize(x, y) 
	self.frame.graphics = self.frame:CreateTexture("ARTWORK") 
	self.frame.graphics:SetTexture(tex)
	self.frame.graphics:SetTexCoord(u,v,uo,vo)
	self.frame.graphics:SetAllPoints(self.frame)
	self.frame:SetFrameStrata("HIGH")
	--self.frame:SetFrameLevel(222222)
	
	return self
end

--Menu button class.
function Choko.GUI:CreateMenuButton(x,y, xo, yo, parent, fontSize, message)
	local self = {}
	
	self.frame = CreateFrame("Button","XXX",parent)
	self.frame:SetPoint("TOPLEFT",xo,yo)
	self.frame:SetSize(x, y) 
	self.frame:SetFrameStrata("HIGH")
	--self.frame:SetFrameLevel(999999)
	self.frame.graphics = self.frame:CreateTexture("BACKGROUND") 
	self.frame.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\CarbonFiber")
	self.frame.graphics:SetTexCoord(0,1,0,0.2)
	self.frame.graphics:SetAllPoints(self.frame)
	self.frame.title = self.frame:CreateFontString(nil,"ARTWORK")
	self.frame.title:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", fontSize)
	self.frame.title:SetTextColor(0.8,0.8,0.8)
	self.frame.title:SetText(message)
	self.frame.title:SetPoint("CENTER")
	
	self.frame.Rollover = true
	
	self.frame:SetScript("OnEnter", function(self, arg1)
		if self.Rollover == false then
			self.title:SetTextColor(1,1,1)
			return
		else
			self.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\CarbonFiberB")
			self.graphics:SetTexCoord(0,1,0,0.2)
			self.graphics:SetAllPoints(self)
		end
	end)
	self.frame:SetScript("OnLeave", function(self, arg1)
		if self.Rollover == false then
			self.title:SetTextColor(0.8,0.8,0.8)
			return
		else
			self.graphics:SetTexture("Interface\\AddOns\\ChokoSniper\\img\\CarbonFiber")
			self.graphics:SetTexCoord(0,1,0,0.2)
			self.graphics:SetAllPoints(self)
		end
	end)
	--self.frame:SetScript("OnClick", function(self, arg1)	
	--end)
	
    return self
end


--Textured Frame class
function Choko.GUI:CreateCheckBox(parent, xo, yo, msg,r,g,b)
	local self = {}
	self.frame = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
	self.frame:SetPoint("TOPLEFT", xo, yo)
	self.frame:SetSize(15, 15) 
	self.frame.title = self.frame:CreateFontString(nil,"ARTWORK")
	self.frame.title:SetFont("Interface\\AddOns\\ChokoSniper\\fonts\\Exo2.ttf", 10)
	self.frame.title:SetTextColor(r,g,b)
	self.frame.title:SetText(msg)
	self.frame.title:SetPoint("LEFT",18,1)
	--self.frame:RegisterEvent("OnClick")
	--self.frame:SetScript("OnClick",function(self,event,...)
	--	hsdb.generalLegendary = self.frame:GetChecked()
	--end)
	return self
end



--Textured Frame class
function Choko.GUI:CreateEditBox(parent, xo, yo)
	local self = {}
	self.frame = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
	self.frame:SetPoint("TOPLEFT", xo, yo)
	self.frame:SetAutoFocus(false)
	self.frame:SetSize(65, 10) 
	--self.frame:SetScript("OnTextChanged",function(self,event,...)
		--do things
	--end)
	return self
end







































