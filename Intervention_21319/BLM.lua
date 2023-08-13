local layers = gFunc.LoadFile('layers\\layers.lua')

local combatMode = layers.CreateModeGroup('INT-MAB', {'INT', 'MAB'}, '@t')


layers.Sets.Idle = {

    Head = "Blue Ribbon",
    Body = "Baron's Saio",
    Hands = "Seer's Mitts +1",
    Legs = "Seer's Slacks",
    Feet = "Wonder Clomps",
    Neck = "Black Neckerchief",
    Waist = "Mantra Belt",
    Ammo = "Morion Tathlum",
    Ear1 = "Morion Earring",
    Ear2 = "Moldavite Earring",
    Ring1 = "Eremite's Ring",
    Ring2 = "Eremite's Ring"

}

layers.Sets.Resting = {
    Main = "Dark Staff",
    Body = "Seer's Tunic",
    Legs = "Baron's Slops",

}


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

layers.RegisterCallback("PostHandleMidcast", function(spell)
    local player = gData.GetPlayer()
    if (combatMode.current == "MAB") then
        print(combatMode.current)
        gFunc.Equip("Head", "Bastokan Circlet")
    end
end , "Midcast MAB Set")

return layers