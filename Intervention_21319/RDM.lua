local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '9'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')

layers.Sets.Idle = {

    Head = "Baron's Chapeau",
    Body = "Baron's Saio",
    Hands = "Republic Mittens",
    Legs = "Mage's Slacks",
    Feet = "Republic Leggings",
    Neck = "Justice Badge",
    Waist = "Mrc.Cpt. Belt",
    Ammo = "Morion Tathlum",
    Back = "White Cape +1",
    Ear1 = "Morion Earring",
    Ear2 = "Morion Earring",
    Ring1 = "Saintly Ring +1",
    Ring2 = "Saintly Ring +1"

}


layers.Sets.XP.Idle = {Ring1 = "Chariot Band"}

layers.Sets.Resting = {
    Legs = "Baron's Slops",

}
-- Precast
layers.Sets.Precast={
    Belt = "Swift Belt",
}

-- Enfeebling Sets

layers.Sets.Midcast["White Magic Enfeebling"]={
    Head = "Traveler's Hat",
    Body = "Baron's Saio",
    Hands = "Devotee's Mitts",
    Legs = "Wonder Braccae",
    --Feet = "Republic Leggings",
    Neck = "Justice Badge",
    Waist = "Mrc.Cpt. Belt",
    --Ammo = "",
    Back = "White Cape +1",
    --Ear1 = "Morion Earring",
    --Ear2 = "Morion Earring",
    Ring1 = "Saintly Ring +1",
    Ring2 = "Saintly Ring +1"
}

layers.Sets.Midcast["Dark Magic Enfeebling"]={
    Head = "Baron's Chapeau",
    Body = "Baron's Saio",
	--Hands = "Republic Mittens",
	--Legs = "Mage's Slacks",
    --Feet = "Republic Leggings",
    Neck = "Black Neckerchief",
    --Waist = "Mrc.Cpt. Belt",
    --Ammo = "",
    Back = "Black Cape +1",
    --Ear1 = "Morion Earring",
    --Ear2 = "Morion Earring",
    Ring1 = "Eremite's Ring +1",
    Ring2 = "Eremite's Ring +1"
	
}

layers.Sets.Midcast['Single Target Elemental'] = {
    Head = "Baron's Chapeau",
    Body = "Baron's Saio",
	--Hands = "Republic Mittens",
	--Legs = "Mage's Slacks",
    --Feet = "Republic Leggings",
    Neck = "Black Neckerchief",
    --Waist = "Mrc.Cpt. Belt",
    --Ammo = "",
    Back = "Black Cape +1",
    --Ear1 = "Morion Earring",
    Ear2 = "Moldavite Earring",
    Ring1 = "Eremite's Ring +1",
    Ring2 = "Eremite's Ring +1"
	
}


layers.Sets.Midcast['Stoneskin']={
    Head = "Traveler's Hat",
    Body = "Baron's Saio",
    Hands = "Devotee's Mitts",
    Legs = "Wonder Braccae",
    --Feet = "Republic Leggings",
    Neck = "Justice Badge",
    Waist = "Mrc.Cpt. Belt",
    --Ammo = "",
    Back = "White Cape +1",
    --Ear1 = "Morion Earring",
    --Ear2 = "Morion Earring",
    Ring1 = "Saintly Ring +1",
    Ring2 = "Saintly Ring +1"   
}
layers.Sets.Ability['Convert']={

}

layers.RegisterCallback("PostHandleResting", function()
    local player = gData.GetPlayer()
    if player.SubJob == "BLM" then
        gFunc.Equip("Back", "Wizard's Mantle")
    end
end, "/BLM JSE Gear")

return layers