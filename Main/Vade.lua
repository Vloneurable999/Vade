_G.Vade = {}

_G.Vade.Directory = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/Directory.lua"))()

function _G.Vade.Load()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/UIs/Windows/KeyWindow.lua"))().Init()
end

return _G.Vade