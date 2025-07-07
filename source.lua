
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local ArsenalPlaceId = 6403373529 
local StarterGui = game:GetService("StarterGui")

if game.PlaceId ~= ArsenalPlaceId then
    StarterGui:SetCore("SendNotification", {
        Title = "Wrong Game",
        Text = "This is the wrong game, but im booting it up anyway.",
        Duration = 5
    })
end

local Window = Rayfield:CreateWindow({
   Name = "Syntax Exploits | v7.5",
   Icon = nil, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading...",
   LoadingSubtitle = "Downloading assests...",
   Theme = "Amethyst",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = SlapBattles, -- Create a custom folder for your hub/game
      FileName = "slaphub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/PfbeUhppbc", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Syntax Exploits | Key System",
      Subtitle = "Epic Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/QwyupjGV"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local BadgeTab = Window:CreateTab("Badges", 4483362458) -- Title, Image

local BadgeSection = BadgeTab:CreateSection("Get Badges")

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Boxer",
   Callback = function()
print("Getting Boxer...")			
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Syntax",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Syntax",
	Text = "Please re-execute script after teleporting",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})


if game.PlaceId == 7234087065 then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4231.26123046875, 3510.86376953125, 270.4519958496094)
repeat task.wait(.1) until workspace:FindFirstChild("BoxingGloves")
task.wait(1)
fireclickdetector(workspace.BoxingGloves.ClickDetector)
  
elseif game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then
  
while task.wait() do game:GetService("TeleportService"):Teleport(7234087065) end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get RNG [Might Not Work]",
   Callback = function()
print("Getting RNG...")			
 if not game.IsLoaded then
game.Loaded:Wait()
end

function EquipGlove(glove, time)
    glove = glove or "Default"
    time = time or 0.4
    task.wait()
    repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("leaderstats") and game.Players.LocalPlayer.leaderstats:FindFirstChild("Glove")
    task.wait()
    if workspace.Lobby:FindFirstChild(glove) and workspace.Lobby[glove]:FindFirstChildWhichIsA("ClickDetector") then
        if fireclickdetector or fireclickdetector() then
            fireclickdetector(workspace.Lobby[glove].ClickDetector)
            repeat task.wait() until game.Players.LocalPlayer.leaderstats.Glove.Value == glove
            task.wait(time)
        end
    end
end
function EnterPortal(portal, time)
    portal = portal or "Teleport1"
    time = time or 0.8
    task.wait()
    repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") 
    task.wait()
    if workspace.Lobby:FindFirstChild(portal) and workspace.Lobby[portal]:FindFirstChildWhichIsA("Script") and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
        workspace.Lobby[portal].CanCollide = false
        old = workspace.Lobby[portal].CFrame
        workspace.Lobby[portal].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
        workspace.Lobby[portal].CFrame = old
        workspace.Lobby[portal].CanCollide = true
        task.wait(time)
    end
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Syntax",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})

if game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2130031244) then
repeat task.wait()
for i,v in ipairs(game.Players:GetPlayers()) do
if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("Head") and v.Character:FindFirstChildWhichIsA("Humanoid") and v.Character:FindFirstChild("LureMark") == nil and v.Character:FindFirstChild("DeathMark") == nil and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character.Humanoid.Health ~= 0 then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and not game.Players.LocalPlayer.leaderstats.Glove.Value == "Dice" then
game.Players.LocalPlayer.Reset:FireServer()
wait(5)
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
EquipGlove("Ghost")
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
task.wait(.2)
EquipGlove("Dice")
EnterPortal("Teleport1")
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.leaderstats.Glove.Value == "Dice" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
task.wait(0.6)
game.ReplicatedStorage.DiceHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"),true)
task.wait(0.4)
if game.Players.LocalPlayer.Character.Ragdolled.Value == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
repeat
task.wait()
until game.Players.LocalPlayer.Character.Ragdolled.Value == false
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
end
until v and v.Character and v.Character:FindFirstChildWhichIsA("Humanoid") and v.Character.Humanoid.Health == 0
end
end
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2130031244)
end
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get REDACTED (5K slaps)",
   Callback = function()
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Syntax",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})
  
if game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then

if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
doors = 1
for i = 1, 9 do
Old = game.Workspace.PocketDimension.Doors[doors].CFrame
task.wait()
game.Workspace.PocketDimension.Doors[doors].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
task.wait()
game.Workspace.PocketDimension.Doors[doors].CFrame = Old
task.wait(4)
doors = doors + 1
end
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Syntax",
	Text = "You don't have enough slaps",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Syntax",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Iceskate",
   Callback = function()
print("Getting IceSkate...")			
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Syntax",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
    Icon = nil,
	Duration = 36000,
        Button1 = "Ok"
})

if game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then
  
game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
  
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Lamp",
   Callback = function()
print ("Getting Lamp... Make sure you have zzzzzzzzzzzz equipped!")			
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Ninja",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})
  
if game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then

fireclickdetector(workspace.Lobby.ZZZZZZZ.ClickDetector)

task.wait(1)

if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" then

local time = tick()
while tick() - time < 10 do
game:GetService("ReplicatedStorage").nightmare:FireServer("LightBroken")
task.wait()
end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Just equip zzzzzzzzzzzz dawg 😭",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
  
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "🧊Get Frostbite🧊",
   Callback = function()
print("Getting Frostbite")			
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Syntax",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Syntax",
	Text = "Please re-execute script after teleporting",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})


if game.PlaceId == 17290438723 then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-555, 180, 55)
wait(1)
for i,v in ipairs(workspace:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
if v.HoldDuration ~= 0 then
v.HoldDuration = 0
end
if v.RequiresLineOfSight ~= false then
v.RequiresLineOfSight = false
end
if v.MaxActivationDistance ~= 9e9 then
v.MaxActivationDistance = 9e9
end
v.Enabled = true
fireproximityprompt(v)
end
end
  
elseif game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then
  
while task.wait() do game:GetService("TeleportService"):Teleport(17290438723) end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end

 
        end




    })

local BadgeButton = BadgeTab:CreateButton({
   Name = "The Hunter's Quest: Get Avatar & Relude",
   Callback = function()
   if not game.IsLoaded then
game.Loaded:Wait()
end



function Checkamogus()
DontGetAvatar = false
repeat task.wait() until DontGetAvatar ~= nil

if DontGetAvatar == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -65, 824)
if not game.IsLoaded then
game.Loaded:Wait()
end
wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["the cube of life"].Part.CFrame
if not game.IsLoaded then
game.Loaded:Wait()
end
wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Big Heart"].CFrame
if not game.IsLoaded then
game.Loaded:Wait()
end
wait(5)
end

end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Ninja",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Please re-execute script after teleporting",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})


if game.PlaceId == 18550498098 then

Checkamogus()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -62, 824)
if not game.IsLoaded then
game.Loaded:Wait()
end
wait(5)
for i,v in pairs(workspace:GetDescendants()) do
if v.Name == "ShackLever" and v:FindFirstChildWhichIsA("ClickDetector") then
fireclickdetector(v:FindFirstChildWhichIsA("ClickDetector"))
end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -62, 824)
if not game.IsLoaded then
game.Loaded:Wait()
end
repeat task.wait(.1) until workspace.Map.Components:FindFirstChild("GuideNPC")
task.wait(.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(599, 250, -322)
task.wait(.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

while task.wait(.1) do
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack.Lantern.Parent = game.Players.LocalPlayer.Character
end
game:GetService("ReplicatedStorage").Remotes.Data.AnswerInCutscene:FireServer("Spare")

for i,v in pairs(workspace:GetChildren()) do

if v.Name == "PusherWall" then
v.CanCollide = false
end

if v.Name == "DungeonGolem" and v:FindFirstChild("Cube.001") then
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game.Players.LocalPlayer.Character.Lantern:Activate()
game.Players.LocalPlayer.Character.Lantern.Network:FireServer("Hit", v["Cube.001"])
end
end

if v.Name == "golem" and v:FindFirstChild("Hitbox") then
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game.Players.LocalPlayer.Character.Lantern:Activate()
game.Players.LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.Hitbox)
end
end

if v.Name == "ReplicaNPC" and v:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game.Players.LocalPlayer.Character.Lantern:Activate()
game.Players.LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
end
end

if v.Name == "GuideNPC" and v:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game.Players.LocalPlayer.Character.Lantern:Activate()
game.Players.LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
end
end

if v.Name == "TrackGloveMissile" then
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game.Players.LocalPlayer.Character.Lantern:Activate()
game.Players.LocalPlayer.Character.Lantern.Network:FireServer("Hit", v)
end
end

end
end

  
elseif game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then

Instance.new("Message",game.CoreGui).Text = "You're being teleported, please wait, it may take up to a minute..."

for i,v in pairs(workspace.BountyHunterRoom:GetChildren()) do
if v and v:IsA('Model') and v:FindFirstChild('Meshes/boxshadow_Cube.005') then
if v["Meshes/boxshadow_Cube.005"].PlayerCounter.SurfaceGui.TextLabel.Text == "0/4 Hunters" then
if v["Meshes/boxshadow_Cube.005"].Counter.SurfaceGui.TextLabel.Text ~= "1" then
repeat task.wait(.1) until v["Meshes/boxshadow_Cube.005"].Counter.SurfaceGui.TextLabel.Text == "1"
end
while task.wait() do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["Meshes/boxshadow_Cube.005"].Hitbox.CFrame end
else
repeat task.wait(.1) until v["Meshes/boxshadow_Cube.005"].PlayerCounter.SurfaceGui.TextLabel.Text == "0/4 Hunters"
if v["Meshes/boxshadow_Cube.005"].Counter.SurfaceGui.TextLabel.Text ~= "1" then
repeat task.wait(.1) until v["Meshes/boxshadow_Cube.005"].Counter.SurfaceGui.TextLabel.Text == "1"
end
while task.wait() do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["Meshes/boxshadow_Cube.005"].Hitbox.CFrame end
end
end
end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Metaverse",
   Callback = function()
   if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Syntax",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Syntax",
	Text = "Please re-execute script after teleporting",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})



if game.PlaceId == 136005148166028 then

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Syntax",
	Text = "Please don't move and don't touch anything!",
    Icon = x,
	Duration = 36000,
	Button1 = "All i want is my badge 😭"
})

local Platform = (game.UserInputService.TouchEnabled and not game.UserInputService.MouseEnabled) and "Mobile" or "PC"
fireclickdetector(workspace.Kitchen.Fridge.HitBox.ClickDetector)
task.wait(1)
fireclickdetector(workspace.Kitchen.Fridge.GrantAward.ClickDetector)
task.wait(1)
fireclickdetector(workspace.Microwave.HitBox.ClickDetector)
task.wait(10)
fireclickdetector(workspace.Microwave.HitBox.ClickDetector)
task.wait(1)
fireclickdetector(workspace.Microwave.Brewzucki.ClickDetector)
task.wait()
repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("Brewzucki")
task.wait()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Brewzucki") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Brewzucki"])
task.wait(1)
game.Players.LocalPlayer.Character["Brewzucki"]:Activate()
task.wait(2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Brewzucki") then
game.Players.LocalPlayer.Backpack["Brewzucki"]:Destroy()
else
game.Players.LocalPlayer.Character["Brewzucki"]:Destroy()
end
else
game.Players.LocalPlayer.Character["Brewzucki"]:Activate()
task.wait(2)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Brewzucki") then
game.Players.LocalPlayer.Backpack["Brewzucki"]:Destroy()
else
game.Players.LocalPlayer.Character["Brewzucki"]:Destroy()
end
end
task.wait(5)
fireclickdetector(workspace.BasementTable.HitBox.ClickDetector)
task.wait(15)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.ComputerChair.Seat.CFrame
task.wait(5)
local start = tick()
while tick() - start < 30 do  
for i,v in pairs(game.Players.LocalPlayer.PlayerGui.RealComputerScreenGui.ComputerScreen.SuggestionsQTE:GetChildren()) do
if v and v.Name:find("Popup_") then
v.Position = game.Players.LocalPlayer.PlayerGui.RealComputerScreenGui.ComputerScreen.SuggestionsQTE.RecyclingBin.Position
end
end
task.wait()
end
task.wait(2)
game:GetService("ReplicatedStorage").Remotes.ComputerState:FireServer("Victory")
task.wait(.25)
game:GetService("ReplicatedStorage").Remotes.ComputerState:Destroy()
game.Players.LocalPlayer.PlayerGui.RealComputerScreenGui.Enabled = false
game.Players.LocalPlayer.Character.Humanoid.Sit = false
task.wait(1.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14,37,49)
task.wait(2)
repeat task.wait()
if Platform == "Mobile" then
if game.Players.LocalPlayer.PlayerGui.DavidShrineQTE.DavidShrineQTE.Mobile.SpawnArea:FindFirstChild("TapLabel") then
game.Players.LocalPlayer.PlayerGui.DavidShrineQTE.DavidShrineQTE.Mobile.SpawnArea.TapLabel.Size = UDim2.new(10000, 0, 10000, 0)
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):ClickButton1(Vector2.new())
end
elseif Platform == "PC" then
if game.Players.LocalPlayer.PlayerGui.DavidShrineQTE.DavidShrineQTE.PC.QuickTimeLabel.Visible == true then
game:GetService("VirtualInputManager"):SendKeyEvent(true, game.Players.LocalPlayer.PlayerGui.DavidShrineQTE.DavidShrineQTE.PC.QuickTimeLabel.Text, false, game:GetService("VirtualInputManager"))
end
end
until game.Players.LocalPlayer.PlayerGui.DavidShrineQTE.DavidShrineQTE.ScoreLabel.Text == "Score: 150"

elseif game.PlaceId == 7234087065 then


repeat task.wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250, 95, -62830) until workspace.Buildings:FindFirstChild("wizard twoer 2")
task.wait(1.5)
while task.wait() do
for i,v in pairs(workspace.Buildings["wizard twoer 2"]:GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("Trigger") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Trigger").CFrame
end
end
end
  
elseif game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then
  
while task.wait() do game:GetService("TeleportService"):Teleport(7234087065) end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = ban,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Spoonful",
   Callback = function()
  if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Syntax",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
    Icon = nil,
	Duration = 36000,
        Button1 = "Ok"
})

if game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then
  
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Tycoon" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17892.921875, -23.757728576660156, -3525.60986328125)
wait(1)
local args = {
    [1] = CFrame.new(17892.921875, -26.257728576660156, -3535.60986328125) * CFrame.Angles(-3.424421279873968e-08, 2.6262986672020115e-14, -9.837128089884573e-08)
}
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
wait(2)
repeat task.wait()
fireclickdetector(workspace["ÅTycoon"..game.Players.LocalPlayer.Name].Click.ClickDetector)
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2236076719770808)
end
  
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Syntax",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})

local CreditsTab = Window:CreateTab("Credits & Get Premium", 4483362458) -- Title, Image

local CreditsParagraph = CreditsTab:CreateParagraph({Title = "Premium", Content = "You are currently using the free version. Upgrade to premium to get more badges and autofarm slaps."})

local CreditsButton = CreditsTab:CreateButton({
   Name = "Join Discord (Check Clipboard)",
   Callback = function()
  setclipboard("https://discord.gg/PfbeUhppbc")
   end,
})
    local CreditsParagraph = CreditsTab:CreateParagraph({Title = "Premium", Content = "There are hidden gloves you cannot get because you are do not own Premium."})

local CreditsButton = CreditsTab:CreateButton({
   Name = "Get Short-Time key (Check Clipboard)",
   Callback = function()
setclipboard("https://www.roblox.com/game-pass/1233739253/Premium")
   end,
})

local CreditsButton = CreditsTab:CreateButton({
   Name = "Check Out Our Website! (Check Clipboard)",
   Callback = function()
   setclipboard("https://website-plum-phi-26.vercel.app")
   end,
})

 local CreditsParagraph = CreditsTab:CreateParagraph({Title = "Website", Content = "Our website is labeled as 'Dangerous' even though it isn't. Just watch out for that guys."})
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local userId = game.Players.LocalPlayer.UserId
local whitelistedIds = {
    [5280006608] = true,
    [8786966932] = true,
    [3367685856] = true,
    [8296140670] = true
}

if whitelistedIds[userId] then
   Rayfield:Notify({
   Title = "Whitelisted",
   Content = "You have premium! Enjoy premium features.",
   Duration = 6.5,
   Image = 4483362458,
})
    local BadgeButton = BadgeTab:CreateButton({
Name = "Get Fish [PREMIUM]",
Callback = function()
print("Getting Fish... Use in lobby!")        
if not game.IsLoaded then
game.Loaded:Wait()
end

if workspace:FindFirstChild("Baseplate") == nil then

local S = Instance.new("Part")

S.Name = "Baseplate"

S.Anchored = true

S.CanCollide = true

S.Transparency = 0

S.Position = Vector3.new(-10000, -10000, -10000)

S.Size = Vector3.new(1000, 10, 1000)

S.Parent = workspace

end

function EquipGlove(glove, time)
    glove = glove or "Default"
    time = time or 0.4
    task.wait()
    repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("leaderstats") and game.Players.LocalPlayer.leaderstats:FindFirstChild("Glove")   task.wait()

    if workspace.Lobby:FindFirstChild(glove) and workspace.Lobby[glove]:FindFirstChildWhichIsA("ClickDetector") then

        if fireclickdetector or fireclickdetector() then

            fireclickdetector(workspace.Lobby[glove].ClickDetector)

            repeat task.wait() until game.Players.LocalPlayer.leaderstats.Glove.Value == glove

            task.wait(time)

        end

    end

end

function EnterPortal(portal, time)

    portal = portal or "Teleport1"

    time = time or 0.8

    task.wait()

    repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") 

    task.wait()

    if workspace.Lobby:FindFirstChild(portal) and workspace.Lobby[portal]:FindFirstChildWhichIsA("Script") and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then

        workspace.Lobby[portal].CanCollide = false

        old = workspace.Lobby[portal].CFrame

        workspace.Lobby[portal].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")

        workspace.Lobby[portal].CFrame = old

        workspace.Lobby[portal].CanCollide = true

        task.wait(time)

    end

end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Ninja",
	Text = "Made by @NinjaKid-k5q ( youtube & discord )",
        Icon = leaf,
	Duration = 36000,
	Button1 = "Thanks!"
})

if game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then

if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Use in lobby",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
else

EquipGlove("ZZZZZZZ")
EnterPortal("Teleport1")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame * CFrame.new(0,10,0)
task.wait(1)
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
if getconnections then
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
v:Disable() 
end
end

end 
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = ban,
	Duration = 36000,
	Button1 = "Oh..."
})
        end

                
            end
   
        })
    

    local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Bind [PREMIUM]",
   Callback = function()
    print("Getting Bind... Thanks for buying premium! Make sure to re-execute after teleporting.")            
   if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Ninja",
	Text = "Made & developed by @NinjaKid-k5q ( youtube & discord )",
        Icon = nil,
	Duration = 36000,
	Button1 = "Thanks!"
})

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Please re-execute script after teleporting",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})


if game.PlaceId == 74169485398268 then

local time = tick()
while tick() - time < 10 do task.wait() fireclickdetector(workspace.Orb:FindFirstChildWhichIsA("ClickDetector")) end
while task.wait() do game:GetService("TeleportService"):Teleport(6403373529) end

elseif game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 or game.PlaceId == 124596094333302 then
  
while task.wait() do game:GetService("TeleportService"):Teleport(74169485398268) end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Ninja",
	Text = "Wrong game buddy",
    Icon = nil,
	Duration = 36000,
	Button1 = "Oh..."
})
end
   end,
})
	local BadgeButton = BadgeTab:CreateButton({
   Name = "Get All Badges (Check Inventory)",
   Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/refs/heads/main/InstantGloves"))()
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Getting Car Keys",
   Callback = function()
   print("Getting Car Keys, its instant so js sit n' wait for the glove")
   loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/refs/heads/main/InstantCarKeys"))()
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Bob [FIXED]",
   Callback = function()
if not game:IsLoaded() then
     game.Loaded:Wait()
end
if  game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
     game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Nice!",Text = "Congratulations, you got bob ;)" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
     fireclickdetector(game:GetService("Workspace").Lobby.bob.ClickDetector)
     return 
end

fireclickdetector(workspace.Lobby["God's Hand"].ClickDetector)
task.wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
wait(1)
game:GetService("ReplicatedStorage").TimestopJump:FireServer()
game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
game:GetService("ReplicatedStorage").Timestop:FireServer()
game.Players.LocalPlayer.Character.Humanoid.Health = 0

task.wait(8)
fireclickdetector(game:GetService("Workspace").Lobby.Replica.ClickDetector)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
task.wait(1)
for i = 1, 75000 do
        game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
end
wait(2)
--[[ This script isn't mine but idk how to create one so i use this instead ]]-- 
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local S_T = game:GetService("TeleportService")
local S_H = game:GetService("HttpService")
local Players = game:GetService("Players")

local File = pcall(function()
    AllIDs = S_H:JSONDecode(readfile("server-hop-temp.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    pcall(function()
        writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
    end)
end

local function TPReturner(placeId)
    local Site
    if foundAnything == "" then
        Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end

    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end

    local num = 0
    local foundServer = false 

    for i, v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _, Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("server-hop-temp.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                foundServer = true
                wait()
                pcall(function()
                    writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
                    wait()
                    S_T:TeleportToPlaceInstance(placeId, ID, Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end

    -- if not found server
    if not foundServer then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end

local module = {}
function module:Teleport(placeId)
    while wait() do
        pcall(function()
            TPReturner(placeId)
            if foundAnything ~= "" then
                TPReturner(placeId)
            end
        end)
    end
end


module:Teleport(game.PlaceId)
   end,
})
    local BadgeButton = BadgeTab:CreateButton({
   Name = "Load Mastery GUI [PREMIUM]",
   Callback = function()
    print("This Mastery GUI wasn't made by me. This was made by Nexer and some of the badges of this script were made by Nexer.")
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/MasteryFarmGui/Source.luau"))()
   end,
})
else
    Rayfield:Notify({
   Title = "Free Version",
   Content = "You are not whitelisted. Upgrade to premium for more features!",
   Duration = 6.5,
   Image = 4483362458,
})
end
