local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '10'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


-- local boltMode = layers.CreateModeGroup('boltStat', {'Off', 'Mnd', 'Int'}, '@t')
local attackMode = layers.CreateModeGroup('AttackMode', {'Base', 'Acc', 'Stat'}, '@t')
local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')
local regen = layers.CreateModeGroup('RegenGear', {'Off', 'On'}, '@3')

layers.Sets.Idle = {
        Head = "Scout's Beret",
        Neck = "Jeweled Collar",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Kirin's Osode",
        Back = 'Amemet Mantle',
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Waist = "Scout's Belt",
        Legs = "Byakko's Haidate" ,
        Feet = "Scout's Socks",
    }

layers.Sets.Engaged = {
        Head = 'Optical Hat',
        Neck = "Peacock Amulet",
        Ear1 = 'Horn Earring +1',
        Ear2 = 'Horn Earring +1',
        Body = "Kirin's Osode",
        Back = 'Amemet Mantle',
        Hands = "Wonder Mitts",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = "Republic Cuisses" ,
        Feet = 'Wonder Clomps',
}
layers.Sets.XP.Idle = {Ring1 = "Chariot Band"}

--Midshot

-- Preshot: Snapshot, Rapid Shot
-- Midshot: R.Acc, STP, Crit. Rate % / Crit. Damage+, R.Att, Recycle/Etc
layers.Sets.Preshot = {
        Head = "Hunter's Beret",  
        Body = "Scout's Jerkin",  
}
layers.Sets.Base.Midshot = {
        Head = "Scout's Beret",
        Neck = "Ranger's Necklace",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Hunter's Jerkin",
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Crossbowman Ring',
        Legs = "Scout's Braccae" ,
        Feet = "Scout's Socks",

        }

layers.Sets.Acc.Midshot = {
        Head = 'Optical Hat',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Hunter's Jerkin",
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Scorpion Ring +1',
        Legs = "Scout's Braccae" ,
        Feet = "Scout's Socks",

        }

layers.Sets.Stat.Midshot = {
        Head = 'Optical Hat',
        Neck = "Ranger's Necklace",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Wonder Kaftan',
        Hands = "Wonder Mitts",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Crossbowman Ring',
        Legs = "Wonder Braccae",
}
layers.Sets.Mnd = {
        Head = "Traveler's Hat",
        Neck = "Justice Badge",
        Body = 'Wonder Kaftan',
        Hands = "Devotee's Mitts",
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Waist = "Friar's Rope",
        Legs = "Wonder Braccae",
        Feet = "Suzaku's Sune-Ate"
     }

layers.Sets.Weaponskill = {
        Head = 'Wyvern Helm',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Kirin's Osode",
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Scorpion Ring +1',
        Legs = "Scout's Braccae" ,
        Feet = "Scout's Socks",

}

layers.Sets.Base.Weaponskill["Slug Shot"] = {
        Head = 'Wyvern Helm',
        Neck = "Peacock Amulet",
        Ear1 = 'Minuet Earring',
        Ear2 = 'Drone Earring',
        Body = "Kirin's Osode",
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Scorpion Ring +1',
        Legs = "Scout's Braccae" ,
        Feet = "Scout's Socks",

}

layers.Sets.Acc.Weaponskill["Slug Shot"] = {
        Head = 'Optical Hat',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Hunter's Jerkin",
        Hands = "Hunter's Bracers",
        Ring1 = 'Scorpion Ring +1',
        Ring2 = 'Scorpion Ring +1',
        Legs = "Scout's Braccae" ,
        Feet = "Scout's Socks",

}

layers.Sets.Weaponskill["Sidewinder"] = layers.Sets.Weaponskill["Slug Shot"]

layers.Sets.Ability['Sharpshot'] ={
        Legs = "Hunter's Braccae"
}

layers.Sets.Ability['Shadowbind'] ={
        Hands = "Hunter's Bracers"
}

layers.Sets.Ability["Scavenge"] ={
        Feet = "Hunter's Socks",
}

layers.Sets.Ability["Camouflage"] ={
        Body = "Hunter's Jerkin"
}
-- layers.RegisterCallback("PostHandleMidshot", function()
--         local equip = gData.GetEquipment()
--         local player = gData.GetPlayer()        
--         if (equip.Ammo.Name =="Holy Bolt") then
--         layers.Sets.Midshot = layers.Sets.Mnd;
--         else
--                 layers.Sets.Midshot = layers.Sets.Acc;
--     end
-- end, "Gaudy Harness Equip")   

layers.RegisterCallback("PostHandleEngaged", function()
        -- local equip = gData.GetEquipment()
        if regen.current == 'On' then
                -- print("Regen On")
                gFunc.Equip("Main", "Rune Axe");
                gFunc.Equip("Body", "Black Cotehardie")
        end
end, "Regen Gear")
return layers