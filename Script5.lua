local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/hieuhieu743/CFAHub/main/main.lua"))()
local window = lib:NewWindow("CFA Hub [FREE] - Chill Game by hieuhieu743")

local Main = window:NewTab("Main")
local troll = window:NewTab("Trolling")

local humanoid = Main:NewSection("Humanoid")

humanoid:NewSilder("Speed", 0, 150, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

local section = troll:NewSection("Admin Command")

section:NewButton("Kick All", function()
    for _, v in pairs(game.Players:GetPlayers()) do
        if v:IsA("Player") then
            if v.Name == player.Name then

            else
                v:Kick("You have been kicked!")
            end
        end
    end
end)