local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '2'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);




local combatMode = layers.CreateModeGroup('INT-MAB', {'INT', 'MAB'}, '@t')
local weaponMode = layers.CreateModeGroup('Weapons', {'Staves', 'Warp'}, '@w')
local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')


layers.Sets.Idle = {

    Head = "Seer's Crown +1",
    Body = "Baron's Saio",
    Hands = "Wizard's Gloves",
    Legs = "Seer's Slacks",
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
    Body = "Seer's Tunic",
    Legs = "Baron's Slops",

}

layers.Sets.Midcast = {}
layers.Sets.MAB.Midcast = {Head = "Bastokan Circlet"}

layers.Sets.Midcast['Wind Enfeeblement'] = { Main = "Wind Staff" }
layers.Sets.Midcast['Ice Enfeeblement'] = { Main = "Ice Staff" }
layers.Sets.Midcast['Dark Enfeeblement'] = { Main = "Dark Staff" }

layers.Sets.Midcast['Light Affinity'] = { Main = "Light Staff" }


layers.Sets.Midcast['Dark Magic Damage'] = { Main = "Dark Staff" }
layers.Sets.Midcast['Earth Magic Damage'] = { Main = "Earth Staff" }
layers.Sets.Midcast['Water Magic Damage'] = { Main = "Water Staff" }
layers.Sets.Midcast['Wind Magic Damage'] = { Main = "Wind Staff" }
layers.Sets.Midcast['Fire Magic Damage'] = { Main = "Fire Staff" }
layers.Sets.Midcast['Ice Magic Damage'] = { Main = "Ice Staff" }
layers.Sets.Midcast['Thunder Magic Damage'] = { Main = "Thunder Staff" }



return layers