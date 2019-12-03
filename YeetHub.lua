local h = Instance.new("Message")
h.Parent = Workspace
h.Text = "Script provided by MysticD3AD"
wait(6)
h:Remove()

local YeetHubv1 = Instance.new("ScreenGui")
local Open = Instance.new("ScreenGui")
local OpenGui = Instance.new("TextButton")
local YeetHub = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local label1 = Instance.new("TextLabel")
local games = Instance.new("TextButton")
local admin = Instance.new("TextButton")
local fe = Instance.new("TextButton")
local troll = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local AdminScripts = Instance.new("Frame")
local iy = Instance.new("TextButton")
local Close_2 = Instance.new("TextButton")
local Top_2 = Instance.new("Frame")
local label1_2 = Instance.new("TextLabel")
local GameScripts = Instance.new("Frame")
local jb = Instance.new("TextButton")
local lt2 = Instance.new("TextButton")
local Close_3 = Instance.new("TextButton")
local Top_3 = Instance.new("Frame")
local label1_3 = Instance.new("TextLabel")
local nlg = Instance.new("TextButton")
local mcg = Instance.new("TextButton")
local Loader = Instance.new("ScreenGui")
local Main_2 = Instance.new("Frame")
local Yeet = Instance.new("TextLabel")
local Hub = Instance.new("TextLabel")

--Boolean Values (Custom Added)
local Loaded = Instance.new("BoolValue")
local Opened = Instance.new("BoolValue")
local Opened_2 = Instance.new("BoolValue")

Loaded.Name = "Loaded"
Loaded.Parent = YeetHub
Loaded.Value = false

Opened.Name = "Opened"
Opened.Parent = GameScripts
Opened.Value = false

Opened_2.Name = "Opened"
Opened_2.Parent = AdminScripts
Opened_2.Value = false


YeetHubv1.Name = "YeetHub v1"
YeetHubv1.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
YeetHubv1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Open.Name = "Open"
Open.Parent = YeetHubv1
Open.Enabled = false
Open.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Open.ResetOnSpawn = false

OpenGui.Name = "OpenGui"
OpenGui.Parent = Open
OpenGui.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
OpenGui.BorderColor3 = Color3.new(1, 1, 1)
OpenGui.Position = UDim2.new(0.471042424, 0, 0.963486433, 0)
OpenGui.Size = UDim2.new(0, 150, 0, 31)
OpenGui.Font = Enum.Font.Gotham
OpenGui.Text = "Open Hub"
OpenGui.TextColor3 = Color3.new(1, 1, 1)
OpenGui.TextSize = 14

YeetHub.Name = "Yeet Hub"
YeetHub.Parent = YeetHubv1
YeetHub.Enabled = false
YeetHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = YeetHub
Main.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.32432431, 0, 0.297117531, 0)
Main.Size = UDim2.new(0, 546, 0, 364)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.new(0.784314, 0, 1)
Top.BackgroundTransparency = 1
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0, 0, 0.100000001, 0)
Top.Size = UDim2.new(0, 546, 0, 1)

label1.Name = "label1"
label1.Parent = Top
label1.BackgroundColor3 = Color3.new(1, 1, 1)
label1.BackgroundTransparency = 1
label1.BorderSizePixel = 0
label1.Position = UDim2.new(0, 0, -36.3999939, 0)
label1.Size = UDim2.new(0, 546, 0, 36)
label1.Font = Enum.Font.Gotham
label1.Text = "Yeet Hub"
label1.TextColor3 = Color3.new(1, 1, 1)
label1.TextSize = 14
label1.TextTransparency = 1
label1.TextWrapped = true

games.Name = "games"
games.Parent = Main
games.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
games.BackgroundTransparency = 1
games.BorderColor3 = Color3.new(1, 1, 1)
games.Position = UDim2.new(0.0915750936, 0, 0.331, 0)
games.Size = UDim2.new(0, 200, 0, 50)
games.Font = Enum.Font.Gotham
games.Text = "Game Scripts"
games.TextColor3 = Color3.new(1, 1, 1)
games.TextSize = 14
games.TextTransparency = 1

admin.Name = "admin"
admin.Parent = Main
admin.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
admin.BackgroundTransparency = 1
admin.BorderColor3 = Color3.new(1, 1, 1)
admin.Position = UDim2.new(0.542124569, 0, 0.331, 0)
admin.Size = UDim2.new(0, 200, 0, 50)
admin.Font = Enum.Font.Gotham
admin.Text = "Admin Scripts"
admin.TextColor3 = Color3.new(1, 1, 1)
admin.TextSize = 14
admin.TextTransparency = 1

fe.Name = "fe"
fe.Parent = Main
fe.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
fe.BackgroundTransparency = 1
fe.BorderColor3 = Color3.new(1, 1, 1)
fe.Position = UDim2.new(0.542124569, 0, 0.57967031, 0)
fe.Size = UDim2.new(0, 200, 0, 50)
fe.Font = Enum.Font.Gotham
fe.Text = "FE Scripts"
fe.TextColor3 = Color3.new(1, 1, 1)
fe.TextSize = 14
fe.TextTransparency = 1

troll.Name = "troll"
troll.Parent = Main
troll.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
troll.BackgroundTransparency = 1
troll.BorderColor3 = Color3.new(1, 1, 1)
troll.Position = UDim2.new(0.0915750861, 0, 0.58099997, 0)
troll.Size = UDim2.new(0, 200, 0, 50)
troll.Font = Enum.Font.Gotham
troll.Text = "Troll Scripts"
troll.TextColor3 = Color3.new(1, 1, 1)
troll.TextSize = 14
troll.TextTransparency = 1

Minimize.Name = "Minimize"
Minimize.Parent = Main
Minimize.BackgroundColor3 = Color3.new(0.992157, 1, 0.509804)
Minimize.BackgroundTransparency = 1
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.926739931, 0, 0, 0)
Minimize.Size = UDim2.new(0, 20, 0, 20)
Minimize.Font = Enum.Font.Gotham
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextSize = 14

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 0.654902, 0.631373)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.963369966, 0, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.Gotham
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14

AdminScripts.Name = "AdminScripts"
AdminScripts.Parent = YeetHub
AdminScripts.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
AdminScripts.BorderSizePixel = 0
AdminScripts.Position = UDim2.new(0.675032258, 0, 0.297236323, 0)
AdminScripts.Size = UDim2.new(0, 225, 0, 364)
AdminScripts.Visible = false

iy.Name = "iy"
iy.Parent = AdminScripts
iy.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
iy.BackgroundTransparency = 1
iy.BorderColor3 = Color3.new(1, 1, 1)
iy.Position = UDim2.new(0.0533334017, 0, 0.158000007, 0)
iy.Size = UDim2.new(0, 200, 0, 49)
iy.Font = Enum.Font.Gotham
iy.Text = "Infinite Yield"
iy.TextColor3 = Color3.new(1, 1, 1)
iy.TextSize = 14
iy.TextTransparency = 1

Close_2.Name = "Close"
Close_2.Parent = AdminScripts
Close_2.BackgroundColor3 = Color3.new(1, 0.654902, 0.631373)
Close_2.BackgroundTransparency = 1
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0.910036623, 0, 0, 0)
Close_2.Size = UDim2.new(0, 20, 0, 20)
Close_2.Font = Enum.Font.Gotham
Close_2.Text = "X"
Close_2.TextColor3 = Color3.new(1, 1, 1)
Close_2.TextSize = 14

Top_2.Name = "Top"
Top_2.Parent = AdminScripts
Top_2.BackgroundColor3 = Color3.new(0.784314, 0, 1)
Top_2.BackgroundTransparency = 1
Top_2.BorderSizePixel = 0
Top_2.Position = UDim2.new(0, 0, 0.0999999866, 0)
Top_2.Size = UDim2.new(0, 225, 0, 1)

label1_2.Name = "label1"
label1_2.Parent = Top_2
label1_2.BackgroundColor3 = Color3.new(1, 1, 1)
label1_2.BackgroundTransparency = 1
label1_2.BorderSizePixel = 0
label1_2.Position = UDim2.new(0, 0, -36.3999939, 0)
label1_2.Size = UDim2.new(0, 225, 0, 36)
label1_2.Font = Enum.Font.Gotham
label1_2.Text = "Admin Scripts"
label1_2.TextColor3 = Color3.new(1, 1, 1)
label1_2.TextSize = 14
label1_2.TextTransparency = 1
label1_2.TextWrapped = true

GameScripts.Name = "GameScripts"
GameScripts.Parent = YeetHub
GameScripts.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
GameScripts.BorderSizePixel = 0
GameScripts.Position = UDim2.new(0.180000007, 0, 0.296999991, 0)
GameScripts.Size = UDim2.new(0, 225, 0, 364)
GameScripts.Visible = false

jb.Name = "jb"
jb.Parent = GameScripts
jb.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
jb.BackgroundTransparency = 1
jb.BorderColor3 = Color3.new(1, 1, 1)
jb.Position = UDim2.new(0.0533334017, 0, 0.157923102, 0)
jb.Size = UDim2.new(0, 200, 0, 49)
jb.Font = Enum.Font.Gotham
jb.Text = "Jailbreak GUI"
jb.TextColor3 = Color3.new(1, 1, 1)
jb.TextSize = 14
jb.TextTransparency = 1

lt2.Name = "lt2"
lt2.Parent = GameScripts
lt2.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
lt2.BackgroundTransparency = 1
lt2.BorderColor3 = Color3.new(1, 1, 1)
lt2.Position = UDim2.new(0.0529999994, 0, 0.316000015, 0)
lt2.Size = UDim2.new(0, 200, 0, 49)
lt2.Font = Enum.Font.Gotham
lt2.Text = "Lumber Tycoon 2 GUI"
lt2.TextColor3 = Color3.new(1, 1, 1)
lt2.TextSize = 14
lt2.TextTransparency = 1

Close_3.Name = "Close"
Close_3.Parent = GameScripts
Close_3.BackgroundColor3 = Color3.new(1, 0.654902, 0.631373)
Close_3.BackgroundTransparency = 1
Close_3.BorderSizePixel = 0
Close_3.Position = UDim2.new(0.910036623, 0, 0, 0)
Close_3.Size = UDim2.new(0, 20, 0, 20)
Close_3.Font = Enum.Font.Gotham
Close_3.Text = "X"
Close_3.TextColor3 = Color3.new(1, 1, 1)
Close_3.TextSize = 14

Top_3.Name = "Top"
Top_3.Parent = GameScripts
Top_3.BackgroundColor3 = Color3.new(0.784314, 0, 1)
Top_3.BackgroundTransparency = 1
Top_3.BorderSizePixel = 0
Top_3.Position = UDim2.new(0, 0, 0.0999999866, 0)
Top_3.Size = UDim2.new(0, 225, 0, 1)

label1_3.Name = "label1"
label1_3.Parent = Top_3
label1_3.BackgroundColor3 = Color3.new(1, 1, 1)
label1_3.BackgroundTransparency = 1
label1_3.BorderSizePixel = 0
label1_3.Position = UDim2.new(0, 0, -36.3999939, 0)
label1_3.Size = UDim2.new(0, 225, 0, 36)
label1_3.Font = Enum.Font.Gotham
label1_3.Text = "Game Scripts"
label1_3.TextColor3 = Color3.new(1, 1, 1)
label1_3.TextSize = 14
label1_3.TextTransparency = 1
label1_3.TextWrapped = true

nlg.Name = "nlg"
nlg.Parent = GameScripts
nlg.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
nlg.BackgroundTransparency = 1
nlg.BorderColor3 = Color3.new(1, 1, 1)
nlg.Position = UDim2.new(0.0529999994, 0, 0.474000007, 0)
nlg.Size = UDim2.new(0, 200, 0, 49)
nlg.Font = Enum.Font.Gotham
nlg.Text = "Ninja Legends GUI"
nlg.TextColor3 = Color3.new(1, 1, 1)
nlg.TextSize = 14
nlg.TextTransparency = 1

mcg.Name = "mcg"
mcg.Parent = GameScripts
mcg.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
mcg.BackgroundTransparency = 1
mcg.BorderColor3 = Color3.new(1, 1, 1)
mcg.Position = UDim2.new(0.0529999994, 0, 0.632000029, 0)
mcg.Size = UDim2.new(0, 200, 0, 49)
mcg.Font = Enum.Font.Gotham
mcg.Text = "Mad City GUI"
mcg.TextColor3 = Color3.new(1, 1, 1)
mcg.TextSize = 14
mcg.TextTransparency = 1

Loader.Name = "Loader"
Loader.Parent = YeetHubv1
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main_2.Name = "Main"
Main_2.Parent = Loader
Main_2.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Main_2.BorderSizePixel = 0
Main_2.Position = UDim2.new(0.407979399, 0, 0.353356868, 0)
Main_2.Size = UDim2.new(0, 285, 0, 249)

Yeet.Name = "Yeet"
Yeet.Parent = Main_2
Yeet.BackgroundColor3 = Color3.new(1, 1, 1)
Yeet.BackgroundTransparency = 1
Yeet.BorderSizePixel = 0
Yeet.Position = UDim2.new(0.147368416, 0, 0.31908831, 0)
Yeet.Size = UDim2.new(0, 200, 0, 50)
Yeet.Font = Enum.Font.Gotham
Yeet.Text = "Yeet"
Yeet.TextColor3 = Color3.new(1, 1, 1)
Yeet.TextSize = 35
Yeet.TextTransparency = 1
Yeet.TextWrapped = true

Hub.Name = "Hub"
Hub.Parent = Main_2
Hub.BackgroundColor3 = Color3.new(1, 1, 1)
Hub.BackgroundTransparency = 1
Hub.BorderSizePixel = 0
Hub.Position = UDim2.new(0.147368416, 0, 0.461538494, 0)
Hub.Size = UDim2.new(0, 200, 0, 50)
Hub.Font = Enum.Font.Gotham
Hub.Text = "Hub"
Hub.TextColor3 = Color3.new(1, 1, 1)
Hub.TextSize = 35
Hub.TextTransparency = 1
Hub.TextWrapped = true

local function JQMIOG_fake_script() -- OpenGui.OpenScript 
	local script = Instance.new('LocalScript', OpenGui)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent["Yeet Hub"].Enabled = true
	end)
	
end
coroutine.wrap(JQMIOG_fake_script)()
local function VUMP_fake_script() -- Top.Rainbow 
	local script = Instance.new('LocalScript', Top)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(VUMP_fake_script)()
local function RWLICAN_fake_script() -- Main.Loading 
	local script = Instance.new('LocalScript', Main)

	while wait(0.5) do
		if(script.Parent.Parent.Loaded.Value == true) then
			break
		end
	end
	
	script.Parent.Parent.Enabled = true
	
	warn("Loaded!")
	warn("Yeet Hub by D3AD Mystic")
	warn("More to come!")
	
	while wait() do
	script.Parent.Parent.Main.Top.label1.Text = ("Yeet Hub v1" .. "		" .. elapsedTime())
	end
end
coroutine.wrap(RWLICAN_fake_script)()
local function FHTPM_fake_script() -- games.open 
	local script = Instance.new('LocalScript', games)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.Parent.GameScripts.Opened.Value = true
		script.Parent.Parent.Parent.GameScripts.Visible = true
	end)
end
coroutine.wrap(FHTPM_fake_script)()
local function XBSRE_fake_script() -- games.Rainbow 
	local script = Instance.new('LocalScript', games)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(XBSRE_fake_script)()
local function WRSONR_fake_script() -- admin.open 
	local script = Instance.new('LocalScript', admin)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.Parent.AdminScripts.Opened.Value = true
		script.Parent.Parent.Parent.AdminScripts.Visible = true
	end)
end
coroutine.wrap(WRSONR_fake_script)()
local function CINGT_fake_script() -- admin.Rainbow 
	local script = Instance.new('LocalScript', admin)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(CINGT_fake_script)()
local function ANOVAE_fake_script() -- fe.Rainbow 
	local script = Instance.new('LocalScript', fe)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(ANOVAE_fake_script)()
local function NPYYT_fake_script() -- troll.Rainbow 
	local script = Instance.new('LocalScript', troll)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(NPYYT_fake_script)()
local function ZCOE_fake_script() -- Minimize.MinimizeScript 
	local script = Instance.new('LocalScript', Minimize)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent["Yeet Hub"].Enabled = false
		script.Parent.Parent.Parent.Parent.Open.Enabled = true
	end)
	
end
coroutine.wrap(ZCOE_fake_script)()
local function GLJUQ_fake_script() -- Close.CloseScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
	
end
coroutine.wrap(GLJUQ_fake_script)()
local function WMNEH_fake_script() -- Main.Tween 
	local script = Instance.new('LocalScript', Main)

	local TweenService = game:GetService("TweenService")
	local SGui = script.Parent.Parent
	local gui = script.Parent
	local gui2 = script.Parent.Top
	local label1 = script.Parent.Top.label1
	local buttons = {[1] = script.Parent.games, [2] = script.Parent.admin, [3] = script.Parent.troll, [4] = script.Parent.fe}
	
	repeat wait() until SGui.Loaded.Value == true
	
	--Expanding GUI
	gui.Size = UDim2.new(0, 0, 0, 0)
	
	local newSize = UDim2.new(0, 546, 0, 364)
	
	local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(gui, tweenInfo, {Size=newSize})
	
	gui2.Size = UDim2.new(0, 0, 0, 0)
	
	local newSize2 = UDim2.new(0, 546, 0, 1)
	
	local tweenInfo2 = TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween2 = TweenService:Create(gui2, tweenInfo2, {Size=newSize2})
	
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	
	wait(2)
	
	--Fading Text/Gui2 IN
	local newTransparency = 0
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(label1, tweenInfo, {TextTransparency=newTransparency})
	
	 
	local tweenInfo2 = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween2 = TweenService:Create(gui2, tweenInfo2, {BackgroundTransparency=newTransparency})
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	
	wait(1)
	
	--Fading Buttons
	local newTransparency = 0
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(buttons[1], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	local tween2 = TweenService:Create(buttons[2], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	local tween3 = TweenService:Create(buttons[3], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	local tween4 = TweenService:Create(buttons[4], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	tween3:Play()
	tween4:Play()
	
	wait(2)
	
end
coroutine.wrap(WMNEH_fake_script)()
local function OFHOJB_fake_script() -- Main.Draggable 
	local script = Instance.new('LocalScript', Main)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(OFHOJB_fake_script)()
local function BVHNDC_fake_script() -- iy.Clicked 
	local script = Instance.new('LocalScript', iy)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://pastebin.com/raw/tzTXmYf2", true))()
	end)
	
end
coroutine.wrap(BVHNDC_fake_script)()
local function YGXE_fake_script() -- iy.Rainbow 
	local script = Instance.new('LocalScript', iy)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(YGXE_fake_script)()
local function XLECBB_fake_script() -- Close_2.CloseScript 
	local script = Instance.new('LocalScript', Close_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Opened.Value = false
		script.Parent.Parent.Visible = false
	end)
	
end
coroutine.wrap(XLECBB_fake_script)()
local function CWMO_fake_script() -- Top_2.Rainbow 
	local script = Instance.new('LocalScript', Top_2)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(CWMO_fake_script)()
local function OVTG_fake_script() -- AdminScripts.Tween 
	local script = Instance.new('LocalScript', AdminScripts)

	local TweenService = game:GetService("TweenService")
	local SGui = script.Parent.Parent
	local gui = script.Parent
	local gui2 = script.Parent.Top
	local label1 = script.Parent.Top.label1
	local buttons = {[1] = script.Parent.iy}
	
	repeat wait() until SGui.Loaded.Value == true
	repeat wait() until script.Parent.Opened.Value == true
	
	--Expanding GUI
	gui.Size = UDim2.new(0, 0, 0, 0)
	
	script.Parent.Visible = true
	
	local newSize = UDim2.new(0, 225, 0, 364)
	
	local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(gui, tweenInfo, {Size=newSize})
	
	gui2.Size = UDim2.new(0, 0, 0, 0)
	
	local newSize2 = UDim2.new(0, 225, 0, 1)
	
	local tweenInfo2 = TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween2 = TweenService:Create(gui2, tweenInfo2, {Size=newSize2})
	
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	
	wait(2)
	
	--Fading Text/Gui2 IN
	local newTransparency = 0
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(label1, tweenInfo, {TextTransparency=newTransparency})
	
	 
	local tweenInfo2 = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween2 = TweenService:Create(gui2, tweenInfo2, {BackgroundTransparency=newTransparency})
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	
	wait(1)
	
	--Fading Buttons
	local newTransparency = 0
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(buttons[1], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	
	wait(1)
	
	tween:Play()
	
end
coroutine.wrap(OVTG_fake_script)()
local function JLQV_fake_script() -- AdminScripts.Draggable 
	local script = Instance.new('LocalScript', AdminScripts)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(JLQV_fake_script)()
local function KPDFF_fake_script() -- jb.Clicked 
	local script = Instance.new('LocalScript', jb)

	script.Parent.MouseButton1Click:Connect(function()
		
		
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
	
	
	end)
	
end
coroutine.wrap(KPDFF_fake_script)()
local function JTIYX_fake_script() -- jb.Rainbow 
	local script = Instance.new('LocalScript', jb)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(JTIYX_fake_script)()
local function GBJCN_fake_script() -- lt2.Clicked 
	local script = Instance.new('LocalScript', lt2)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://pastebin.com/raw/xXsQ31Ss"), true)()
	end)
	
end
coroutine.wrap(GBJCN_fake_script)()
local function NHVF_fake_script() -- lt2.Rainbow 
	local script = Instance.new('LocalScript', lt2)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(NHVF_fake_script)()
local function YXTKPP_fake_script() -- Close_3.CloseScript 
	local script = Instance.new('LocalScript', Close_3)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Opened.Value = false
		script.Parent.Parent.Visible = false
	end)
	
end
coroutine.wrap(YXTKPP_fake_script)()
local function ECQWK_fake_script() -- GameScripts.Tween 
	local script = Instance.new('LocalScript', GameScripts)

	local TweenService = game:GetService("TweenService")
	local SGui = script.Parent.Parent
	local gui = script.Parent
	local gui2 = script.Parent.Top
	local label1 = script.Parent.Top.label1
	local buttons = {[1] = script.Parent.jb, [2] = script.Parent.lt2, [3] = script.Parent.nlg, [4] = script.Parent.mcg}
	
	repeat wait() until SGui.Loaded.Value == true
	
	gui.Size = UDim2.new(0, 0, 0, 0)
	
	repeat wait() until script.Parent.Opened.Value == true
	
	--Expanding GUI
	
	script.Parent.Visible = true
	
	local newSize = UDim2.new(0, 225, 0, 364)
	
	local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(gui, tweenInfo, {Size=newSize})
	
	gui2.Size = UDim2.new(0, 0, 0, 0)
	
	local newSize2 = UDim2.new(0, 225, 0, 1)
	
	local tweenInfo2 = TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween2 = TweenService:Create(gui2, tweenInfo2, {Size=newSize2})
	
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	
	wait(2)
	
	--Fading Text/Gui2 IN
	local newTransparency = 0
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(label1, tweenInfo, {TextTransparency=newTransparency})
	
	 
	local tweenInfo2 = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween2 = TweenService:Create(gui2, tweenInfo2, {BackgroundTransparency=newTransparency})
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	
	wait(1)
	
	--Fading Buttons
	local newTransparency = 0
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(buttons[1], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	local tween2 = TweenService:Create(buttons[2], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	local tween = TweenService:Create(buttons[3], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	local tween2 = TweenService:Create(buttons[4], tweenInfo, {TextTransparency=newTransparency, BackgroundTransparency=newTransparency})
	
	wait(1)
	
	tween:Play()
	tween2:Play()
	
end
coroutine.wrap(ECQWK_fake_script)()
local function HYTCTIK_fake_script() -- GameScripts.Draggable 
	local script = Instance.new('LocalScript', GameScripts)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(HYTCTIK_fake_script)()
local function NTRFXIC_fake_script() -- Top_3.Rainbow 
	local script = Instance.new('LocalScript', Top_3)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(NTRFXIC_fake_script)()
local function WUEK_fake_script() -- nlg.Clicked 
	local script = Instance.new('LocalScript', nlg)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Wvie14tM", true))()
	end)
	
end
coroutine.wrap(WUEK_fake_script)()
local function ABYP_fake_script() -- nlg.Rainbow 
	local script = Instance.new('LocalScript', nlg)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(ABYP_fake_script)()
local function DCPAX_fake_script() -- mcg.Clicked 
	local script = Instance.new('LocalScript', mcg)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:GetObjects('rbxassetid://3015089451')[1].Source)()
	end)
	
end
coroutine.wrap(DCPAX_fake_script)()
local function UFEW_fake_script() -- mcg.Rainbow 
	local script = Instance.new('LocalScript', mcg)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.BorderColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(UFEW_fake_script)()
local function GRVZDHT_fake_script() -- Yeet.Rainbow 
	local script = Instance.new('LocalScript', Yeet)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	i = 0
	while wait(0.01) do
	script.Parent.TextColor3 = Color3.fromHSV(zigzag(i), 1, 1)
	i = i + 0.01
	end
end
coroutine.wrap(GRVZDHT_fake_script)()
local function RRRPSET_fake_script() -- Main_2.Tween 
	local script = Instance.new('LocalScript', Main_2)

	local TweenService = game:GetService("TweenService")
	local SGui = script.Parent.Parent
	local gui = script.Parent
	local label1 = script.Parent.Yeet
	local label2 = script.Parent.Hub
	
	SGui.Enabled = true
	
	--Expanding GUI
	gui.Size = UDim2.new(0, 0, 0, 0)
	wait(1)
	gui:TweenSize(UDim2.new(0, 285, 0, 249))
	
	wait(0.5)
	
	--Fading Text IN
	local newTransparency = 0
	 
	local tweenInfo = TweenInfo.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(label1, tweenInfo, {TextTransparency=newTransparency})
	wait(1)
	tween:Play()
	
	local newTransparency2 = 0
	 
	local tweenInfo2 = TweenInfo.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween2 = TweenService:Create(label2, tweenInfo, {TextTransparency=newTransparency2})
	wait(1)
	tween2:Play()
	
	wait(2)
	
	--Fading Text OUT
	label1.TextTransparency = 0
	
	local newTransparency = 1
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(label1, tweenInfo, {TextTransparency=newTransparency})
	wait(1)
	tween:Play()
	
	label2.TextTransparency = 0
	
	local newTransparency = 1
	 
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(label2, tweenInfo, {TextTransparency=newTransparency})
	wait(1)
	tween:Play()
	
	wait(2)
	
	--Contracting GUI
	
	gui.Size = UDim2.new(0, 285, 0, 249)
	
	wait(1)
	
	
	gui:TweenSize(UDim2.new(0, 0, 0, 0))
	
	wait(1)
	
	SGui.Enabled = false
	script.Parent.Parent.Parent["Yeet Hub"].Loaded.Value = true
end
coroutine.wrap(RRRPSET_fake_script)()
