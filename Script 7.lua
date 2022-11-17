local Players = game:GetService("Players"):GetChildren()
local highlight = Instance.new("Highlight")
local RunService = game:GetService("Highlight")
highlight.Name= "Highlight"

-- esp for players already in-game--
for i, v in pairs(Players) do
	repeat wait() until v.Character
    local highlightClone = highlight:Clone()
	 highlightClone.Adornee = v.Character
	 highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
	 highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	 highlight.Name= "Highlight"
end 

-- neww players --
game.Players.PlayerAdded:Connect(function(player)
	
	 repeat wait() until player.Character
	 local highlightClone = highlight:Clone()
	 highlightClone.Adornee = player.Character
	 highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
	 highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	 highlight.Name= "Highlight"
	 
 end)
 
 
RunService.RenderStepped:Connected(function()
for i, v in pairs(Players) do
	repeat wait() until v.Character
    local highlightClone = highlight:Clone()
	 highlightClone.Adornee = v.Character
	 highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
	 highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	 highlight.Name= "Highlight"
	 task.wait(1)
 end
end)
	
	
	game.Players.PlayerRemoving:Connect(function(playerRemoved)
		playerRemoved.Character:FindFirstChild("").Highlight:Destroyed()
	end)