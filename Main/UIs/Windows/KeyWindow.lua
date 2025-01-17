local Module = {}

--// Variables \\--

local Rayfield = _G.Vade.Directory.Rayfield
local KeyValidation = _G.Vade.Directory.KeyValidation
local MainWindow = _G.Vade.Directory.MainWindow

--// Main \\--

function Module.Init()
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
			local Verify = KeyValidation.VerifyKey(Text)
			
			if Verify then
				Rayfield:Destroy()
				task.wait(0.5)
				MainWindow.Init()
			end 
		end,
	})

	KeyTab:CreateButton({
		Name = "Get Key",
		
		Callback = function()
			KeyValidation.CopyLink()
		end,
	})
end

return Module