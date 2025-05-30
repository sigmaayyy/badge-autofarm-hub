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
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

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
   Name = "Get REDACTED",
   Callback = function()
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Nexer1234_AnotherAlt",
	Text = "Made by @nexer1234 ( youtube & discord )",
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
   Name = "Get Buddies [Might Not Work]",
   Callback = function()
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
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760928) then
repeat task.wait()
for i,v in ipairs(game.Players:GetPlayers()) do
if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("Head") and v.Character:FindFirstChildWhichIsA("Humanoid") and v.Character:FindFirstChild("LureMark") == nil and v.Character:FindFirstChild("DeathMark") == nil and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character.Humanoid.Health ~= 0 then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and not game.Players.LocalPlayer.leaderstats.Glove.Value == "Golden" then
game.Players.LocalPlayer.Reset:FireServer()
wait(5)
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
EquipGlove("Ghost")
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
task.wait(.2)
EquipGlove("Golden")
EnterPortal("Teleport1")
game:GetService("ReplicatedStorage").Goldify:FireServer(true)
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.leaderstats.Glove.Value == "Golden" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
task.wait(0.6)
game.ReplicatedStorage.GoldenHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"),true)
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
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760928)
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
   Name = "Get Glovel",
   Callback = function()
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
  
function ClickButton(button, size)
    textbutton = button
	size = size or UDim2.new(10000, 0, 10000, 0)
    task.wait()
    if textbutton and textbutton.ClassName == "TextButton" or textbutton.ClassName == "ImageButton" then
        textbutton.Size = size
        task.wait()
        repeat task.wait() until textbutton.Size == size
        task.wait()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
        task.wait(1)
    end
end
if game.Players.LocalPlayer.Quests.QuestsActive._questChainHitmansHandkerchief.Value == false then
ClickButton(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.HomePage.QuestButton.Button)
for i,v in ipairs(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.QuestsPage:GetChildren()) do
if v.Name == "NewQuestButton" and v:FindFirstChild("Button") and v.Button:FindFirstChild("Title") and v.Button.Title.Text == "A Hunt for the Hunter" then
v.Name = "skibidi"
end
end
repeat task.wait(.1) until game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.QuestsPage:FindFirstChild("skibidi")
ClickButton(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.QuestsPage.skibidi.Button)
ClickButton(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.QuestInfoPage.AcceptQuest, UDim2.new(10000, 0, -10000, 0))
workspace.BountyHunterRoom.BountyHunterBooth._configPart.LeaveRemote:FireServer()
end
EnterPortal("Teleport2")
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(43, -6, 92)
task.wait(.01)
game:GetService("ReplicatedStorage").DigEvent:FireServer({["index"] = 2,["cf"] = CFrame.new(43, -6, 92, 0, 2, -1, -6, 1, 4, 1, 7, 0)})
until game.Workspace:FindFirstChild("TreasureChestFolder") ~= nil and game.Workspace.TreasureChestFolder:FindFirstChild("TreasureChest") ~= nil
task.wait(1)
game.Workspace.TreasureChestFolder.TreasureChest.OpenRemote:FireServer()
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
task.wait(5)
workspace.BountyHunterRoom.BountyHunterBooth._activate:Fire()
ClickButton(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.HomePage.QuestButton.Button)
for i,v in ipairs(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.QuestsPage:GetChildren()) do
if v.Name == "NewQuestButton" and v:FindFirstChild("Button") and v.Button:FindFirstChild("Title") and v.Button.Title.Text == "A Hunt for the Hunter" then
v.Name = "skibidi"
end
end
ClickButton(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.QuestsPage.skibidi.Button)
ClickButton(game.Players.LocalPlayer.PlayerGui.QuestHunterComponent.QuestHunter.Element.Main.Main.Page.QuestInfoPage.AcceptQuest, UDim2.new(10000, 0, -10000, 0))
workspace.BountyHunterRoom.BountyHunterBooth._configPart.LeaveRemote:FireServer()
  
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

local CreditsTab = Window:CreateTab("Credits & Get Premium", 4483362458) -- Title, Image

local CreditsParagraph = CreditsTab:CreateParagraph({Title = "Premium", Content = "You are currently using the free version. Upgrade to premium to get more badges and autofarm slaps."})

local CreditsButton = CreditsTab:CreateButton({
   Name = "Join Discord (Check Clipboard)",
   Callback = function()
  local function setClipboardWithURL()
    setclipboard("https://discord.gg/PfbeUhppbc")
end
   end,
})

local BadgeButton = BadgeTab:CreateButton({
   Name = "Get Premium (Check Clipboard)",
   Callback = function()
   local function setClipboardWithURL()
    setclipboard("https://www.roblox.com/game-pass/1233739253/Premium")
end
   end,
})
