local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '2'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);




local combatMode = layers.CreateModeGroup('Resist', {'Low', 'High'}, '@t')
local weaponMode = layers.CreateModeGroup('Weapons', {'Staves', 'Warp'}, '@w')
local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')


layers.Sets.Idle = {

    Head = "",
    Body = "Black Cloak",
    Hands = "Wizard's Gloves",
    Legs = "Errant Slops",
    Feet = "Wizard's Sabots",
    Neck = "Black Neckerchief",
    Waist = "Mantra Belt",
    Ammo = "Morion Tathlum",
    Back = "Black Cape +1",
    Ear1 = "Morion Earring",
    Ear2 = "Moldavite Earring",
    Ring1 = "Zircon Ring",
    Ring2 = "Zircon Ring"

}

layers.Sets.Staves.Idle = {Main = 'Earth Staff'}
layers.Sets.Warp.Idle = {Main = "Warp Cudgel"}


layers.Sets.XP.Idle = {Ring1 = "Chariot Band"}

layers.Sets.Resting = {
    Main = "Dark Staff",
    Body = "Errant Hpl.",
    Legs = "Baron's Slops",

}


-- MidCast

layers.Sets.Midcast = {}



--Mode Mid Cast setup
layers.Sets.Low.Midcast['Elemental'] = {
    Head = "Wizard's Petasos",
    Body = "Errant Hpl.",
    Hands = "Errant Cuffs",
    Neck = "Black Neckerchief",
}
layers.Sets.High.Midcast['Elemental'] = {
    Head = "Wizard's Petasos",
    Body = "Errant Hpl.",
    Hands = "Wizard's Gloves",
    Neck = 'Elemental Torque',  
}



-- Setup base sets for specific spells

layers.Sets.Midcast['Enfeebling'] = {
    Head = "Wizard's Petasos",    
    Body = 'Wizard\'s Coat',

}

layers.Sets.Midcast['Enhancing'] ={
}

layers.Sets.Midcast['Stoneskin'] ={
    Main = "Water Staff",
    Head = "Traveler's Hat",
    Body = "Errant Hpl.",
    Hands = "Errant Cuffs",
    Legs = "Errant Slops",
    Feet = "Errant Pigaches",
    Neck = "Justice Badge",
    Ring1 = "Saintly Ring",
    Ring2 = "Saintly Ring",


}

layers.Sets.Midcast['Dark'] = {
    Legs = 'Wizard\'s Tonban'
}



-- Staff related Enfeebling and Healing
layers.Sets.Midcast['Wind Enfeeblement'] = { Main = "Wind Staff" }
layers.Sets.Midcast['Ice Enfeeblement'] = { Main = "Ice Staff" }
layers.Sets.Midcast['Dark Enfeeblement'] = { Main = "Dark Staff" }
-- Stun
layers.Sets.Midcast['Lightning Enfeeblement'] = { Main = "Thunder Staff" }


layers.Sets.Midcast['Light Affinity'] = { Main = "Light Staff" }


-- Staff related Damage Spells
layers.Sets.Midcast['Dark Affinity'] = { Main = "Dark Staff" }
layers.Sets.Midcast['Earth Magic Damage'] = { Main = "Earth Staff" }
layers.Sets.Midcast['Water Magic Damage'] = { Main = "Water Staff" }
layers.Sets.Midcast['Wind Magic Damage'] = { Main = "Wind Staff" }
layers.Sets.Midcast['Fire Magic Damage'] = { Main = "Fire Staff" }
layers.Sets.Midcast['Ice Magic Damage'] = { Main = "Ice Staff" }
layers.Sets.Midcast['Lightning Magic Damage'] = { Main = "Thunder Staff" }



return layers