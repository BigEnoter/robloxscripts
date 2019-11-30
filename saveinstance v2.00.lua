--// Instance serializer plugin converted to a LocalScript by logre (211438916023222273)

--[[
    
  Usage: 
  
  string ObjectToCode(instance toEncode) - Serializes `instance` into Lua script format.  
    
]]

local ClassProperties = {}
local SortedArray = coroutine.wrap(function()
	local a=table.sort;local b=table.insert;local c={}local d=setmetatable({},{__mode="k"})c.__index={Unpack=unpack,Concat=table.concat,RemoveIndex=table.remove}function c.new(self,e)if self then a(self,e)else self={}end;d[self]=e;return setmetatable(self,c)end;local function f(self,g,h,i,j,k)local l;do local m=h+i;l=(m-m%2)/2 end;if l==0 then return nil end;local n=k or d[self]local o=self[l]while l~=i do if j then if j(g,o)then return l end elseif g==o then return l end;local p;if n then p=n(g,o)else p=g<o end;if p then i=l-1 else h=l+1 end;local m=h+i;l=(m-m%2)/2;o=self[l]end;return l end;function c.__index:Insert(g)local q=f(self,g,1,#self)local o=self[q]if o then local n=d[self]local p;if n then p=n(g,o)else p=g<o end;q=p and q or q+1 else q=1 end;b(self,q,g)return q end;function c.__index:Find(g,j,k,r,s)local q=f(self,g,r or 1,s or#self,j,k)local p;if q then if j then p=j(g,self[q])else p=g==self[q]end end;return p and q or nil end;function c.__index:Copy()local t={}for u=1,#self do t[u]=self[u]end;return t end;function c.__index:Clone()local t={}for u=1,#self do t[u]=self[u]end;d[t]=d[self]return setmetatable(t,c)end;function c.__index:RemoveElement(v,j,k)local q=self:Find(v,j,k)if q then return self:RemoveIndex(q)end end;function c.__index:Sort()a(self,d[self])end;function c.__index:SortIndex(w)return self:Insert(self:RemoveIndex(w))end;function c.__index:SortElement(v,j,k)return self:Insert(self:RemoveElement(v,j,k))end;function c.__index:GetIntersection(x,j,k)if c~=getmetatable(x)then error("bad argument #2 to GetIntersection: expected SortedArray, got "..typeof(x).." "..tostring(x))end;local y=c.new(nil,d[self])local z=0;local q=1;local A=#self;local B=#x;if A>B then A,B=B,A;self,x=x,self end;for u=1,A do local C=self[u]local D=x:Find(C,j,k,q,B)if D then q=D;z=z+1;y[z]=C end end;return y end;local function E(self,F,G)local H=F+G;if H%2==0 then return self[H/2]else local I=(H-1)/2;return(self[I]+self[I+1])/2 end end;function c.__index:Front()return self[1]end;function c.__index:Back()return self[#self]end;function c.__index:Median()return E(self,1,#self)end;function c.__index:Quartile1()local J=#self;return E(self,1,(J-J%2)/2)end;function c.__index:Quartile3()local J=#self;return E(self,1+(J+J%2)/2,J)end;coroutine.yield(c)
end)()
local ObjectToCode do
	local ORIENTATION_PRECISION = 1 
	local POSITION_PRECISION = 0.001
	local FULL_ENUMS = true
	local abs = math.abs
	local floor = math.floor
	local ToString
	local NumberAccuracy = 0.0000001
	local function Round(Number, Place)
		Place = Place or 1
		return tostring(floor(Number / Place + 0.5) * Place)
	end
	local function IsGuiObject(Object)
		return Object:IsA("GuiObject")
	end
	local function HasText(Object)
		local Class = Object.ClassName
		return Class == "TextBox" or Class == "TextLabel" or Class == "TextButton"
	end
	local function Set(Object, Property, Value)
		Object[Property] = Value
	end
	local function IsBasePart(Object)
		return Object:IsA("BasePart")
	end
	local function IsMeshPart(Object)
		return Object:IsA("MeshPart")
	end
	local EmptyCFrame = CFrame.new()
	local function IsCFrameUnnecessary(Object)
		Object = Instance.new(Object.ClassName)
		local Result = not IsBasePart(Object) and pcall(Set, Object, "CFrame", EmptyCFrame) and pcall(Set, Object, "Orientation", EmptyCFrame.p)
		Object:Destroy()
		return Result
	end
	local function IsRotationUnnecessary(Object)
		Object = Instance.new(Object.ClassName)
		local Result = not IsBasePart(Object) and pcall(Set, Object, "Orientation", EmptyCFrame.p)
		Object:Destroy()
		return Result
	end
	local ExclusionConditions = {
		[{IsGuiObject, BackgroundTransparency = 1}] = {"BackgroundColor3", "BorderColor3", "BorderSizePixel"};
		[{IsGuiObject, BorderSizePixel = 0}] = {"BorderColor3"};
		[{HasText, TextStrokeTransparency = 1}] = {"TextStrokeColor3"};
		[{HasText, TextTransparency = 1}] = {"TextStrokeTransparency", "TextStrokeColor3", "TextColor3", "TextScaled", "Font", "FontSize", "Text", "TextTransparency","TextWrapped", "TextXAlignment", "TextYAlignment"};
		[{IsBasePart}] = {"Position", "Rotation", "Orientation", "BrickColor"};
		[{IsRotationUnnecessary}] = {"Rotation", "CFrame"};
		[{IsMeshPart}]= {"MeshId"}
	}
	for _, PropertiesToIgnore in next, ExclusionConditions do
		table.sort(PropertiesToIgnore)
	end
	local FormattedStrings = {
		Axes = "Axes.new(%s)";
		BrickColor = "BrickColor.new(\"%s\")";
		CFrame = "CFrame.fromOrientation(math.rad(%s), math.rad(%s), math.rad(%s)) + %s";
		Color3 = "Color3.fromRGB(%d, %d, %d)";
		ColorSequence = "ColorSequence.new{%s}";
		ColorSequenceKeypoint = "ColorSequenceKeypoint.new(%s, %s)";
		Faces = "Faces.new(%s)";
		NumberRange = "NumberRange.new(%s, %s)";
		NumberSequence = "NumberSequence.new{%s}";
		NumberSequenceKeypoint = "NumberSequenceKeypoint.new(%s, %s, %s)";
		Rect = "Rect.new(%s, %s, %s, %s)";
		Region3 = "Region3.new(%s, %s)";
		string = "\"%s\"";
		UDim = "UDim.new(%s, %d)";
		UDim2 = "UDim2.new(%s, %d, %s, %d)";
		Vector2 = "Vector2.new(%s, %s)";
		Vector3 = "Vector3.new(%s, %s, %s)";
	}
	local GetFormattingStack = {
		Axes = function(Value)
			return (tostring(Value):gsub("(%u)(,?)", "Enum.Axis.%1%2"))
		end;
		BrickColor = function(Value)
			return tostring(Value)
		end;
		CFrame = function(Value)
			local Part = Instance.new("Part")
			Part.CFrame = Value
			local Orientation = Part.Orientation
			Part:Destroy()

			return Round(Orientation.X, ORIENTATION_PRECISION), Round(Orientation.Y, ORIENTATION_PRECISION), Round(Orientation.Z, ORIENTATION_PRECISION),
				ToString(Vector3.new(Round(Value.X, POSITION_PRECISION), Round(Value.Y, POSITION_PRECISION), Round(Value.Z, POSITION_PRECISION)))
		end;
		Color3 = function(Value)
			return Value.r * 255, Value.g * 255, Value.b * 255
		end;
		ColorSequence = function(Value)
			local KeypointsConstructors = {}
			local Keypoints = Value.Keypoints
			for i = 1, #Keypoints do
				KeypointsConstructors[i] = ToString(Keypoints[i])
			end
			return table.concat(KeypointsConstructors, ", ")
		end;
		ColorSequenceKeypoint = function(Value)
			return Value.Time, Value.Value
		end;
		Faces = function(Value)
			return (tostring(Value):gsub("(%u%l+)(,?)", "Enum.NormalId.%1%2"))
		end;
		number = function(Value)
			return Round(Value, NumberAccuracy)
		end;
		NumberRange = function(Value)
			return Value.Min, Value.Max
		end;
		NumberSequence = function(Value)
			local KeypointsConstructors = {}
			local Keypoints = Value.Keypoints
			for i = 1, #Keypoints do
				KeypointsConstructors[i] = ToString(Keypoints[i])
			end
			return table.concat(KeypointsConstructors, ", ")
		end;
		NumberSequenceKeypoint = function(Value)
			return Value.Time, Value.Value, Value.Envelope
		end;
		Rect = function(Value)
			return Value.Min.X, Value.Min.Y, Value.Max.X, Value.Max.Y
		end;
		Region3 = function(Value)
			return ToString(Value.CFrame.p - Value.Size * 0.5), ToString(Value.CFrame.p + Value.Size * 0.5)
		end;
		UDim = function(Value)
			return Value.Scale, Value.Offset
		end;
		UDim2 = function(Value)
			return Value.X.Scale, Value.X.Offset, Value.Y.Scale, Value.Y.Offset
		end;
		Vector2 = function(Value)
			return Round(Value.X, POSITION_PRECISION), Round(Value.Y, POSITION_PRECISION)
		end;
		Vector3 = function(Value)
			return Round(Value.X, POSITION_PRECISION), Round(Value.Y, POSITION_PRECISION), Round(Value.Z, POSITION_PRECISION)
		end;
		EnumItem = function(Value)
			return FULL_ENUMS and tostring(Value) or Value.Value
		end;
	}
	function ToString(Value)
		local Type = typeof(Value)
		local Stack = {(GetFormattingStack[Type] or tostring)(Value)}
		for i = 1, #Stack do
			local Number = Stack[i]
			if type(Number) ~= "string" then
				Stack[i] = (GetFormattingStack[typeof(Number)] or tostring)(Number)
			end
		end
		if Type == "CFrame" and Stack[1] == "0" and Stack[2] == "0" and Stack[3] == "0" then
			return Stack[4]:gsub("Vector3%.new", "CFrame.new", 1)
		end
		return (FormattedStrings[Type] or "%s"):format(unpack(Stack))
	end
	local function GetDimensions(Part)
		local Low  = Part.CFrame * ( 0.5 * Part.Size)
		local High = Part.CFrame * (-0.5 * Part.Size)
		local x = Round(abs(High.X - Low.X), POSITION_PRECISION)
		local y = Round(abs(High.Y - Low.Y), POSITION_PRECISION)
		local z = Round(abs(High.Z - Low.Z), POSITION_PRECISION)
		local a, b, c = x, y, z
		local u = Round(Part.Size.X, POSITION_PRECISION)
		local v = Round(Part.Size.Y, POSITION_PRECISION)
		local w = Round(Part.Size.Z, POSITION_PRECISION)
		if x > y then
			x, y = y, x
		end
		if y > z then
			y, z = z, y
			if x > y then
				x, y = y, x
			end
		end
		if u > v then
			u, v = v, u
		end
		if v > w then
			v, w = w, v
			if u > v then
				u, v = v, u
			end
		end
		if x == u and y == v and z == w then
			return a, b, c
		else
			return false
		end
	end
	local function GetValidName(Name, EncounteredNames, GlobalTable)
		Name = Name:gsub("[^%w_]", ""):gsub("^%d", "Object%1")
		if Name == "" then
			Name = "Object"
		end
		while EncounteredNames[Name] do
			local DuplicateNumber = EncounteredNames[Name] + 1
			EncounteredNames[Name] = DuplicateNumber
			Name = Name .. DuplicateNumber
		end
		EncounteredNames[Name] = 1
		return (GlobalTable or "") .. Name
	end
	local function GetDescendants(Object)
		local Descendants = Object:GetChildren()
		local NumDescendants = #Descendants
		local Count = 0
		if NumDescendants > 0 then
			repeat
				Count = Count + 1
				local GrandChildren = Descendants[Count]:GetChildren()
				local NumGrandChildren = #GrandChildren
				for a = 1, NumGrandChildren do
					Descendants[NumDescendants + a] = GrandChildren[a]
				end
				NumDescendants = NumDescendants + NumGrandChildren
			until Count == NumDescendants
		end
		return Descendants
	end
	local function GetService(...)
		return game:GetService(...)
	end
	local MyServices = setmetatable({}, {
		__index = function(self, i)
			local Success, Object = pcall(game.GetService, game, i)
			local Service = Success and Object
			self[i] = Service
			return Service
		end;
	})
	local DirectoryToString = function(Object)
		local FullName = {}
		local Count = 0
		while Object.Parent ~= game and Object.Parent ~= nil do
			local ObjectName = Object.Name:gsub("([\\\"])", "\\%1")
			if ObjectName:find("^[_%a][_%w]*$") then
				FullName[Count] = "." .. ObjectName
			else
				FullName[Count] = "[\"" .. ObjectName .. "\"]"
			end
			Count = Count - 1
			Object = Object.Parent
		end
		if MyServices[Object.ClassName] == Object then
			FullName[Count] = "game:GetService(\"" .. Object.ClassName .. "\")"
		else
			FullName[Count] = "." .. "[\"" .. Object.Name .. "\"]"
		end
		return table.concat(FullName, "", Count, 0)
	end
	local function GetPropertyValue(Object, Property)
		return Object[Property]
	end
	function ObjectToCode(ObjectToEncode)
		assert(typeof(ObjectToEncode) == "Instance", "Cannot convert non-Instance to code")
		local Lines = setmetatable({}, {__index = table})
		local EncounteredNames = {}
		local ObjectNames = {[ObjectToEncode.Parent] = DirectoryToString(ObjectToEncode.Parent)}
		local Objects = GetDescendants(ObjectToEncode)
		Objects[0] = ObjectToEncode
		local GlobalTable
		if #Objects > 200 then
			GlobalTable = "Objects."
			Lines:insert("local Objects = {}\n")
		end
		for i = 0, #Objects do
			local Object = Objects[i]
			ObjectNames[Object] = GetValidName(Object.Name, EncounteredNames, GlobalTable)
		end
		for i = 0, #Objects do
			local Object = Objects[i]
			local Name = ObjectNames[Object]
			local ClassName = Object.ClassName
			local Success, DefaultObject = pcall(Instance.new, ClassName)
			if Success and DefaultObject then
				Lines:insert((GlobalTable and "" or "local ") .. Name .. " = Instance.new(\"" .. ClassName .. "\")")
				if ClassProperties[ClassName] and pcall(function()
					return ClassProperties[ClassName]:Clone()
				end) then
					local Properties = ClassProperties[ClassName]:Clone()
					local IsABasePart = Object:IsA("BasePart")
					for Condition, PropertiesToIgnore in next, ExclusionConditions do
						local Ignore = Condition[1](Object)
						if Ignore then
							for Property, Value in next, Condition do
								if Property ~= 1 and Object[Property] ~= Value then
									Ignore = false
								end
							end
						end
						if Ignore then
							for _, Element in next, PropertiesToIgnore do
								Properties:RemoveElement(Element)
							end
							break
						end
					end
					for a = 1, #Properties do
						local Property = Properties[a]
						local Success, Value = pcall(GetPropertyValue, Object, Property)
						if Success and Value then
							local DefaultValue = DefaultObject[Property]
							local ValueString = ToString(Value)
							local DefaultString = ToString(DefaultValue)
							if typeof(Value) == "Instance" then
								ValueString = ObjectNames[Value]
							end
							if DefaultValue ~= Value and ValueString ~= DefaultString then
								if IsABasePart and Property == "Size" then
									local OldCFrame = Object.CFrame
									Object.CFrame = CFrame.fromOrientation(math.rad(Round(Object.Orientation.X, ORIENTATION_PRECISION)), math.rad(Round(Object.Orientation.Y, ORIENTATION_PRECISION)), math.rad(Round(Object.Orientation.Z, ORIENTATION_PRECISION))) + OldCFrame.p
									local X, Y, Z = GetDimensions(Object)
									if X then
										ValueString = ToString(Vector3.new(X, Y, Z))
										for b = 1, #Lines do
											local Line = Lines[b]
											if Line:find(Name .. ".CFrame = ", 1, true) then
												Lines[b] = Line:gsub(".fromOrientation%b() %+ Vector3", "")
											end
										end
									else
										Object.CFrame = OldCFrame
									end
								end
								if Property ~= "Parent" and ValueString then
									Lines:insert(Name .. "." .. Property .. " = " .. ValueString)
								end
							end
						end
					end
				end
				Lines:insert(Name .. ".Parent = " .. ObjectNames[Object.Parent] .. "\n")
			end
		end
		for i = 1, #Lines do
			local Line = Lines[i]
			local ObjectName, PrimaryPart = Line:match("^([_%w]+)%.PrimaryPart = ([^\r\n]+)")
			if PrimaryPart then
				for a = i, #Lines do
					local Line2 = Lines[a]
					if Line2:find("local " .. PrimaryPart .. " = Instance.new(\"", 1, true) then
						for b = i, 1, -1 do
							if Lines[b]:find("local " .. ObjectName .. " = Instance.new(\"", 1, true) then
								table.remove(Lines, a)
								table.insert(Lines, b, Line2 .. "\n")
								break
							end
						end
						break
					end
				end
			end
		end
		return Lines:concat("\n")
	end
end
local Data = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://anaminus.github.io/rbx/json/api/latest.json"))
for i = 1, #Data do
	local Table = Data[i]
	local Type = Table.type
	if Type == "Class" then
		local Superclass = ClassProperties[Table.Superclass]
		ClassProperties[Table.Name] = Superclass and Superclass:Clone() or SortedArray.new()
	elseif Type == "Property" then
		if not next(Table.tags) then
			ClassProperties[Table.Class]:Insert(Table.Name)
		end
	end
end