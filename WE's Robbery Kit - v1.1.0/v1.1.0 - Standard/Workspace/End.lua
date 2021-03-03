script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		if player.Robbing.Value == true then
			game.ReplicatedStorage.HideRobberyGUI:FireClient(player)
			player[game.ServerScriptService.Leaderboard:GetAttribute("FolderName")][game.ServerScriptService.Leaderboard:GetAttribute("CurrencyName")].Value += player[game.ServerScriptService.RobValues:GetAttribute("CashCollectedName")].Value
			player[game.ServerScriptService.RobValues:GetAttribute("CashCollectedName")].Value = 0
			player[game.ServerScriptService.RobValues:GetAttribute("RobbingName")].Value = false
		end
	end
end) 