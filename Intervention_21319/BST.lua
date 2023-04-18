local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

--Logic for custom functions, search for commented names to find what they are connected to.
    -- LevelSync
local highestGearLevel = 55
    -- CustomProfiles
-- local customProfiles = {profile.Sets, profile.Sync}
-- local customSets = {"Hybrid","Acc"}
    --ProfileValues
local macroBook = '4'
local macroSet = '1'
local RegenGearHPP = 0
local RefreshGearMPP = 0

profile.Sets = {
    mainOneHand = {
        Main = "Darksteel Pick +1",
        Sub = "Maple Shield",
    },
    mainDualWield ={
        Main = "Darksteel Pick +1",
        Sub = "Barbaroi Axe",
    },
    Idle = {
        Head = 'Shep. Bonnet',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Ryl.Kgt. Chainmail',
        Back = 'Amemet Mantle',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Wonder Clomps',
    },
	Idle_Regen = {
	},
	Idle_Refresh = {
	},
	Tp_Default = { --Haste Gear
        Head = 'Shep. Bonnet',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Ryl.Kgt. Chainmail',
        Hands = 'Battle Gloves',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Wonder Clomps',
    },

    --Tables here are empty and will be filled in by CustomProfiles
	Tp_Hybrid ={},

    Tp_Acc ={},

    --Custom Tables end here


    --
    Hybrid ={ --STR / Haste / ACC
        Neck = 'Spike Necklace',
        Hands = 'Wonder Mitts',
        Feet = 'Wonder Clomps',
	},
	Acc={ --ACC
        Hands = 'Beast Gloves',
		Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',

	
	},

	Ws_Default = {
        Head = 'Mrc.Cpt. Headgear',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Wonder Kaftan',
        Hands = 'Wonder Mitts',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Brave Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Wonder Clomps',
	},
	Ws_Hybrid = {
    },
	Ws_Acc = {
		Neck = 'Peacock Amulet',
        Waist = 'Life Belt',
        Hands = 'Beast Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',

	},
	Dt = {
	},
	Movement = {
	},
	Pet_Dt = {
	},

    Testing = {
        Main = 'Viking Axe',
        Sub = 'Maple Shield',
        Ammo = 'W. Meat Broth',
        Head = 'Mrc.Cpt. Headgear',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Ryl.Kgt. Chainmail',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Waist = 'Life Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Wonder Clomps',
    },
	-- Temp = gFunc.Combine(base, override)
};


--Level Sync Set
profile.Sync = {
    mainOneHand = {
        Main = "Mythril Pick",
        Sub = "Maple Shield",
    },
    mainDualWield ={
        Main = "Mythril Pick +1",
        Sub = "Viking Axe",
    },
    Idle = {
        Head = 'Mrc.Cpt. Headgear',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Wonder Kaftan',
        Hands = 'Battle Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Waist = 'Life Belt',
        Legs = 'Republic Subligar',
        Feet = 'Wonder Clomps',
    },
    Idle_Regen = {
    },
    Idle_Refresh = {
    },
    Tp_Default = { --Haste Gear
        Head = 'Mrc.Cpt. Headgear',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Mrc.Cpt. Doublet',
        Hands = 'Battle Gloves',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Life Belt',
        Legs = 'Republic Subligar',
        Feet = 'Wonder Clomps',
    },
    Tp_Hybrid ={},

    Tp_Acc ={},
    Hybrid ={ --STR / Haste / ACC
        Neck = 'Spike Necklace',
        Hands = 'Wonder Mitts',
        Feet = 'Wonder Clomps',
    },
    Acc={ --ACC
        Hands = 'Beast Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',

    
    },

    Ws_Default = {
        Head = 'Mrc.Cpt. Headgear',
        Neck = 'Spike Necklace',
        Ear1 = 'Beetle Earring +1',
        Ear2 = 'Beetle Earring +1',
        Body = 'Wonder Kaftan',
        Hands = 'Wonder Mitts',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Brave Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Wonder Clomps',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
        Neck = 'Peacock Amulet',
        Waist = 'Life Belt'
    },
    Dt = {
    },
    Movement = {
    },
    Pet_Dt = {
    },

};
profile.shared = {
    HP = {
        Body = 'Wonder Kaftan',
        Hands = 'Wonder Mitts',
        Back = 'Breath Mantle',
        Legs = 'Wonder Braccae',
        Feet = 'Wonder Clomps',
    },
    Charm = {
        Main = "Light Staff",
        Head = 'Noble\'s Ribbon',
        Hands ='Beast Gloves',
        Feet = "Beast Gaiters",
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Corsette',

    },
    Reward = {
        Feet = "Beast Gaiters"
    },

};

-- Generating Differing set tables for TP and WS, looping through custom sets and generating Table values in the gear sets. NOTE: This maybe depecated keeping code
-- CustomProfiles
-- for _, profiles in ipairs(customProfiles) do
--     print(profiles)
--     for _, x in ipairs(customSets) do
--         profiles[('Tp_' .. x)] = gFunc.Combine(profiles['Tp_Default'], profiles[x])
--     end
-- end

profile.Packer = {
};


--ProfileValues
profile.OnLoad = function()
	gcinclude.Initialize();
    gSettings.AllowAddSet = true;
	AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);
	gcinclude.settings.RegenGearHPP = RegenGearHPP;
    gcinclude.settings.RefreshGearMPP = RefreshGearMPP;
end

profile.OnUnload = function()
	gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.SetCommands(args);
end
	
profile.HandleDefault = function()
    
    --Logic to determine what gear set to use
    --LevelSync
    local syncing = gcinclude.levelSync(highestGearLevel)
    local gearSet
    local player = gData.GetPlayer();

    if syncing == 0 then
        gearSet = profile.Sets
    elseif syncing == 1 then
        gearSet = profile.Sync
    end

    if player.SubJob == 'NIN' then
        weaponEquip = gFunc.Combine(gearSet.Idle, gearSet.mainDualWield)
    else
        weaponEquip = gFunc.Combine(gearSet.Idle, gearSet.mainOneHand)
    end

	gFunc.EquipSet(weaponEquip);
    gearSet.TP_Hybrid = gFunc.Combine(gearSet.Tp_Default, gearSet.Hybrid)
    gearSet.TP_Acc = gFunc.Combine(gearSet.Tp_Default, gearSet.Acc)

    
    if (player.Status == 'Engaged') then
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) 
        else 
            gFunc.EquipSet(gearSet.Tp_Default)
        end
		--if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(pgearSet.TH) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(gearSet.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(gearSet.Movement);
    end
	
    gcinclude.CheckDefault();
    --if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(profile.Sets.Dt) end;
    --if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(profile.Sets.Movement) end;
end

profile.HandleWeaponskill = function()
    local canWS = gcinclude.CheckWsBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    else
        local ws = gData.GetAction();
    
        
	if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) 
    else
        gFunc.EquipSet(profile.Sets.Ws_Default)
    end       
--        if string.match(ws.Name, 'Aeolian Edge') then
--            gFunc.EquipSet(profile.Sets.Aedge_Default)
--            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
--            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
--            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
--        elseif string.match(ws.Name, 'Savage Blade') then
--            gFunc.EquipSet(profile.Sets.Savage_Default)
--            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
--            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
 --           if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;

	end
end
profile.HandleAbility = function()
    local ability = gData.GetAction();
	if string.match(ability.Name, 'Charm') then
		gFunc.EquipSet(profile.shared.Charm); 
    elseif string.match(ability.Name, 'Reward') then
        gFunc.EquipSet(profile.shared.Reward);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();

    if (spell.Skill == 'Ninjutsu') then
        if string.contains(spell.Name, 'Utsusemi') then
            gFunc.EquipSet(profile.Sets.Nuke);
			--gFunc.EquipSet(profile.Sets.Utsu);
        elseif (gcinclude.NinNukes:contains(spell.Name)) then
            gFunc.EquipSet(profile.Sets.Nuke);
        else
			gFunc.EquipSet(profile.Sets.Nuke);
            --gFunc.EquipSet(profile.Sets.Macc);
        end
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end


return profile;