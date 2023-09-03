local layers = gFunc.LoadFile('layers\\layers.lua')

local weaponMode = layers.CreateModeGroup('Weapons', {'Staves', 'Warp'}, '@w')


layers.Sets.Idle = {

    Head = "",
    Body = "",
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
    Main = "",
    Body = "",
    Legs = "",

}

layers.Sets.Staves.Idle = {Main = 'Earth Staff'}
layers.Sets.Warp.Idle = {Main = "Warp Cudgel"}

--Staff Logic

layers.Sets.PetIdle['Light Affinity'] = { }
layers.Sets.PetIdle['Dark Affinity'] = { Main = "Dark Staff" }
layers.Sets.PetIdle['Earth Affinity'] = { Main = "Earth Staff" }
layers.Sets.PetIdle['Water Affinity'] = { Main = "Water Staff" }
layers.Sets.PetIdle['Wind Affinity'] = { Main = "Wind Staff" }
layers.Sets.PetIdle['Fire Affinity'] = { Main = "Fire Staff" }
layers.Sets.PetIdle['Ice Affinity'] = { Main = "Ice Staff" }
layers.Sets.PetIdle['Lightning Affinity'] = { Main = "Thunder Staff" }
layers.Sets.PetIdle['Carbuncle'] = {Hands = 'Carbuncle Mitts'}

layers.Sets.PetEngaged = layers.Sets.PetIdle

--layers.Sets.PetResting  = {}



layers.Sets.Ability['Blood Pact'] ={

}

-- Staff related Enfeebling and Healing

layers.Sets.Midcast['Light Affinity'] = { Main = "Light Staff" }


return layers