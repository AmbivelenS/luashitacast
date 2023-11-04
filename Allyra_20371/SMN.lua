local layers = gFunc.LoadFile('layers\\layers.lua')

local weaponMode = layers.CreateModeGroup('Weapons', {'Staves', 'Warp'}, '@w')


layers.Sets.Idle = {

    Head = "",
    Body = "Vermillion Cloak",
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
    Body = "Errant Hpl.",
    Legs = "Baron's Slops",

}

layers.Sets.Staves.Idle = {Main = 'Earth Staff'}
layers.Sets.Warp.Idle = {Main = "Warp Cudgel"}

--Staff Logic

layers.Sets.PetIdle['Light Affinity'] = { 
    Main = "Light Staff",
    Hands = "Carbuncle Mitts",
    Legs = "Evoker's Spats",  }

layers.Sets.PetIdle['Dark Affinity'] = { 
    Main = "Dark Staff",
    Hands = "Summoner's Bracers",
    Legs = "Evoker's Spats", }

layers.Sets.PetIdle['Earth Affinity'] = { 
    Main = "Earth Staff",
    Hands = "Summoner's Bracers",
    Legs = "Evoker's Spats", }

layers.Sets.PetIdle['Water Affinity'] = { 
    Main = "Water Staff",
    Hands = "Summoner's Bracers",
    Legs = "Evoker's Spats", }

layers.Sets.PetIdle['Wind Affinity'] = { 
    Main = "Wind Staff",
    Hands = "Summoner's Bracers",
    Legs = "Evoker's Spats", }

layers.Sets.PetIdle['Fire Affinity'] = { 
    Main = "Fire Staff",
    Hands = "Summoner's Bracers",
    Legs = "Evoker's Spats", }

layers.Sets.PetIdle['Ice Affinity'] = { 
    Main = "Ice Staff",
    Hands = "Summoner's Bracers",
    Legs = "Evoker's Spats", }

layers.Sets.PetIdle['Lightning Affinity'] = { 
    Main = "Thunder Staff",
    Hands = "Summoner's Bracers",
    Legs = "Evoker's Spats", }

layers.Sets.PetIdle['Carbuncle'] = {
    Main = "Light Staff",
    Hands = "Carbuncle Mitts",
    Legs = "Evoker's Spats", }

layers.Sets.PetEngaged = layers.Sets.PetIdle

--layers.Sets.PetResting  = {}



layers.Sets.Ability['Blood Pact'] ={
    Hands = "Summoner's Bracers",
    Legs = "Summoner's Spats",
    Body = "Summoner's Doublet"


}

-- Staff related Enfeebling and Healing

layers.Sets.Midcast['Light Affinity'] = { Main = "Light Staff" }


return layers