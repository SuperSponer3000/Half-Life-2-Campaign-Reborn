--Ammo Limits Convars
CreateConVar("hl2cr_base_pistol", 			    150, 	{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_357", 				    12, 	{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_smg1", 				225, 	{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_smg1_grenade", 		3, 		{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_ar2", 				    60, 	{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_ar2_ball", 			3, 		{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_buckshot", 			30, 	{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_crossbowbolt", 		10, 	{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_slam", 				5, 		{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_rpg_round", 		    3, 		{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)
CreateConVar("hl2cr_base_frags", 			    5, 		{FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, true)

--Difficulty ConVars
CreateConVar("hl2cr_difficulty", 1, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "Change Difficulty", 1, 5)
CreateConVar("hl2cr_survival", 0, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "Enable/Disable survival", 0, 1)
CreateConVar("hl2cr_specials", 0, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "Enable/Disable special NPC spawns", 0, 1)

//Suit Convars
//Flashlight
CreateConVar("hl2cr_suit_default_rate", 0.05, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How fast does the suit drain power", 0, 100)
CreateConVar("hl2cr_suit_default_delay", 0.01, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How fast does the suit drain power", 0, 100)
CreateConVar("hl2cr_suit_default_flashlight_rate", 0.05, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How fast does the suit drain power", 0, 100)
CreateConVar("hl2cr_suit_default_flashlight_delay", 0.01, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How fast does the suit drain power", 0, 10)
CreateConVar("hl2cr_suit_default_recharge_rate", 1, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How fast does the suit drain power", 0, 10)
CreateConVar("hl2cr_suit_default_recharge_delay", 1, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How fast does the suit drain power", 0, 10)

--Misc
CreateConVar("hl2cr_cooldown_class", 60, {FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How long is the cooldown for class switching", 1, 180)

--Random NPC Spawning ConVars
CreateConVar("hl2cr_rndnpc_max", 3, {FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How many can randomly spawn", 1, 20)
CreateConVar("hl2cr_rndnpc_mindist", 1000, {FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How close can they spawn", 1, 2500)
CreateConVar("hl2cr_rndnpc_maxdist", 7500, {FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How far can they spawn", 1, 10000)

--Miscellanous
CreateConVar("hl2cr_coop_respawnrate", 10, {FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, "How quickly do items/weapons in co-op respawn", 1, 60)