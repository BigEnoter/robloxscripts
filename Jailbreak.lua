loadstring(game:GetObjects("rbxassetid://3473939051")[1].Source)()

loadstring(game:HttpGet('https://pastebin.com/raw/tzTXmYf2'),true)()

local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()

local newPart = Instance.new("Part")
local newWeld = Instance.new("Weld")
hum = char:FindFirstChild("HumanoidRootPart")
newPart.Parent = workspace
newWeld.Parent = newPart
newPart.Position = Vector3.new(hum.Position)
newWeld.Part0 = hum
newWeld.Part1 = newPart
newPart.Name = "Bypassed"
hum.Name = "BypassedHum"
newPart.Transparency = 1
newPart.CanCollide = true
local humanoid = char:FindFirstChild("Humanoid")
humanoid.HipHeight = humanoid.HipHeight + 1.25
warn("Made by Hamii#4902, loaded bypass")

mouse.KeyDown:connect(function(key)
if key == "q" then
hum.CFrame = CFrame.new(mouse.Hit.p)
end
end)

function unlock(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
v.Locked = false
end
unlock(v)
end
end
unlock(workspace)