local Vade = {}

function Vade:Load()
	local KeyWindow = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/src/UIs/Windows/KeyWindow.lua"))()
	
	KeyWindow:Init()
end

return Vade