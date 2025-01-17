local Module = {}

--// Variables \\--

local Directory = _G.Vade.Directory

--// Main \\--

function Module.Init()
	local CurrentKey = readfile(FolderName .."//Key.txt")
	local VerifyCheck = Directory.KeyValidation.VerifyKey(CurrentKey)
	
	if CurrentKey ~= "nil" then
		if VerifyCheck == false then
			Directory.KeyWindow.Init()
		else
			Directory.MainWindow.Init()
		end
	else
		Directory.KeyWindow.Init()
	end
end

return Module