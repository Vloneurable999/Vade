local Module = {}

--// Variables \\--

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

--// Main \\--

function Module.Alert(TitleText, ContentText, Duration, Image)
	Rayfield:Notify({
		Title = TitleText or "",
		Content = ContentText or "",
		Duration = Duration or 6.5,
		Image = Image or "rewind"
	})
end

return Module