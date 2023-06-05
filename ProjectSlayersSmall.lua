--// Unlock Fps \\--
setfpscap(200)

--// Anti Mod Report Remotes \\--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Blackout4781/Roblox-Scripts/main/efe"))()

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait

local window = library:CreateWindow({
    Name = "We Love Project Slayers",
    Themeable = {
        Info = {"https://discord.gg/ZuWpHTzr"},
        Credit = false, 
        Visible = true
    }
})


local GeneralTab = window:CreateTab({Name = "General"})
local MainSec = GeneralTab:CreateSection({Name = "Farming", Side = "Left"})
local SettingSection = GeneralTab:CreateSection({Name = "Settings", Side = "Right"})

--// Main Options \\--
MainSec:AddToggle({
    Name = "Spam Party Invites",
    Flag = "SpamPartyInvs",
    Keybind = false,
    Callback = function (v)
        PartyInv = v
    end
})

MainSec:AddToggle({
    Name = "Dream Tenticals (Trade hub Only)",
    Flag = "Spamtenticals",
    Keybind = false,
    Callback = function (v)
        DreamMove = v
    end
})

MainSec:AddToggle({
    Name = "Blood Mines (Trade Hub Only)",
    Flag = "SpamBloodMines",
    Keybind = false,
    Callback = function (v)
        BloodMines = v
    end
})

--// Code Below \\--



--// Spam Invites  \\--
spawn(function()
    while task.wait() do
        if PartyInv then
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer then
                    local args = {
                        [1] = "Invite_Player",
                        [2] = v,
                        [3] = "VeUPgUPw",
                        [4] = v
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                end
            end
        end
    end
end)

--// Spam DreamMove  \\--
spawn(function()
    while task.wait() do
        if DreamMove then
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer then
                    local args = {
                        [1] = "dream_melodic_thing_damage",
                        [2] = v.Character,
                        [3] = v.Character.HumanoidRootPart.CFrame
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))                    
                end
            end
        end
    end
end)

--// Spam BloodMines  \\--
spawn(function()
    while task.wait() do
        if BloodMines then
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer then
                    local args = {
                        [1] = "land_mines_place",
                        [2] = v.Character,
                        [3] = v.Character.HumanoidRootPart.CFrame
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))                                      
                end
            end
        end
    end
end)
