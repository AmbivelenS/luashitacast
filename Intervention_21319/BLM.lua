local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '2'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);




local combatMode = layers.CreateModeGroup('Resist', {'Low', 'High', 'OneFifty'}, '@t')
local weaponMode = layers.CreateModeGroup('Weapons', {'Staves', 'Warp'}, '@w')
local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')


layers.Sets.Idle = {

    Head = "Sorcerer's Petas.",
    Body = "Sorcerer's Coat",
    Hands = "Wizard's Gloves",
    Legs = "Mahatma Slops",
    Feet = "Wizard's Sabots",
    Neck = "Philomath Stole",
    Waist = "Sorcerer's Belt",
    Ammo = "Phtm. Tathlum",
    Back = "Black Cape +1",
    Ear1 = "Morion Earring",
    Ear2 = "Moldavite Earring",
    Ring1 = "Diamond Ring",
    Ring2 = "Snow Ring"

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

layers.Sets.Precast = {
    Head = "Nashira Turban",
    Waist = "Swift Belt",

}

--Mode Mid Cast setup
layers.Sets.Low.Midcast['Single Target Elemental'] = {
    Head = "Wzd. Petasos +1",
    Body = "Igqira Weskit",
    Hands = "Zenith Mitts",
    Neck = "Philomath Stole",
    Feet = "Src. Sabots +1",
}
layers.Sets.High.Midcast['Single Target Elemental'] = {
    Head = "Sorcerer's Petas.",
    Body = "Igqira Weskit",
    Hands = "Wizard's Gloves",
    Neck = 'Elemental Torque',  
    Feet = "Src. Sabots +1",

}


layers.Sets.Low.Midcast['Ga'] = layers.Sets.Low.Midcast['Single Target Elemental']

layers.Sets.Low.Midcast['Ga'] = layers.Sets.High.Midcast['Single Target Elemental']


layers.Sets.Low.Midcast['Enfeebling Elemental'] = {
    Head = "Wzd. Petasos +1",
    Body = "Errant Hpl.",
    Hands = "Errant Cuffs",
    Neck = "Philomath Stole",
}
layers.Sets.High.Midcast['Enfeebling Elemental'] = {
    Head = "Sorcerer's Petas.",
    Body = "Errant Hpl.",
    Hands = "Wizard's Gloves",
    Neck = 'Elemental Torque',  
}

layers.Sets.OneFifty.Midcast['Enfeebling Elemental'] = {
    Main = "Kirin's Pole"
    Head = "Wzd. Petasos +1",
    Body = "Errant Hpl.",
    Hands = "Errant Cuffs",
    Legs = "Mahatma Slops",
    Feet = "Src. Sabots +1",
    Neck = "Philomath Stole",
    Waist = "Sorcerer's Belt",
    Ammo = "Phtm. Tathlum",
    Back = "Black Cape +1",
    Ear1 = "Morion Earring",
    Ear1 = "Morion Earring",
    Ring1 = "Diamond Ring",
    Ring2 = "Snow Ring"
}


-- Setup base sets for specific spells

layers.Sets.Midcast['Enfeebling'] = {
    Head = "Sorcerer's Petas.",
    Body = 'Wizard\'s Coat',

}



layers.Sets.Midcast['Enhancing'] ={
}

layers.Sets.Midcast['Stoneskin'] ={
    Main = "Water Staff",
    Head = "Traveler's Hat",
    Body = "Errant Hpl.",
    Hands = "Errant Cuffs",
    Legs = "Mahatma Slops",
    Feet = "Errant Pigaches",
    Neck = "Justice Badge",
    Ring1 = "Saintly Ring +1",
    Ring2 = "Saintly Ring +1",


}

layers.Sets.Midcast['Dark'] = {
    Hands = "Sorcerer's Gloves",
    Legs = 'Wizard\'s Tonban',
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

-- Logic

layers.RegisterCallback("PostHandleMidcast", function(spell)
    local player = gData.GetPlayer()
    if player.MPP <= 50 then
        gFunc.Equip("Neck", "Uggalepih Pendant")
        -- if layers.GetClassifiers('Spell', spell.Name)['Elemental Ninjutsu'] then
        --     gFunc.Equip("Waist", "Ryl.Kgt. Belt")
        -- end
    end
end, "Midcast Uggalepih Pendant")

return layers
