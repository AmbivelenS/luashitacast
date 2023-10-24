local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '10'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);


-- local boltMode = layers.CreateModeGroup('boltStat', {'Off', 'Mnd', 'Int'}, '@t')
local attackMode = layers.CreateModeGroup('AttackMode', {'Base', 'Acc', 'Stat'}, '@t')
local idleEquip = layers.CreateModeGroup('ExpBand', {'Off', 'XP'}, '@x')

layers.Sets.Idle = {
        Head = 'Noct Beret +1',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Irn.Msk. Gambison',
        Back = '',
        Hands = "Noct Gloves +1",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = "Republic Cuisses" ,
        Feet = 'Wonder Clomps',
    }

layers.Sets.Engaged = {
        Head = 'Noct Beret +1',
        Neck = "Peacock Amulet",
        Ear1 = 'Horn Earring +1',
        Ear2 = 'Horn Earring +1',
        Body = 'Wonder Kaftan',
        Back = '',
        Hands = "Wonder Mitts",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Waist = 'Ryl.Kgt. Belt',
        Legs = "Republic Cuisses" ,
        Feet = 'Wonder Clomps',
}
layers.Sets.XP.Idle = {Ring1 = "Chariot Band"}

--Midshot
layers.Sets.Base.Midshot = {
        Head = "Hunter's Beret",
        Neck = "Ranger's Necklace",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Irn.Msk. Gambison',
        Hands = "Hunter's Bracers",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Crossbowman Ring',
        Legs = "Republic Cuisses" ,
	}

layers.Sets.Acc.Midshot = {
        Head = 'Noct Beret +1',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Irn.Msk. Gambison',
        Hands = "Hunter's Bracers",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Carapace Ring +1',
        Legs = "Noct Brais +1" ,
        }

layers.Sets.Stat.Midshot = {
        Head = 'Noct Beret +1',
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
     }

layers.Sets.Weaponskill = {
        Head = 'Noct Beret +1',
        Neck = "Spike Necklace",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Wonder Kaftan',
        Hands = "Wonder Mitts",
        Ring1 = 'Rajas Ring',
        Ring2 = 'Carapace Ring +1',
        Legs = "Wonder Braccae",
}

layers.Sets.Weaponskill["Slug Shot"] = {
        Head = 'Noct Beret +1',
        Neck = "Peacock Amulet",
        Ear1 = 'Drone Earring',
        Ear2 = 'Drone Earring',
        Body = 'Irn.Msk. Gambison',
        Hands = "Hunter's Bracers",
        Ring1 = 'Carapace Ring +1',
        Ring2 = 'Carapace Ring +1',
        Legs = "Noct Brais +1" ,
}

layers.Sets.Weaponskill["Sidewinder"] = layers.Sets.Weaponskill["Slug Shot"]

layers.Sets.Ability['Sharpshot'] ={
        Legs = "Hunter's Braccae"
}

layers.Sets.Ability['Shadowbind'] ={
        Hands = "Hunter's Bracers"
}


-- layers.RegisterCallback("PostHandleIdle", function()
--         local equip = gData.GetEquipment()
--         local player = gData.GetPlayer()        
--         if (equip.Ammo.Name =="Holy Bolt") then
--         layers.Sets.Midshot = layers.Sets.Mnd;
--         else
--                 layers.Sets.Midshot = layers.Sets.Acc;
--     end
-- end, "Gaudy Harness Equip")          
return layers