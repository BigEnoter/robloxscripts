local item = "Mindgrapes" --Change to Mindgrapes, Carrot, Watermelon or Tom's Beans
game:GetService("Workspace")["MAP & SCHOOL"]["Robloxian Highschool"].Interior["School_INTERIOR_ROOMS"].CookingClass["CookingClass_Objects & Decorations"].Fridge.RequestItem:InvokeServer(item)



local item = "Math Notebook" --Change to Math Notebook or Calculator
game:GetService("ReplicatedStorage").Systems.Shop.DoItemAction:InvokeServer(item)



local role = "Student" --Change to any role you want to switch to
game:GetService("ReplicatedStorage").Systems.Edit.ChangeRole:InvokeServer(role)




local item = "Microscope"
local location = game:GetService("Workspace")[game.Players.LocalPlayer.Name][item.Name]
game:GetService("ReplicatedStorage").Systems.PropPlacement.AddPropHandle:InvokeServer(item, location)



