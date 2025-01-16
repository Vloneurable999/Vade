local Module = {}

--// Variables \\--

local LocalPlayer = game.Players.LocalPlayer
local Roles = nil
local Murderer = nil
local Sheriff = nil
local Hero = nil

--// Functions \\--

function Module:CreateHighlight()
	for _, Player in pairs(game.Players:GetChildren()) do
		if Player ~= LocalPlayer and Player.Character and not Player.Character:FindFirstChild("Highlight") then
			Instance.new("Highlight", Player.Character)           
		end
	end
end

function Module:IsAlive(Player)
	for PlayerName, Data in pairs(Roles) do
		if Player.Name == PlayerName then
			if not Data.Killed and not Data.Dead then
				return true
			else
				return false
			end
		end
	end
end

function Module:UpdateHighlights()
	for _, Player in pairs(Players:GetChildren()) do
		if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("Highlight") then
			local Highlight = Player.Character:FindFirstChild("Highlight")
			
			if Player.Name == Sheriff and IsAlive(Player) then
				Highlight.FillColor = Color3.fromRGB(0, 0, 225)
			elseif Player.Name == Murderer and IsAlive(Player) then
				Highlight.FillColor = Color3.fromRGB(225, 0, 0)
			elseif Player.Name == Hero and IsAlive(Player) and not IsAlive(game.Players[Sheriff]) then
				Highlight.FillColor = Color3.fromRGB(255, 250, 0)
			else
				Highlight.FillColor = Color3.fromRGB(0, 225, 0)
			end
		end
	end
end

function Module:Init()
	game["Run Service"].RenderStepped:Connect(function()
		Roles = game.ReplicatedStorage:FindFirstChild("GetPlayerData", true):InvokeServer()

		for PlayerName, Data in pairs(Roles) do
			if Data.Role == "Murderer" then
				Murderer = PlayerName
			elseif Data.Role == 'Sheriff'then
				Sheriff = PlayerName
			elseif Data.Role == 'Hero'then
				Hero = PlayerName
			end
		end

		Module:CreateHighlight()
		Module:UpdateHighlights()
	end)
end

return Module