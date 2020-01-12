local l = loadstring(game:HttpGet('https://raw.githubusercontent.com/MysticD3AD/robloxscripts/master/library.lua', true))()
l.options.underlinecolor = "rainbow"

local p = game:GetService('Players').LocalPlayer

local A = l:CreateWindow('MEME REVIEW')

local AO = A:Button("LEVEL UP SORTA FAST", function()
	while wait() do
		for _,v in next, (game:GetService('Workspace').Hoops:GetChildren()) do
			p.Character:MoveTo(v.position)
			wait(0.1)
		end
	end
end)
