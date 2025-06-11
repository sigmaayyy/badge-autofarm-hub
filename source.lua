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
   Name = "Badge | Autofarm Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading...",
   LoadingSubtitle = "Downloading assests from folder  'slaphub' ",
  Background = Color3.fromRGB(5, 110, 247),

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
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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
	Title = "Credits to Ninja",
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
	Title = "Credits to NinjaKid-k5q",
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
	Title = "Message from Ninja",
	Text = "You don't have enough slaps",
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
   Name = "Get Iceskate",
   Callback = function()
print("Getting IceSkate...")			
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Ninja Scripts",
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
print ("Getting Lamp... Make sure you have zzz equipped!")			
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

local CreditsTab = Window:CreateTab("Credits & Get Premium", 4483362458) -- Title, Image

local CreditsParagraph = CreditsTab:CreateParagraph({Title = "Premium", Content = "You are currently using the free version. Upgrade to premium to get more badges and autofarm slaps."})

local CreditsButton = CreditsTab:CreateButton({
   Name = "Join Discord (Check Clipboard)",
   Callback = function()
  setclipboard("https://discord.gg/PfbeUhppbc")
   end,
})
    local CreditsParagraph = CreditsTab:CreateParagraph({Title = "Premium", Content = "There are hidden gloves you cannot get because you are lacking Premium."})

local CreditsButton = CreditsTab:CreateButton({
   Name = "Get Premium (Check Clipboard)",
   Callback = function()
setclipboard("https://www.roblox.com/game-pass/1233739253/Premium")
   end,
})

local userId = game.Players.LocalPlayer.UserId
local whitelistedIds = {
    [5280006608] = true,
    [8635080760] = true,
    [3367685856] = true,
    [8296140670] = true
}

if whitelistedIds[userId] then
    print("Whitelisted user!")
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
        Icon = nil,
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
    Icon = nil,
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
   Name = "Launch Premium GUI [Check Console For Token]",
   Callback = function()
	print("Your token is: TOKEN_9932049932406") 			
   loadstring(game:HttpGet("https://raw.githubusercontent.com/sigmaayyy/badge-hub-premium/refs/heads/main/premium.lua"))()
				Rayfield:Destroy()
   end,
})
else
    print("Not whitelisted.")
end
