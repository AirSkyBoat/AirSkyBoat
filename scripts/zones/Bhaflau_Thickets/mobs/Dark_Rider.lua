-----------------------------------
-- Area: Bhaflau Thickets
-- MOB: Dark Rider
-- MOBID: 16990423
-- hoofprint 16990593
-----------------------------------
local ID = require("scripts/zones/Bhaflau_Thickets/IDs")
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}
local initialSpawnPoint = -- Initial Spawnpoint for Dark Rider in Bhaflau Thickets
{
    [1] = { -162, -20 -494 },
    [2] = { -341, -5, -102 },
    [3] = { 534, -12, 161 },
    [4] = { 320, -8, 39 },
}

local selectedIndex = math.random(1, 4)

local pathNodes1 = -- todo clean up this table!
{
    { x = -184.2944, y = -20.0004, z = -514.2022, },
    { x = -189.5367, y = -18, z = -544.6597, },
    { x = -192.2695, y = -15.8135, z = -569.2286, },
    { x = -173.0567, y = -15.6398, z = -584.4962, },
    { x = -142.2876, y = -15.5, z = -599.8929, },
    { x = -110.9674, y = -15.75, z = -604.9569, },
    { x = -93.8555, y = -18.0197, z = -620.2859, },
    { x = -92.9011, y = -19.5679, z = -629.0563, },
    { x = -53.1483, y = -13.8087, z = -621.3766, },
    { x = -58.0019, y = -14.9295, z = -615.4261, },
    { x = -106.244, y = -17.8874, z = -633.2219, },
    { x = -133.3949, y = -17.4138, z = -653.8704, },
    { x = -139.591, y = -11.5934, z =  -672.7975, },
    { x = -140.9327, y = -9.3502, z =  -698.9597, },
    { x = -159.7626, y = -10.675, z =  -699.3423, },
    { x = -177.5216, y = -9.5, z = -702.3909, },
    { x = -179.6405, y = -10.0538, z = -730.9031, },
    { x = -180.2089, y = -10.0822, z = -749.9296, },
    { x = -177.7784, y = -9.5, z = -702.4228, },
    { x = -137.9982, y = -9.2691, z = -700.7012, },
    { x = -148.6257, y = -19.9933, z = -632.1865, },
    { x = -174.3361, y = -16, z = -580.8994, },
    { x = -203.3813, y = -19.045, z = -541.3857, },
    { x = -182.7077, y = -19.5158, z = -513.2104, },
    { x = -160.5705, y = -20.25, z = -492.3425, },
    { x = -131.9986, y = -13.528, z = -499.2006, },
}

local pathNodes2 = -- todo clean up this table!
{
    { x = -341.8162, y = -5.3467, z = -102.9949, },
    { x = -355.7132, y = -7.957, z = -100.719, },
    { x = -382.3345, y = -11.7201, z = -99.5111, },
    { x = -410.8198, y = -15, z = -94.444, },
    { x = -447.8948, y = -15.902, z = -99.4241, },
    { x = -472.5616, y = -22.2612, z = -98.0313, },
    { x = -474.7578, y = -19.9241, z = -77.6104, },
    { x = -469.0232, y = -22, z = -62.6762, },
    { x = -465.3344, y = -24.1546, z = -44.8208, },
    { x = -475.2794, y = -23.9659, z = -57.3623, },
    { x = -483.9292, y = -22, z = -66.44, },
    { x = -486.8187, y = -19.655, z = -77.9069, },
    { x = -485.6291, y = -19.8621, z = -84.8009, },
    { x = -499.7253, y = -15.5648, z = -82.5116, },
    { x = -516.3804, y = -11.75, z = -71.4453, },
    { x = -526.6005, y = -11.7702, z = -45.1331, },
    { x = -550.2809, y = -11.75, z = -38.7637, },
    { x = -557.1318, y = -11.6048, z = -54.3491, },
    { x = -556.5707, y = -12, z = -80.6662, },
    { x = -558.8506, y = -16.1294, z = -103.2708, },
    { x = -567.0391, y = -15.8766, z = -104.7603, },
    { x = -574.0215, y = -11.1222, z = -68.5697 },
    { x = -577.002, y = -8.132, z = -46.9655, },
    { x = -610.1783, y = -7.519, z = -56.9911, },
    { x = -623.8424, y = -7.9782, z = -45.4641, },
    { x = -602.5402, y = -3.75, z = -29.6118, },
    { x = -597.8671, y = -3.75, z = -8.6846, },
    { x = -583.291, y = -5.8732, z = 14.1616, },
    { x = -574.1631, y = -8.25, z = 34.108, },
    { x = -578.316, y = -3.9725, z = 57.7073, },
    { x = -572.1212, y = -6.2157, z = 55.2067, },
    { x = -572.8939, y = -8.3158, z = 24.2096, },
    { x = -573.9182, y = -8.3817, z = -10.5209, },
    { x = -574.8887, y = -8.25, z = -37.9213, },
    { x = -577.9894, y = -8.1908, z = -49.401, },
}

local pathNodes3 = -- todo clean up this table!
{
    { x = 534.7233, y = -10.1668, z = 179.7205, },
    { x = 498.8751, y = -9.5052, z = 182.0856, },
    { x = 500.4666, y = -9.4064, z = 258.9959, },
    { x = 450.6891, y = -18.0236, z = 256.9076, },
    { x = 434.7781, y = -16.1599, z = 316.573, },
    { x = 420.9539, y = -19.3854, z = 351.86, },
    { x = 419.555, y = -17.2743, z = 379.5687, },
    { x = 387.998, y = -18.139, z = 378.5615, },
    { x = 310.3919, y = -19.5, z = 379.8883, },
    { x = 313.6196, y = -16.4724, z = 405.2842, },
    { x = 305.7487, y = -23.5695, z = 435.6101, },
    { x = 283.7035, y = -23.75, z = 429.5583, },
    { x = 268.3929, y = -25.9172, z = 442.4726, },
    { x = 253.3445, y = -27.8391, z = 463.3704, },
    { x = 251.9783, y = -29.6402, z = 476.9942, },
    { x = 216.3325, y = -32, z = 496.3744, },
    { x = 193.7239, y = -32.2917, z = 519.7725, },
    { x = 184.5332, y = -34, z = 515.7164, },
    { x = 158.2712, y = -36.25, z = 504.8909, },
    { x = 111.474, y = -34.219, z = 501.437, },
    { x = 98.0616, y = -33.6541, z = 506.4372, },
    { x = 96.9974, y = -33.4039, z = 542.2005, },
    { x = 55.286, y = -34, z = 545.0504, },
    { x = 58.5725, y = -34.3121, z = 586.4394, },
    { x = 65.5281, y = -34, z = 623.1339, },
    { x = 56.4741, y = -36.0916, z = 645.2515, },
    { x = 101.5809, y = -35.8126, z = 640.6954, },
}

local pathNodes4 = -- todo clean up this table!
{
    { x = 336.5603, y = -10, z = 50.9881, },
    { x = 339.6111, y = -10.675, z = 78.4654, },
    { x = 340.2767, y = -9.3709, z = 99.1118, },
    { x = 298.7534, y = -9.5, z = 102.9672, },
    { x = 298.5591, y = -10.855, z = 154.5886, },
    { x = 306.2429, y = -10.494, z = 176.312, },
    { x = 318.66, y = -8.0072, z = 203.9127, },
    { x = 323.6003, y = -7.5837, z = 225.3113, },
    { x = 314.4668, y = -8.2039, z = 234.512, },
    { x = 279.3896, y = -16.4819, z = 247.7977, },
    { x = 254.7224, y = -18.3562, z = 260.6007, },
    { x = 224.3664, y = -17.5745, z = 261.8499, },
    { x = 218.3142, y = -17.7802, z = 268.9535, },
    { x = 218.4619, y = -17.2, z = 300.3862, },
    { x = 176.604, y = -18, z = 301.6362, },
    { x = 140.2717, y = -18, z = 296.2196, },
    { x = 139.3031, y = -17.4372, z = 258.6591, },
    { x = 63.0256, y = -18, z = 261.0254, },
    { x = 57.0087, y = -19.7057, z = 293.2191, },
    { x = 42.9469, y = -20.2845, z = 304.1118, },
    { x = 26.4253, y = -18, z = 256.1752, },
    { x = 20.2263, y = -22.6509, z = 222.2729, },
    { x = 26.5993, y = -27.6071, z = 178.7952, },
    { x = 25.0605, y = -27.6911, z = 144.9632, },
    { x = 20.0353, y = -27.513, z = 113.3468, },
    { x = -0.6543, y = -27.593, z = 99.5753, },
    { x = -23.5162, y = -27.8, z = 93.6581, },
    { x = -43.0808, y = -26.9823, z = 101.5381, },
    { x = -58.4402, y = -27.1701, z = 115.5232, },
    { x = -45.6205, y = -23.6932, z = 135.1399, },
    { x = -40.9808, y = -24, z = 156.2172, },
    { x = 2.4308, y = -24, z = 163.0841, },
    { x = 22.2439, y = -27.9369, z = 160.943, },
}

entity.onMobInitialize = function(mob)
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.GRAVITY)
    mob:addImmunity(xi.immunity.BIND)
    mob:addImmunity(xi.immunity.STUN)
    mob:addImmunity(xi.immunity.SILENCE)
    mob:addImmunity(xi.immunity.PARALYZE)
    mob:addImmunity(xi.immunity.BLIND)
    mob:addImmunity(xi.immunity.SLOW)
    mob:addImmunity(xi.immunity.POISON)
    mob:addImmunity(xi.immunity.ELEGY)
    mob:addImmunity(xi.immunity.REQUIEM)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:addImmunity(xi.immunity.ASPIR)
    mob:addImmunity(xi.immunity.TERROR)
    mob:addImmunity(xi.immunity.DISPEL)
    mob:setMobMod(xi.mobMod.DONT_ROAM_HOME, 1)
    mob:setMobMod(xi.mobMod.NO_WIDESCAN, 1)
    mob:setUnkillable(true)
    mob:hideHP(true)
    mob:setMod(xi.mod.FASTCAST, 100)
end

entity.onMobSpawn = function(mob, npc)
    mob:setPos(initialSpawnPoint[selectedIndex])

    if selectedIndex == 1 then
        mob:pathThrough(pathNodes1, bit.bor(xi.path.flag.COORDS))
    elseif selectedIndex == 2 then
        mob:pathThrough(pathNodes2, bit.bor(xi.path.flag.COORDS))
    elseif selectedIndex == 3 then
        mob:pathThrough(pathNodes3, bit.bor(xi.path.flag.COORDS))
    elseif selectedIndex == 4 then
        mob:pathThrough(pathNodes4, bit.bor(xi.path.flag.COORDS))
    end
end

entity.onMobRoam = function(mob)
end

entity.onSpellPrecast = function(mob, spell)
    if spell:getID() == 367 then
        spell:setAoE(xi.magic.aoe.RADIAL)
        spell:setFlag(xi.magic.spellFlag.HIT_ALL)
        spell:setRadius(30)
        spell:setMPCost(1)
    end
end

entity.onMobEngaged = function(mob, target)
    mob:castSpell(367, target) -- death
end

entity.onMobDisengage = function(mob)
end

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobDespawn = function(mob, player)
    local npc = GetNPCByID(ID.npc.WARHORSE_HOOFPRINT_OFFSET)
    local selectedHoofprint = math.random(1, 25)

    if selectedIndex == 1 then
        npc:setPos(pathNodes1[selectedHoofprint])
    elseif selectedIndex == 2 then
        npc:setPos(pathNodes2[selectedHoofprint])
    elseif selectedIndex == 3 then
        npc:setPos(pathNodes3[selectedHoofprint])
    elseif selectedIndex == 4 then
        npc:setPos(pathNodes4[selectedHoofprint])
    end

    npc:setStatus(xi.status.NORMAL)
end

return entity
