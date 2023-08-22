local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '1'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


layers.Sets.PDT = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Abyss Flanchard',
        Feet = 'Homam Gambieras',
    },

layers.Sets.Refresh = {
        Neck = 'Parade Gorget',

}

layers.Sets.Idle = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Parade Gorget',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
    }

layers.Sets.Engaged = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
    }

layers.Sets.Weaponskill ={
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Sun Ring',
        Ring2 = 'Sun Ring',
        Back = 'Abyss Cape',
        Waist = 'Life Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
}

layers.Sets.Ability['Souleater'] = {
        Ammo = 'Happy Egg',
        Head = 'Chaos Burgeonet',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Gloom Breastplate',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
    },
layers.Sets.Ability['WeaponBash'] = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Chaos Gauntlets',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
}
layers.Sets.Ability['Reward'] ={
        Body = "Monster Jackcoat",
        Hands = 'Ogre Gloves',
        Feet = 'Beast Gaiters',
        Neck = 'Justice Badge',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
}


layers.Sets.Ability['ArcaneCircle'] = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Chaos Sollerets',
    },


layers.Sets.Dark = {
        Ammo = 'Happy Egg',
        Head = 'Chaos Burgeonet',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Abyss Flanchard',
        Feet = 'Homam Gambieras',

layers.Sets.Elemental = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
    },

layers.Sets.Enfeebling = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Chaos Cuirass',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Abyss Flanchard',
        Feet = 'Abyss Sollerets',
    },

layers.Sets.AbsorbStat = {
        Ammo = 'Happy Egg',
        Head = 'Chaos Burgeonet',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
    },

layers.Sets.Midcast['Dark Affinity'] = layers.Sets.Dark

layers.Sets.Midcast["Elemental"] = layers.Sets.Elemental

layers.Sets.Midcast['Enfeebling'] = layers.Sets.Enfeebling

layers.Sets.Midcast["Absorb-Stat"] = layers.Sets.AbsorbStat




return layers