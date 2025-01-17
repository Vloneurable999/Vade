local Module = {}

--// Variables \\--

local Directory = _G.Vade.Directory

--// Main \\--

function Module.LoadVade()
	local CurrentKey = readfile(FolderName .."//Key.txt")
	local VerifyCheck = VerifyKey(CurrentKey)
	
	if CurrentKey ~= "nil" then
		if VerifyCheck == false then
			Directory.KeyWindow.Init()
		else
			Directory.MainWindow.Init()
	end
end

return Module