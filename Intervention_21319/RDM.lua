local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '9'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')

layers.Sets.Idle = {

    Head = "Republic Cap",
    Body = "Baron's Saio",
    Hands = "Republic Mittens",
    Legs = "Windurstian Slops",
    Feet = "Republic Leggings",
    Neck = "Justice Badge",
    Waist = "Mrc.Cpt. Belt",
    Ammo = "",
    Back = "Mist Silk Cape",
    Ear1 = "Morion Earring",
    Ear2 = "Morion Earring",
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
    Waist = "Mrc.Cpt. Belt",
    --Ammo = "",
    Back = "White Cape +1",
    --Ear1 = "Morion Earring",
    --Ear2 = "Morion Earring",
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
    --Waist = "Mrc.Cpt. Belt",
    --Ammo = "",
    Back = "Black Cape +1",
    --Ear1 = "Morion Earring",
    --Ear2 = "Morion Earring",
    Ring1 = "Eremite's Ring +1",
    Ring2 = "Eremite's Ring +1"
	
}

layers.Sets.Midcast['Single Target Elemental'] = {
    Head = "Republic Cap",
    Body = "Baron's Saio",
	--Hands = "Republic Mittens",
	--Legs = "Windurstian Slops",
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


layers.RegisterCallback("PostHandleResting", function()
    local player = gData.GetPlayer()
    if player.SubJob == "BLM" then
        gFunc.Equip("Back", "Wizard's Mantle")
    end
end, "/BLM JSE Gear")

return layers