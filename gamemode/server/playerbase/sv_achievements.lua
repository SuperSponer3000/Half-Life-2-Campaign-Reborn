
local hl2cr_player = FindMetaTable( "Player" )

function hl2cr_player:GrantAchievement(achName)
	
	local ach = nil

	for i, a in ipairs(GAMEMODE.Achievements) do
		if a.Name == achName then
			ach = a
			break 
		end
	end

	--Grab the achievement from the list unless its an invalid name

	if not ach then 
		MsgC(HL2CR_RedColour, string.format("\nCouldn't find the achievement %s", achName) )
		return 
	end
	
	--If player already has the achievement, stop here
	if table.HasValue(self.hl2cr.Achievements, ach.Name) then return end
	
	--Insert the achievement to the player's data
	table.insert(self.hl2cr.Achievements, ach.Name)
	
	--Show the popup achievement similar to steam's achievements
	net.Start("HL2CR_AchievementEarned")
		net.WriteTable(ach)
	net.Send(self)

	--Notify everyone of the achiever
	if ach.IsRare then
		BroadcastMessageToAll(HL2CR_PlayerColour, self:Nick(), HL2CR_StandardColour, translate.Get("Server_Announce_Achievement_Rare"), HL2CR_PlayerColour, ach.Name)
	else
		BroadcastMessageToAll(HL2CR_PlayerColour, self:Nick(), HL2CR_StandardColour, translate.Get("Server_Announce_Achievement_Normal"), HL2CR_PlayerColour, ach.Name)
	end

	if ach.Rewards.XP > 0 then
		self:AddXP(ach.Rewards.XP)
	end
end

hook.Add("ShutDown", "HL2CR_CheckAchStatus", function()
	if savedBaby == false and file.Exists("hl2cr_data/babycheck.txt", "DATA") then
		file.Delete("hl2cr_data/babycheck.txt")
	end
	if savedRoller == false and file.Exists("hl2cr_data/ballcheck.txt", "DATA") then
		file.Delete("hl2cr_data/ballcheck.txt")
	end
end)