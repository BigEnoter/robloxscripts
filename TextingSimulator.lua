local h = Instance.new("Message")
h.Parent = Workspace
h.Text = "Script provided by MysticD3AD"
wait(6)
h:Remove()

print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")
print("To use the autofarm press b to start and then press b again to stop it!")
warn("To use the autofarm press b to start and then press b again to stop it!")



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local looping = false
mouse.KeyDown:connect(function(key)

if key:lower() == "b" or key:upper() == "B" then
print("bool inverted")
looping = not looping
if(looping) then
print("going into while loop")
while looping do wait(0.001)
if(looping == false) then
print("while loop broken")
break
end
print("ReplicatedStorage event fired")
game:GetService('ReplicatedStorage').Events.SendTexts:FireServer("Phone")
end
end
end
end)
