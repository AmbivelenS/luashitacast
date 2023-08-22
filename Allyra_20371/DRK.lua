local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '1'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);

local refreshGorget = layers.CreateModeGroup('RefreshGorget', {'Off', 'RGorget'}, '@1')

local refreshBody = layers.CreateModeGroup('RefreshBody', {'Off', 'RBody'}, '@2')

layers.Sets.RGorget.Idle = {Neck = 'Parade Gorget',}
layers.Sets.RBody.Idle = {
        Head = '',
        Body = 'Vampire Cloak',}
layers.Sets.RGorget.Engaged = {Neck = 'Parade Gorget',}
layers.Sets.RBody.Engaged = {
        Head = '',
        Body = 'Vampire Cloak',}
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
    }

layers.Sets.Refresh = {
        Neck = 'Parade Gorget',
    }

layers.Sets.Idle = {
        Neck = 'Parade Gorget',
        Ear1 = 'Coral Earring',
        Ear2 = 'Optical Earring',
        Body = 'Vampire Cloak',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Abyss Cape',
        Waist = 'Swift Belt',
        Legs = 'Black Cuisses',
        Feet = 'Homam Gambieras',
    }

layers.Sets.Engaged = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Body = 'Scorpion Harness',
    }

layers.Sets.Weaponskill ={
        Neck = 'Peacock Amulet',
        Body = 'Scorpion Harness',
        Hands = 'Thick Mufflers',
        Ring2 = 'Sun Ring',
        Waist = 'Life Belt',
    }

layers.Sets.Ability['Souleater'] = {
        Head = 'Chaos Burgeonet',
        Body = 'Gloom Breastplate',
    }
layers.Sets.Ability['Weapon Bash'] = {
        Hands = 'Chaos Gauntlets',
    }

layers.Sets.Ability['Arcane Circle'] = {
        Feet = 'Chaos Sollerets',
    }
layers.Sets.Ability['Last Resort'] = {
        Feet = 'Abyss Sollerets', 
    }

layers.Sets.Dark = {
        Head = 'Chaos Burgeonet',
        Legs = 'Abyss Flanchard',
    }
layers.Sets.Elemental = {

    }

layers.Sets.Enfeebling = {
        Body = 'Chaos Cuirass',
        Feet = 'Abyss Sollerets',
    }

layers.Sets.AbsorbStat = {
        Head = 'Chaos Burgeonet',
        Legs = 'Black Cuisses',
    }

layers.Sets.Midcast['Dark Affinity'] = layers.Sets.Dark

layers.Sets.Midcast["Elemental"] = layers.Sets.Elemental

layers.Sets.Midcast['Enfeebling'] = layers.Sets.Enfeebling

layers.Sets.Midcast["Absorb-Stat"] = layers.Sets.AbsorbStat




return layers