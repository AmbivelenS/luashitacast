local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

--Currently this script makes use of shared commands located in gcinclude and gcdisplay

--Logic for custom functions, search for commented names to find what they are connected to.
    -- LevelSync
local highestGearLevel = 10
    -- CustomProfiles
local customProfiles = {profile.Sets, profile.Sync}
local customSets = {"Hybrid","Acc"}
    --ProfileValues
local macroBook = '3'
local macroSet = '1'
local RegenGearHPP = 0
local RefreshGearMPP = 0

profile.Sets = {
    mainOneHand ={
        Main = 'Kukulcan\'s Staff',
    },
    Idle = {
        Head = 'Shep. Bonnet',
        Neck = 'Peacock Amulet',
        Body = 'Austere Robe',
        Hands = 'Evoker\'s Bracers',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Waist = 'Swift Belt',
        Legs = 'Evoker\'s Spats',
        Feet = 'Evoker\'s Pigaches',

    },
    Idle_Regen = {
    },
    Idle_Refresh = {
    },
    Tp_Default = { --Haste Gear

    },

    --Tables here are empty and will be filled in by CustomProfiles
    Tp_Hybrid ={},

    Tp_Acc ={},

    --Custom Tables end here


    --
    Hybrid ={ --STR / Haste / ACC

    },
    Acc={ --ACC

    },

    Ws_Default = {

    },
    Ws_Hybrid = {

    },
    Ws_Acc = {

    },
    Dt = {
    },
    Movement = {
    },
    Pet_Dt = {
    },
    Resting = {
        Main = 'Dark Staff',
        Body = 'Seer\'s Tunic',
        Legs = 'Barons\'s Slops',
    },
    ['testing'] = {
        Main = 'Kukulcan\'s Staff',
        Head = 'Shep. Bonnet',
        Neck = 'Peacock Amulet',
        Body = 'Evoker\'s Doublet',
        Hands = 'Evoker\'s Bracers',
        Ring1 = 'Balance Ring',
        Ring2 = 'Balance Ring',
        Waist = 'Swift Belt',
        Legs = 'Evoker\'s Spats',
        Feet = 'Evoker\'s Pigaches',
    },

};


--Level Sync Set
profile.Sync = {
    Idle = {

    },
    Idle_Regen = {
    },
    Idle_Refresh = {
    },
    Tp_Default = { --Haste Gear

    },

    --Tables here are empty and will be filled in by CustomProfiles
    Tp_Hybrid ={},

    Tp_Acc ={},

    --Custom Tables end here


    --
    Hybrid ={ --STR / Haste / ACC

    },
    Acc={ --ACC

    },

    Ws_Default = {

    },
    Ws_Hybrid = {

    },
    Ws_Acc = {

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
        Head = 'Noble\'s Ribbon',
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Corsette',

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
    
    -- Logic to determine what gear set to use
    -- LevelSync
    local syncing = gcinclude.levelSync(highestGearLevel)
    local gearSet
    local player = gData.GetPlayer()
    local pet = gData.GetPet()
    local meleeStaff = gcinclude.MeleeStaff

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
    elseif (player.Status == 'Idle') then
        gFunc.EquipSet(weaponEquip);

    end
    
    --Summoner Logic
    
    if (pet ~= nil) then
        if meleeStaff == false then
            gFunc.Equip('main', gcinclude.Summons[pet.Name]); 
        end
        if pet.Name == 'Carbuncle' then
            gFunc.Equip('hands', 'Carbuncle Mitts'); 
        end
    end 
    -- print(pet.Name)
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
        gFunc.EquipSet(profile.shared.Charm); end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    local meleeStaff = gcinclude.MeleeStaff
    if meleeStaff == false then
        if (spell.Skill == 'Healing Magic') then
            gFunc.Equip('main', gcinclude.ElementalStaves[spell.Element]);  
        elseif (spell.Skill == 'Summoning') then
            gFunc.Equip('main', gcinclude.Summons[spell.Name]); 
        end
    end

    

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