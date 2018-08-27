--This is just a temporary file. 
local TBD = ToBeDetermined



local f = CreateFrame("Frame","TBD_Debug",UIParent)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_ENTERING_WORLD" then TBD:HelloTeam() end
end)
