warn("----------------------------------------------------------------")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
print("Thanks to Psykek#3180 for the functions")
warn("----------------------------------------------------------------")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
print("Edited by Meow Leaf#4391")
warn("----------------------------------------------------------------")

local l = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix",true))()
l.options.underlinecolor = "rainbow"

local p = game.Players.LocalPlayer
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Weapon1"))

function CreateESPPart(BodyPart,color)
	local ESPPartparent = BodyPart
	local Box = Instance.new("BoxHandleAdornment")
	Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
	Box.Name = "ESPPart"
	Box.Adornee = ESPPartparent
	Box.Color3 = color
	Box.AlwaysOnTop = true
	Box.ZIndex = 5
	Box.Transparency = 0.8
	Box.Parent = BodyPart
end







--Tab Creation
local Gun = l:CreateWindow("Gun")
local Zombie = l:CreateWindow("Zombie")
local Player = l:CreateWindow("Player")
local Perks = l:CreateWindow("Perks")
local Teleports = l:CreateWindow("Teleports")
local Misc = l:CreateWindow("Misc")




--Gun Tab
local NoRecoil = Gun:Button("No Recoil", function()
	m.Spread = {Min = 0, Max = 0}
	m.ViewKick = {
Pitch = {Min = 0, Max = 0},
Yaw = {Min = 0, Max = 0}
}
end)

local InfiniteAmmo = Gun:Button("Infinite Ammo", function()
	m.StoredAmmo = math.huge
	m.MagSize = math.huge
		for _,v in pairs(debug.getregistry()) do
   if typeof(v) == "table" then
       if v.Ammo then
           v.Ammo = math.huge
       end
   end
	   end
end)

local MaxDamage = Gun:Button("Max Damage", function()
	m.Damage = {Max = 1500000, Min = 10000}
	m.BulletPenetration = 1500
end)

local RapidFire = Gun:Button("Rapid Fire", function()
	m.Semi = false
	m.FireTime = 0
end)





--Zombie Tab

local ZombieESP = Zombie:Button("Zombie ESP", function()
local zombs = workspace.Baddies:getChildren()
for i=1,#zombs do
local bodypart = zombs[i]:getChildren()
for i=1,#bodypart do
if bodypart[i].ClassName == "Part" then
CreateESPPart(bodypart[i], Color3.fromRGB(0,255,0))
end
end
end
game.Workspace.Baddies.ChildAdded:Connect(function(zomb)
wait(1)
local bodypart = zomb:getChildren()
for i=1,#bodypart do
if bodypart[i].ClassName == "Part" then
CreateESPPart(bodypart[i], Color3.fromRGB(0,255,0))
end
end
end)
end)

local TPZombieHeads = Zombie:Button("TP Zombie Heads", function()
		local pos = 0,0,0

local zomb = workspace.Baddies:GetChildren()
for i=1,#zomb do
    zomb[i].HeadBox.Transparency = 0
    zomb[i].HeadBox.Material = "Neon"
    zomb[i].HeadBox.CanCollide = false
    zomb[i].HeadBox.Anchored = true
    zomb[i].HeadBox.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(pos)
end
ConsoleLabel.Text = "Brought all zombie heads"
ConsoleInfoLabel.Text = "They will be glowing a neon color"
end)






--Player Tab

local WalkSpeed = Player:Button("WalkSpeed", {flag = "WalkSpeed"})
local JumpPower = Player:Button("JumpPower", {flag = "JumpPower"})





--Perks Tab

local Jug = Perks:Button("Juggernog", function()
		local Jugg = game.Workspace.Interact:FindFirstChild 'Juggernog'['Activate']	
		local JuggArguments = {}	
		Jugg:FireServer(unpack(JugArguments))
end)

local QR = Perks:Button("Quick Revive", function()
		local Quickie = game.Workspace.Interact:FindFirstChild 'Quick Revive'['Activate']
		local QuArguments = {}
		Quickie:FireServer(unpack(QuArguments))
end)

local SC = Perks:Button("Speed Cola", function()
		local Speedc = game.Workspace.Interact:FindFirstChild 'Speed Cola'['Activate']
		local SpArguments = {}
		Speedc:FireServer(unpack(SpArguments))
end)

local DT = Perks:Button("Double Tap", function()
		local Dtap = game.Workspace.Interact:FindFirstChild 'Double Tap Root Beer'['Activate']
		local DtArguments = {}
		Dtap:FireServer(unpack(DtArguments))
end)

local MK = Perks:Button("Mule Kick", function()
		local Mulek = game.Workspace.Interact:FindFirstChild 'Mule Kick'['Activate']
		local MuArguments = {}
		Mulek:FireServer(unpack(MuArguments))
end)





--Teleports Tab

local Spawn = Teleports:Button("Spawn", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-16.4724731, 3.20000005, -18.6810131))
end)

local Library = Teleports:Button("Library", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-66.9610825, 20.1990089, 2.16642976))
end)

local Bathroom = Teleports:Button("Bathroom", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(63.4641228, 20.2000504, 78.6364136))
end)

local Lobby = Teleports:Button("Lobby", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-10.6820145, -494.5, -2.53165269))
end)

local PowerRoom = Teleports:Button("PowerRoom", function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3.92677093, 20.1999989, 91.4792633))
end)






--Misc Tab

local TurnPowerOn = Misc:Button("Turn Power On", function()
	game.Workspace.Interact.PowerSwitch.Activate:FireServer(workspace[p.Name].Interact.OnKeyUp, 14)
end)





--Flag Functions

spawn(function()
	while wait() do
	if Player.flags.WalkSpeed then
		game.Workspace[p.Name].Humanoid.WalkSpeed = 100
	else
		game.Workspace[p.Name].Humanoid.WalkSpeed = 16
	end
end
end)

spawn(function()
	while wait() do
	if Player.flags.JumpPower then
		game.Workspace[p.Name].Humanoid.JumpPower = 200
	else
		game.Workspace[p.Name].Humanoid.JumpPower = 50
	end
end
end)
