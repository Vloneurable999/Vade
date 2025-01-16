local Module = {}

--// Variables \\--

local Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/src/Systems/Notify.lua"))()
local CachedLink = ""
local CachedTime = 0
local Service = 1202

--// Functions \\--

Module.CacheLink = function()
	if CachedTime + (10 * 60) < os.time() then
		local Response = FunctionsLib.GetRequest({
			Url = Host .. "/public/start",
			Method = "POST",

			Body = Encode({
				service = Service,
				identifier = Digest(FunctionsLib.GetHWID())
			}),

			Headers = {
				["Content-Type"] = "application/json"
			}
		})

		if Response.StatusCode == 200 then
			local Decoded = Decode(Response.Body)

			if Decoded.success == true then
				CachedLink = Decoded.data.url
				CachedTime = os.time()
				return true, CachedLink
			else
				return false, Decoded.message
			end
		elseif Response.StatusCode == 429 then
			local Message = "you are being rate limited, please wait 20 seconds and try again."

			Notify("Slow Down!", Message)
			return false, Message
		end
	else
		return true, CachedLink
	end
end

Module.CopyLink = function()
	local Success, Link = Module.CacheLink()

	if Success then
		FunctionsLib.SetClipboard(Link)
		Notify("Success", "Set the key url to your clipboard, paste it into your browser to get the key.", 6.5)
	else
		Notify("Error", "Error getting the key link. Report this in the discord server.", 6.5)
	end
end

return Module