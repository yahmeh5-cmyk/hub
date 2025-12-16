-- [[ YUTO HUB - MASTER LOADER ]] --

-- Notificação de início
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "YUTO Hub",
	Text = "Carregando todos os scripts...",
	Duration = 5
})

-- 1. Carrega o HttpSpy (Ferramentas de Dev)
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahmeh5-cmyk/hub/main/https%20spy"))()
    end)
end)

-- 2. Carrega a Library WindUI (Necessária para interfaces)
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahmeh5-cmyk/hub/main/WindUIfixed.lua"))()
    end)
end)

task.wait(1) -- Espera um pouco para não travar

-- 3. Carrega o Script de Rebirth Champion
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahmeh5-cmyk/hub/main/REBIRTH%20CHAMPION.lua"))()
    end)
end)

-- 4. Carrega a GUI Principal (Lembre-se de ter removido a Key no arquivo original)
task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yahmeh5-cmyk/hub/main/GUI.lua"))()
    end)
end)

-- Notificação de fim
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "YUTO Hub",
	Text = "Todos os scripts carregados!",
	Duration = 5
})
