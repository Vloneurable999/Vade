local Module = {}

--// Variables \\--

local FolderName = "Vade"

--// Main \\--

function Module.CheckCurrentKey()	
	if isfolder(FolderName) then
		if isfile(FolderName .."//Key.txt") then

		else
			writefile(FolderName .."//Key.txt", "nil")
		end
	else
		makefolder(FolderName)
		writefile(FolderName .."//Key.txt", "nil")
	end
end

return Module