local Module = {}

-->> UI Lib <<--

Module.Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-->> Windows <<--

Module.KeyWindow = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/UIs/Windows/KeyWindow.lua"))()
Module.MainWindow = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/UIs/Windows/MainWindow.lua"))()

-->> Systems <<--

Module.CheckConfig = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/Systems/CheckConfig.lua"))()
Module.KeyValidation = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/Systems/KeyValidation.lua"))()
Module.LoadVade = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/Systems/KeyValidation.lua"))()
Module.Highlights = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/Systems/Highlights.lua"))()
Module.Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vloneurable999/Vade/refs/heads/main/Main/Systems/Notify.lua"))()

return Module