repeat wait() until game:FindFirstChild("Players") ~= nil
repeat wait() until game.Players.LocalPlayer ~= nil

local meta = getrawmetatable(game)
local namecall = meta.__namecall
setreadonly(meta,false)



meta.__namecall=function(self,...)
    if not checkcaller() then
        local Args={...}
        local method = getnamecallmethod()
        if method == "FireServer" and self == game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest then
            local message = Args[1]
            local name = ""
            if string.sub(message, 1, 3) == "/w " then
                message = string.gsub(message, "/w ", "")
                local space = string.find(message, " ")
                name = string.sub(message, 1, space - 1)
                message = string.sub(message, space + 1, -1)
            end
            text = ""
            for i = 1,#message do 
                text = text..string.sub(message,i,i).."⁣"
            end
            if name ~= "" then
                text = "/w "..name.." "..text
            end
            Args[1] = text
            return namecall(self, unpack(Args))
        end
    end
    return namecall(self,...)
end
wait()
game.StarterGui:SetCore("SendNotification", {
    Title = "Usage:";
    Text = "Simply chat like you normally would, all bad words will be bypassed! People under 13 won't see anything though.";
    Icon = "rbxassetid://2541869220";
    Duration = 8;
})
