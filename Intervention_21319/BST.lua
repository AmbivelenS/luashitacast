local layers = gFunc.LoadFile('layers\\layers.lua')

local macroBook = '4'
local macroSet = '1'

AshitaCore:GetChatManager():QueueCommand(1, '/macro book '.. macroBook);
AshitaCore:GetChatManager():QueueCommand(1, '/macro set '.. macroSet);

local weaponType = layers.CreateModeGroup('WeaponType', {'Axe', 'Club', 'Dagger', 'Warp'}, '@t')

local weaponMode = layers.CreateModeGroup('Weapons', {'Shield', 'DualWield', 'Scythe'}, '@w')

local petMode = layers.CreateModeGroup('PetMode', {'Off', 'Pet'})

local Axe = {Main = 'Pick of Trials'}
local Club = {Main = 'Warp Cudgel'}
local Dagger = {Main = 'Triple Dagger'}
local Warp = {Main = 'Warp Cudgel'}

local mainHand = {Main = "Pick of Trials"}
local offHand = {Sub = "Barbaroi Axe"}
local offHandShield = {Sub = "Maple Shield"}
local sycthe = {Main = "Goshisho's Scythe"}

layers.Sets.Idle = {
        Head = 'Celata',
        Neck = 'Peacock Amulet',
        Ear1 = 'Spike Earring',
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

layers.Sets.Scythe.Idle = sycthe


--Armor EquipSets

layers.Sets.Engaged = {
        Head = 'Celata',
        Neck = 'Peacock Amulet',
        Ear1 = 'Spike Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Hands = 'Thick Mufflers',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Waist = 'Swift Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Thick Sollerets',
	}

layers.Sets.Weaponskill ={
        Head = 'Celata',
        Neck = 'Spike Necklace',
        Ear1 = 'Spike Earring',
        Ear2 = 'Beastly Earring',
        Body = 'Haubergeon',
        Hands = 'Ogre Gloves',
        Ring1 = 'Courage Ring',
        Ring2 = 'Courage Ring',
        Waist = 'Brave Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Wonder Clomps',
}




layers.Sets.Ability['Charm'] = {
        Main = "Light Staff",
        Head = 'Noble\'s Ribbon',
        Hands ='Beast Gloves',
        Feet = "Beast Gaiters",
        Neck = 'Bird Whistle',
        Ring1 = 'Hope Ring',
        Ring2 = 'Hope Ring',
        Waist = 'Corsette',

}


--Specialized Settings
layers.RegisterCallback("PostHandleIdle", function()
    local player = gData.GetPlayer()
	if (player.MP <= 49 and player.MaxMP ~= 0) then
        gFunc.Equip('Body', 'Gaudy Harness');
    end
end, "Gaudy Harness Equip")        


return layers