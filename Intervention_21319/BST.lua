local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '4'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);

local weaponType = layers.CreateModeGroup('WeaponType', {'Axe', 'Club', 'Dagger', 'Warp'}, '@t')

local weaponMode = layers.CreateModeGroup('Weapons', {'Shield', 'DualWield', 'Scythe'}, '@w')

local meleeMode = layers.CreateModeGroup('MeleeMode', {'Haste','ACC', 'STR'}, '@m')

local petMode = layers.CreateModeGroup('PetMode', {'Off', 'Pet'})

local Axe = {Main = 'Martial Axe'}
local Club = {Main = 'Warp Cudgel'}
local Dagger = {Main = 'Triple Dagger'}
local Warp = {Main = 'Warp Cudgel'}

local mainHand = {Main = 'Martial Axe'}
local offHand = {Sub = "Barbaroi Axe"}
local offHandShield = {Sub = "Maple Shield"}
local Scythe = {Main = "Scarecrow Scythe"}

layers.Sets.Idle = {
        Head = 'Wyvern Helm',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Back = 'Amemet Mantle',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Thick Sollerets',
    }

--Setting Variables for Weaponsets
layers.Sets.Axe.Idle = Axe

layers.Sets.Club.Idle = Club

layers.Sets.Dagger.Idle = Dagger

layers.Sets.Warp.Idle = Warp

layers.Sets.Shield.Idle = offHandShield

layers.Sets.DualWield.Idle = offHand

layers.Sets.Scythe.Idle = Scythe


--Armor EquipSets

layers.Sets.Haste.Engaged = {
        Head = 'Panther Mask',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Thick Sollerets',
        }


layers.Sets.ACC.Engaged = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Thick Sollerets',
	}

layers.Sets.STR.Engaged = {
        Head = 'Wyvern Helm',
        Neck = 'Spike Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Hands = 'Ogre Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Wonder Clomps',
        }

layers.Sets.Weaponskill ={
        Head = 'Wyvern Helm',
        Neck = 'Spike Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Hands = 'Ogre Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Brave Belt',
        Legs = 'Bst. Trousers +1',
        Feet = 'Wonder Clomps',
}

layers.Sets.Haste.Weaponskill = layers.Sets.Weaponskill
layers.Sets.STR.Weaponskill = layers.Sets.Weaponskill

layers.Sets.ACC.Weaponskill = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Waist = 'Brave Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Thick Sollerets',
}


layers.Sets.Ability['Reward'] ={
        Body = "Monster Jackcoat",
        Hands = 'Ogre Gloves',
        Feet = 'Monster Gaiters',
        Neck = 'Justice Badge',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
}

layers.Sets.Ability['Charm'] = {
        Main = "Light Staff",
        Head = 'Monster Helm',
        Body = "Monster Jackcoat",
        Hands ='Beast Gloves',
        Legs = 'Beast Trousers',
        Feet = "Beast Gaiters",
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Monster Belt',

}


--Specialized Settings
layers.RegisterCallback("PostHandleIdle", function()
    local player = gData.GetPlayer()
	if (player.MP <= 49 and player.MaxMP ~= 0) then
        gFunc.Equip('Body', 'Gaudy Harness');
    end
end, "Gaudy Harness Equip")        


return layers