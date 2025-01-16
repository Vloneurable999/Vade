--// Variables \\--

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

--// Main \\--

return function(TitleText, ContentText, Duration, Image)
	Rayfield:Notify({
		Title = TitleText or "",
		Content = ContentText or "",
		Duration = Duration or 6.5,
		Image = Image or "rewind"
	})
end