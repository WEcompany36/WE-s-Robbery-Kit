game.Players.PlayerAdded:Connect(function(plr)
	local collectedCash = Instance.new("IntValue",plr)
	collectedCash.Name = script:GetAttribute("CashCollectedName")
	
	local robbing = Instance.new("BoolValue",plr)
	robbing.Name = script:GetAttribute("RobbingName")
	robbing.Value = false
end)