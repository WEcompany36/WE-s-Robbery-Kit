local runSer = game:GetService("RunService")
local DataStore = game:GetService("DataStoreService")
local ds = DataStore:GetDataStore("MoneySave") --Change this, reset everyones data.

game.Players.PlayerAdded:Connect(function(plr)
	local leader = Instance.new("Folder",plr)
	leader.Name = script:GetAttribute("FolderName")
	local m = Instance.new("IntValue",leader)
	m.Name = script:GetAttribute("CurrencyName")
	m.Value = ds:GetAsync(plr.UserId) or script:GetAttribute("DefaultValue")
	ds:SetAsync(plr.UserId, m.Value)
	m.Changed:Connect(function()
		ds:SetAsync(plr.UserId, m.Value)
	end)
end)

game.Players.PlayerRemoving:Connect(function(plr)
	ds:SetAsync(plr.UserId, plr[script:GetAttribute("FolderName")][script:GetAttribute("CurrencyName")].Value)
end)
