_G.TOKEN = "ad0c54cf87efb30e1aa3718c214cd6e83f9ebb19670fc771b9e8616d15c5063c"
_G.TimeToWait = 0 -- Increase when your game loads slow
_G.HideOptions = { 
    Level = true,
    XP = true,
    Gold = true,
    Damage = true -- Removes damage indicators 
}
_G.InstaRejoin = true -- Directly rejoins when you die or when the dungeon is finished
_G.AutoLeave = 600 -- Time after the script rejoins (if you get stuck)
_G.Hardcore = true
_G.CustomD = {
    Enabled = false,
    WaveDefense = false,
    Dungeon = "Winter Outpost",
    Difficulty = "Nightmare" 
}
_G.LoopJoin = true -- Attempts to join a dungeon each 0.1 seconds
_G.CollectDailyReward = true
_G.InstakillDebounce = 0 -- Time before it instakills 
_G.SkillPoints = "physicalPower" -- physicalPower,stamina,spellPower
_G.AutoUpgrade = false -- Auto Upgrades your equipped armor and weapon
_G.AutoEquipClass = "physic" -- physic,spell
_G.AutoEquip = false
_G.AutoSell = { 
    Enabled = false,
    SpellsOnly = false, -- Only spells are going to be sold
    Rarities = { -- Rarities to NOT sell (legendary,epic,rare,uncommon,common)
        "legendary",
        "epic"
    },
    Items = { -- Items to NOT sell
        ["Overlord's Manablade"] = {"legendary"},
        ["Overlord's Rageblade"] = {"legendary"},
        ["Overlord's Warrior Hat"] = {"epic","rare","uncommon"},
        ["Overlord's Warrior Armor"] = {"epic","rare","uncommon"},
        ["Overlord's Mage Hat"] = {"epic","rare","uncommon"},
        ["Overlord's Mage Robes"] = {"epic","rare","uncommon"},
        ["Overlord's Guardian Hat"] = {"epic","rare","uncommon"},
        ["Overlord's Guardian Armor"] = {"epic","rare","uncommon"},
        ["Bloodthirster"] = {"epic"},
        ["Mana Infused Spellblade"] = {"epic"}
    }
}
_G.Party = {
    Enabled = false, -- true = Waits for members/Joins host; false = Doesnt wait for anyone
    Host = "Player1", -- Name of the host
    Members = {"Player2","Player3","..."}
}
_G.DEBUG_MODE = false
loadstring(game:HttpGet("https://chronicdev.de/releases/".._G.TOKEN,true))()