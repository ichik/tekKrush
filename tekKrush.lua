local f = CreateFrame("Frame")
f:RegisterEvent("CONFIRM_DISENCHANT_ROLL")
f:RegisterEvent("CONFIRM_LOOT_ROLL")
f:RegisterEvent("LOOT_BIND_CONFIRM")
f:SetScript("OnEvent", function(self, event, ...)
	for i=1,STATICPOPUP_NUMDIALOGS do
		local frame = _G["StaticPopup"..i]
		if (frame.which == "CONFIRM_LOOT_ROLL" or frame.which == "LOOT_BIND" or frame.which == "LOOT_BIND_CONFIRM") and frame:IsVisible() then StaticPopup_OnClick(frame, 1) end
	end
end)