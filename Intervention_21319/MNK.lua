local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '11'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')


layers.Sets.Idle = {

    Head = "Republic Cap",
    Body = "Power Gi",
    Hands = "Battle Gloves",
    Legs = "Windurstian Slops",
    Feet = "Republic Leggings",
    Neck = "Justice Badge",
    Waist = "Purple Belt",
    Ammo = "",
    --Back = "Mist Silk Cape",
    Ear1 = "Energy Earring +1",
    Ear2 = "Energy Earring +1",
    Ring1 = "Courage Ring",
    Ring2 = "Courage Ring"

}


layers.Sets.Ability['Charm'] ={
    Head = "Noble's Ribbon",
    --Body = "Power Gi",
    --Hands = "Battle Gloves",
    --Legs = "Windurstian Slops",
    --Feet = "Republic Leggings",
    Neck = "Bird Whistle",
    --Waist = "Purple Belt",
    --Ammo = "",
    --Back = "Mist Silk Cape",
    --Ear1 = "Energy Earring +1",
    --Ear2 = "Energy Earring +1",
    Ring1 = "Hope Ring",
    Ring2 = "Hope Ring"
}

return layers
