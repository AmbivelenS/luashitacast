local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '1'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);

local refreshGorget = layers.CreateModeGroup('RefreshGorget', {'Off', 'RGorget'}, '@1')

local refreshBody = layers.CreateModeGroup('RefreshBody', {'Off', 'RBody'}, '@2')

local sleepNeck = layers.CreateModeGroup('SleepNeck', {'Off', 'SNeck'}, '@3')

local TPMode = layers.CreateModeGroup("TPSet", {"Haste", "MidAcc" , "HighAcc"}, '@4')
local WSMode = layers.CreateModeGroup("WSSet", {"Base", "MidAccWS", "HighAccWS"}, '@5')

layers.Sets.RGorget.Idle = {Neck = 'Parade Gorget',}
layers.Sets.RBody.Idle = {
        Head = '',
        Body = 'Vampire Cloak',
        Legs = 'Crimson Cuisses',}
layers.Sets.SNeck.Idle = {Neck = 'Opo-opo Necklace',}

layers.Sets.RGorget.Engaged = {Neck = 'Parade Gorget',}
layers.Sets.RBody.Engaged = {
        Head = '',
        Body = 'Vampire Cloak',
        Legs = 'Homam Cosciales',}
layers.Sets.PDT = {
        Ammo = 'Happy Egg',
        Head = 'Homam Zucchetto',
        Neck = 'Peacock Amulet',
        Ear1 = 'Coral Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Haubergeon',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',
    }

layers.Sets.Refresh = {
        Neck = 'Parade Gorget',
    }

layers.Sets.Idle = {
        Neck = 'Parade Gorget',
        Ear1 = 'Coral Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Vampire Cloak',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Crimson Cuisses',
        Feet = 'Homam Gambieras',
    }

layers.Sets.Haste.Engaged = {
        Head = 'Homam Zucchetto',
        Neck = 'Peacock Amulet',
        Body = 'Haubergeon',
        Feet = 'Homam Gambieras',
        Waist = 'Swift Belt',
        Ear1 = 'Coral Earring',
        Ear2 = 'Brutal Earring',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Legs = 'Homam Cosciales',
    }

layers.Sets.MidAcc.Engaged ={
        Head = "Optical Hat",
}

layers.Sets.HighAcc.Engaged ={
        Head = "Optical Hat",
        Waist = 'Life Belt',

}
layers.Sets.Base.Weaponskill ={
        Neck = 'Peacock Amulet',
        Body = 'Haubergeon',
        Hands = 'Black Gadlings',
        Ring2 = 'Ruby Ring',
        Waist = 'Life Belt',
        Feet = 'Black Sollerets',
        Head = 'Optical Hat',
        Legs = 'Black Cuisses',
    }

layers.Sets.MidAccWS.Weaponskill ={

}

layers.Sets.HighAccWS.Weaponskill ={

}

layers.Sets.Ability['Souleater'] = {
        Head = 'Chaos Burgeonet',
        Body = 'Gloom Breastplate',
    }
layers.Sets.Ability['Weapon Bash'] = {
        Hands = 'Chaos Gauntlets',
        Body = 'Haubergeon',
    }

layers.Sets.Ability['Arcane Circle'] = {
        Feet = 'Chaos Sollerets',
        Body = 'Haubergeon',
    }
layers.Sets.Ability['Last Resort'] = {
        Feet = 'Abyss Sollerets',
        Body = 'Haubergeon', 
    }

layers.Sets.Dark = {
        Head = 'Chaos Burgeonet',
        Legs = 'Abyss Flanchard',
        Body = 'Haubergeon',
        Hands = 'Abyss Gauntlets',
        Ring2 = "Overlord's Ring",

    }
layers.Sets.Elemental = {
        Body = 'Abyss Cuirass',
        Hands = 'Abyss Gauntlets',
        Head = 'Homam Zucchetto',

    }

layers.Sets.Midshot = {
    Ring1 = 'Scorpion Ring',
    Ring2 = 'Scorpion Ring',

    }

layers.Sets.Enfeebling = {
        Body = 'Chaos Cuirass',
        Feet = 'Abyss Sollerets',
        Hands = 'Abyss Gauntlets',
        Head = 'Homam Zucchetto',

    }

layers.Sets.AbsorbStat = {
        Head = 'Chaos Burgeonet',
        Legs = 'Black Cuisses',
        Body = 'Scorpion Harness',
        Hands = 'Black Gadlings',
        Feet = 'Black Sollerets'
    }

layers.Sets.Midcast['Dark Affinity'] = layers.Sets.Dark

layers.Sets.Midcast["Elemental"] = layers.Sets.Elemental

layers.Sets.Midcast['Enfeebling'] = layers.Sets.Enfeebling

layers.Sets.Midcast["Absorb-Stat"] = layers.Sets.AbsorbStat




return layers