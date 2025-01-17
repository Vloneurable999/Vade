local Module = {}

--// Variables \\--

local Rayfield = _G.Vade.Directory.Rayfield

--// Main \\--

function Module.Init()
	local Window = Rayfield:CreateWindow({
		Name = "Vade Main",
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

	local MainTab = Window:CreateTab("Main")

	MainTab:CreateButton({
		Name = "Test",
		Callback = function()

		end,
	})
	
	local Slider = MainTab:CreateSlider({
		Name = "Example",
		Range = {0, 100},
		Increment = 10,
		Suffix = "IDK",
		CurrentValue = 10,
		Flag = "Slider1",
		
		Callback = function(Value)
			
		end,
	})
end

return Module