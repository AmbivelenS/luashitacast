local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '10'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


-- local boltMode = layers.CreateModeGroup('boltStat', {'Off', 'Mnd', 'Int'}, '@t')
local attackMode = layers.CreateModeGroup('AttackMode', {'Base', 'Acc' }, '@t')
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
        Ring1 = "Merman's Ring",
        Ring2 = "Merman's Ring",
        Waist = "Scout's Belt",
        Legs = "Byakko's Haidate" ,
        Feet = "Sct. Socks +1",
        Ammo = "Silver Bullet"
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
        Body = "Kirin's Osode",
        Hands = "Crimson Fng. Gnt.",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Crossbowman Ring',
        Legs = "Scout's Braccae" ,
        Feet = "Sct. Socks +1",

        }

layers.Sets.Acc.Midshot = {
        Head = 'Optical Hat',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Hunter's Jerkin",
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = "Merman's Ring",
        Legs = "Scout's Braccae" ,
        Feet = "Sct. Socks +1",

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

layers.Sets.Base.Weaponskill = {
        Head = 'Wyvern Helm',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Kirin's Osode",
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = "Flame Ring",
        Legs = "Scout's Braccae" ,
        Feet = "Sct. Socks +1",

}

layers.Sets.Acc.Weaponskill = {
        Head = 'Optical Hat',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Hunter's Jerkin",
        Hands = "Seiryu's Kote",
        Ring1 = "Merman's Ring",
        Ring2 = "Merman's Ring",
        Legs = "Scout's Braccae" ,
        Feet = "Sct. Socks +1",

}

layers.Sets.Base.Weaponskill["Slug Shot"] = {
        Head = 'Wyvern Helm',
        Neck = "Peacock Amulet",
        Ear1 = 'Minuet Earring',
        Ear2 = 'Drone Earring',
        Body = "Kirin's Osode",
        Hands = "Seiryu's Kote",
        Ring1 = 'Rajas Ring',
        Ring2 = "Flame Ring",
        Legs = "Scout's Braccae" ,
        Feet = "Sct. Socks +1",

}

layers.Sets.Acc.Weaponskill["Slug Shot"] = {
        Head = 'Optical Hat',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Hunter's Jerkin",
        Hands = "Seiryu's Kote",
        Ring1 = "Merman's Ring",
        Ring2 = "Merman's Ring",
        Legs = "Scout's Braccae" ,
        Feet = "Sct. Socks +1",

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

layers.Sets.Ability['Charm'] = {
        Main = "Light Staff",
        Head = "Noble's Ribbon",
        Body = "Kirin's Osode",
        --Hands ='Monster Gloves',
        --Legs = 'Bst. Trousers +1',
        --Feet = "Monster Gaiters",
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Corsette',
        Back = "Trimmer's Mantle"
}/
layers.Sets.Barrage ={
        Head = 'Optical Hat',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = "Hunter's Jerkin",
        Hands = "Htr. Bracers +1",
        Ring1 = "Merman's Ring",
        Ring2 = "Merman's Ring",
        Legs = "Scout's Braccae" ,
        Feet = "Sct. Socks +1",
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


layers.RegisterCallback("PostHandleWeaponskill", function()
        local equip = gData.GetEquipment()
        local Unlimited = gData.GetBuffCount('Unlimited Shot')
        local player = gData.GetPlayer()        
        if 
                (equip.Range.Name =="Hellfire +1") and (Unlimited == 1) then
        gFunc.Equip("Ammo", "Carapace Bullet")
        else    
                gFunc.Equip("Ammo", "Silver Bullet")

        end
end, "Carapace Weaponskill")

layers.RegisterCallback("PostHandleMidshot", function()
        local Barrage = gData.GetBuffCount('Barrage')
        if (Barrage == 1) then
                gFunc.EquipSet(layers.Sets.Barrage);
        end
end, "Barrage Gear")
return layers