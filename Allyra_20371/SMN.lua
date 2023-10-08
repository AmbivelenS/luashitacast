local layers = gFunc.LoadFile('layers\\layers.lua')

local weaponMode = layers.CreateModeGroup('Weapons', {'Staves', 'Warp'}, '@w')


layers.Sets.Idle = {

    Head = "",
    Body = "Austere Robe",
    Hands = "",
    Legs = "",
    Feet = "",
    Neck = "",
    Waist = "",
    Ammo = "",
    Back = "",
    Ear1 = "",
    Ear2 = "",
    Ring1 = "",
    Ring2 = ""

}

layers.Sets.Resting = {
    Main = "Dark Staff",
    Body = "Seer's Tunic +1",
    Legs = "",

}

layers.Sets.Staves.Idle = {Main = 'Earth Staff'}
layers.Sets.Warp.Idle = {Main = "Warp Cudgel"}

--Staff Logic

layers.Sets.PetIdle['Light Affinity'] = { 
    Main = "Light Staff",
    Hands = "Evoker's Mitts"  }

layers.Sets.PetIdle['Dark Affinity'] = { 
    Main = "Dark Staff",
    Hands = "Evoker's Bracers" }

layers.Sets.PetIdle['Earth Affinity'] = { 
    Main = "Earth Staff",
    Hands = "Evoker's Bracers" }

layers.Sets.PetIdle['Water Affinity'] = { 
    Main = "Water Staff",
    Hands = "Evoker's Bracers" }

layers.Sets.PetIdle['Wind Affinity'] = { 
    Main = "Wind Staff",
    Hands = "Evoker's Bracers" }

layers.Sets.PetIdle['Fire Affinity'] = { 
    Main = "Fire Staff",
    Hands = "Evoker's Bracers" }

layers.Sets.PetIdle['Ice Affinity'] = { 
    Main = "Ice Staff",
    Hands = "Evoker's Bracers" }

layers.Sets.PetIdle['Lightning Affinity'] = { 
    Main = "Thunder Staff",
    Hands = "Evoker's Bracers" }

layers.Sets.PetIdle['Carbuncle'] = {
    Main = "Light Staff",
    Hands = "Carbuncle Mitts" }

layers.Sets.PetEngaged = layers.Sets.PetIdle

--layers.Sets.PetResting  = {}



layers.Sets.Ability['Blood Pact'] ={

}

-- Staff related Enfeebling and Healing

layers.Sets.Midcast['Light Affinity'] = { Main = "Light Staff" }


return layers