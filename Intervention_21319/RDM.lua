local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '9'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')

layers.Sets.Idle = {

    Head = "Republic Cap",
    Body = "Republic Harness",
    Hands = "Republic Mittens",
    Legs = "Windurstian Slops",
    Feet = "Republic Leggings",
    Neck = "Justice Badge",
    Waist = "Friar's Rope",
    Ammo = "",
    Back = "Mist Silk Cape",
    Ear1 = "Energy Earring +1",
    Ear2 = "Energy Earring +1",
    Ring1 = "Saintly Ring +1",
    Ring2 = "Saintly Ring +1"

}


layers.Sets.XP.Idle = {Ring1 = "Chariot Band"}

layers.Sets.Resting = {
    Legs = "Baron's Slops",

}


-- Enfeebling Sets

layers.Sets.Midcast["White Magic Enfeebling"]={
    Head = "Traveler's Hat",
    Body = "Baron's Saio",
    Hands = "Devotee's Mitts",
    Legs = "Wonder Braccae",
    --Feet = "Republic Leggings",
    Neck = "Justice Badge",
    Waist = "Friar's Rope",
    --Ammo = "",
    Back = "Mist Silk Cape",
    --Ear1 = "Energy Earring +1",
    --Ear2 = "Energy Earring +1",
    Ring1 = "Saintly Ring +1",
    Ring2 = "Saintly Ring +1"
}

layers.Sets.Midcast["Dark Magic Enfeebling"]={
    Head = "Republic Cap",
    Body = "Baron's Saio",
	--Hands = "Republic Mittens",
	--Legs = "Windurstian Slops",
    --Feet = "Republic Leggings",
    Neck = "Black Neckerchief",
    --Waist = "Friar's Rope",
    --Ammo = "",
    --Back = "Mist Silk Cape",
    --Ear1 = "Energy Earring +1",
    --Ear2 = "Energy Earring +1",
    Ring1 = "Eremite's Ring +1",
    Ring2 = "Eremite's Ring +1"
	
}

return layers