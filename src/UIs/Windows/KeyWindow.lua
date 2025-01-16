local Module = {}

--// Variables \\--

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--// Main \\--

function Module:Init()
	local Window = Rayfield:CreateWindow({
		Name = "Vade Key",
		LoadingTitle = "Vade",
		LoadingSubtitle = "by skyler_wrld",
		Theme = "Default",
		DisableRayfieldPrompts = false,
		DisableBuildWarnings = false, 
		KeySystem = false,

		ConfigurationSaving = {
			Enabled = false,
			FolderName = nil,
			FileName = nil
		},

		Discord = {
			Enabled = true,
			Invite = "https://discord.gg/Dm2B5QNgyX",
			RememberJoins = true 
		}
	})

	local KeyTab = Window:CreateTab("Key")
	
	KeyTab:CreateInput({
		Name = "Key Input",
		CurrentValue = "",
		PlaceholderText = "Enter Your Key",
		RemoveTextAfterFocusLost = false,
		Flag = "VadeKey",
		
		Callback = function(Text)
			--Add Logic
		end,
	})

	KeyTab:CreateButton({
		Name = "Get Key",
	})
end

return Module