local profile = {};
local sets = {
    ['Idle'] = {
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
    },
    ['TP'] = {
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
    ['WS'] = {
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
    },
    ['Souleater'] = {
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
    ['LastResort'] = {
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
        Feet = 'Abyss Sollerets',
    },
    ['WeaponBash'] = {
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
    },
    ['ArcaneCircle'] = {
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
    ['Asleep'] = {
        Ammo = 'Happy Egg',
        Head = 'Optical Hat',
        Neck = 'Opo-opo Necklace',
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
    ['Refresh'] = {
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
    },
    ['Absorb'] = {
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
    ['BioDrainAspir'] = {
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
    },
    ['Enfeebling'] = {
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
    ['Elemental'] = {
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
    ['Defense'] = {
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
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;