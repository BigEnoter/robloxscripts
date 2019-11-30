-- Synapse X Windows Console
-- Written by Greenman

if not getgenv().console then
	function formatargs(args)
		local out = ""
		for k,v in pairs(args) do out = out..tostring(v).."  " end
		out = out:sub(1,#out-2)
		return out
	end

	rconsolename("Roblox Console")
	getgenv().print = function(...) rconsoleinfo(formatargs({...})) end
	getgenv().warn = function(...) rconsolewarn(formatargs({...})) end
	getgenv().error = function(...) consoleerr(formatargs({...})) end

	game:GetService("LogService").MessageOut:Connect(function(msg,mtype)
		if mtype == Enum.MessageType.MessageOutput then
			rconsoleinfo(msg)
		elseif mtype == Enum.MessageType.MessageWarning then
			rconsolewarn(msg)
		elseif mtype == Enum.MessageType.MessageError then
			rconsoleerr(msg)
		elseif mtype == Enum.MessageType.Info then
			rconsoleinfo("[INFO] "..msg)
		end
	end)
	getgenv().console = true
end