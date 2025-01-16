local Vade = {}

function Vade:LoadScriptFromURL(URL)
	local success, scriptContent = pcall(game.HttpGet, game, URL)
	
	if not success then
		warn("Failed to fetch script: " .. tostring(scriptContent))
		return
	end
	
	local func, err = loadstring(scriptContent)
	
	if not func then
		print("Game not supported")
		return
	end
	
	success, result = pcall(func)
end

function Vade:Load()
	--local KeyWindow = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/src/UIs/Windows/KeyWindow.lua"))()
	local KeyWindow = Vade:LoadScriptFromURL("https://github.com/Vloneurable999/Vade/blob/main/src/UIs/Windows.KeyWindow.lua")
	
	KeyWindow.Init()
end

return Vade