-- Variables
SET @ALWAYS = 1000;  -- Always, 100%
SET @VCOMMON = 240;  -- Very common, 24%
SET @COMMON = 150;   -- Common, 15%
SET @UNCOMMON = 100; -- Uncommon, 10%
SET @RARE = 50;      -- Rare, 5%
SET @VRARE = 10;     -- Very rare, 1%
SET @SRARE = 5;      -- Super Rare, 0.5%
SET @URARE = 1;      -- Ultra rare, 0.1%

-- --------------------------------------------------------------------
--                        Dynamis Era Module                        --
-- --------------------------------------------------------------------
LOCK TABLES `mob_droplist`       WRITE,
            `mob_spell_lists`    WRITE,
            `mob_skill_lists`    WRITE,
            `mob_skills`         WRITE,
            `mob_groups`         WRITE,
            `zone_settings`      WRITE;

-- --------------------------------------------------------------------
--                          Dynamis-Bastok                          --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--  Megaboss - Gudha Effigy
DELETE FROM `mob_droplist` WHERE dropid = "2906"; -- Delete Droplist 2906
REPLACE INTO `mob_droplist` VALUES (2906,0,0,1000,749,@UNCOMMON); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (2906,0,0,1000,748,@UNCOMMON); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (2906,0,0,1000,1474,@COMMON);  -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (2906,0,0,1000,1455,@COMMON);  -- Byne Bill 1
REPLACE INTO `mob_droplist` VALUES (2906,0,0,1000,1455,@COMMON);  -- Byne Bill 2
REPLACE INTO `mob_droplist` VALUES (2906,0,0,1000,1456,@COMMON);  -- Hundred Byne Bill
-- Statues - Adamantking Effigy
DELETE FROM `mob_droplist` WHERE dropid = "20"; -- Delete
REPLACE INTO `mob_droplist` VALUES (20,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (20,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (20,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (20,0,0,1000,1456,@VRARE); -- Hundred Byne Bill
-- NMs
DELETE FROM `mob_droplist` WHERE dropid = "2907"; -- Delete
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15133,91); -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15120,91); -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15106,91); -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15092,90); -- THF Body
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15078,91); -- PLD Head
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15139,91); -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15095,91); -- BST Body
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15111,91); -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15113,91); -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15130,91); -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (2907,1,1,@UNCOMMON,15116,91); -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2907,1,2,@RARE,16346,500); -- BLU Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2907,1,2,@RARE,11385,500); -- COR Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2907,1,3,@RARE,16362,500); -- SCH Legs (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2907,1,3,@RARE,11478,500); -- DNC Head (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2907,0,0,1000,1469,@VRARE); -- Wootz Ore
REPLACE INTO `mob_droplist` VALUES (2907,0,0,1000,1521,@VRARE); -- Slime Juice
REPLACE INTO `mob_droplist` VALUES (2907,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2907,0,0,1000,1455,@VCOMMON); -- Byne Bill 1
REPLACE INTO `mob_droplist` VALUES (2907,0,0,1000,1455,@COMMON); -- Byne Bill 2
REPLACE INTO `mob_droplist` VALUES (2907,0,0,1000,1455,@UNCOMMON); -- Byne Bill 3
REPLACE INTO `mob_droplist` VALUES (2907,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2907,0,0,1000,1456,@VRARE); -- 1 Hbyne
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2558"; -- Delete
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15133,91); -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15120,91); -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15106,91); -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15092,90); -- THF Body
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15078,91); -- PLD Head
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15139,91); -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15095,91); -- BST Body
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15111,91); -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15113,91); -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15130,91); -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (2558,1,1,@RARE,15116,91); -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2558,1,3,@RARE,16346,500); -- BLU Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2558,1,3,@RARE,11385,500); -- COR Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2558,1,4,@RARE,16362,500); -- SCH Legs (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2558,1,4,@RARE,11478,500); -- DNC Head (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2558,0,0,1000,1469,@VRARE); -- Wootz Ore
REPLACE INTO `mob_droplist` VALUES (2558,0,0,1000,1521,@VRARE); -- Slime Juice
REPLACE INTO `mob_droplist` VALUES (2558,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2558,0,0,1000,1455,@VCOMMON); -- Byne Bill 1
REPLACE INTO `mob_droplist` VALUES (2558,0,0,1000,1455,@COMMON); -- Byne Bill 2
REPLACE INTO `mob_droplist` VALUES (2558,0,0,1000,1455,@UNCOMMON); -- Byne Bill 3
REPLACE INTO `mob_droplist` VALUES (2558,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2558,1,2,@RARE,18314,250); -- Ito
REPLACE INTO `mob_droplist` VALUES (2558,1,2,@RARE,18302,250); -- Relic Scythe
REPLACE INTO `mob_droplist` VALUES (2558,1,2,@RARE,18284,250); -- Relic Axe
REPLACE INTO `mob_droplist` VALUES (2558,1,2,@RARE,18278,250); -- Relic Blade
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 143
-- Use Spell List 0
-- --------------------------------------------------------------------
--                         Dynamis-San d`Oria                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "1967"; -- Delete
REPLACE INTO `mob_droplist` VALUES (1967,0,0,1000,749,@UNCOMMON); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (1967,0,0,1000,748,@UNCOMMON); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (1967,0,0,1000,1474,@COMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (1967,0,0,1000,1452,@COMMON); -- Bronzepiece 1
REPLACE INTO `mob_droplist` VALUES (1967,0,0,1000,1452,@COMMON); -- Bronzepiece 2
REPLACE INTO `mob_droplist` VALUES (1967,0,0,1000,1453,@COMMON); -- Montiont Silverpiece
--            Statues            --
DELETE FROM `mob_droplist` WHERE dropid = "2201"; -- Delete
REPLACE INTO `mob_droplist` VALUES (2201,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (2201,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (2201,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (2201,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "3111"; -- Delete
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15132,90); -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15118,91); -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15074,91); -- WHM Head
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15136,91); -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15108,91); -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15125,91); -- BST Legs
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15081,91); -- BRD Head
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15127,91); -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15129,91); -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15145,91); -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (3111,1,1,@UNCOMMON,15146,91); -- SMN Feet
-- REPLACE INTO `mob_droplist` VALUES (3111,1,2,@RARE,15025,500); -- BLU Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3111,1,2,@RARE,16349,500); -- COR Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3111,1,3,@RARE,11388,500); -- PUP Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (3111,1,3,@RARE,15040,500); -- SCH Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1519,@VRARE); -- Fresh Orc Liver
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1517,@VRARE); -- Giant Frozen Head
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1516,@VRARE); -- Griffon Hide
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1452,@VCOMMON); -- Bronzepiece 1
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1452,@COMMON); -- Bronzepiece 2
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1452,@UNCOMMON); -- Bronzepiece 3
REPLACE INTO `mob_droplist` VALUES (3111,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (3111,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2548"; -- Delete
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15132,90); -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15118,91); -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15074,91); -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15136,91); -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15108,91); -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15125,91); -- BST Legs
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15081,91); -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15127,91); -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15129,91); -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15145,91); -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2548,1,1,@RARE,15146,91); -- SMN Feet
-- REPLACE INTO `mob_droplist` VALUES (2548,1,3,@RARE,15025,500); -- BLU Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2548,1,3,@RARE,16349,500); -- COR Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2548,1,4,@RARE,11388,500); -- PUP Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2548,1,4,@RARE,15040,500); -- SCH Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2548,0,0,1000,1519,@VRARE); -- Fresh Orc Liver
REPLACE INTO `mob_droplist` VALUES (2548,0,0,1000,1517,@VRARE); -- Giant Frozen Head
REPLACE INTO `mob_droplist` VALUES (2548,0,0,1000,1516,@VRARE); -- Griffon Hide
REPLACE INTO `mob_droplist` VALUES (2548,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2548,0,0,1000,1452,@VCOMMON); -- Bronzepiece 1
REPLACE INTO `mob_droplist` VALUES (2548,0,0,1000,1452,@COMMON); -- Bronzepiece 2
REPLACE INTO `mob_droplist` VALUES (2548,0,0,1000,1452,@UNCOMMON); -- Bronzepiece 3
REPLACE INTO `mob_droplist` VALUES (2548,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (2548,1,2,@RARE,18308,250); -- Ihintanto
REPLACE INTO `mob_droplist` VALUES (2548,1,2,@RARE,18332,250); -- Relic Gun
REPLACE INTO `mob_droplist` VALUES (2548,1,2,@RARE,18290,250); -- Relic Bhuj
REPLACE INTO `mob_droplist` VALUES (2548,1,2,@RARE,18296,250); -- Relic Lance
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 93
-- Use Spell List 49
-- --------------------------------------------------------------------
--                         Dynamis-Windurst                         --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "2510"; -- Delete
REPLACE INTO `mob_droplist` VALUES (2510,0,0,1000,749,@UNCOMMON); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (2510,0,0,1000,748,@UNCOMMON); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (2510,0,0,1000,1474,@COMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (2510,0,0,1000,1449,@COMMON); -- Whiteshell 1
REPLACE INTO `mob_droplist` VALUES (2510,0,0,1000,1449,@COMMON); -- Whiteshell 2
REPLACE INTO `mob_droplist` VALUES (2510,0,0,1000,1450,@COMMON); -- Jadeshell
--            Statues            --
DELETE FROM `mob_droplist` WHERE dropid = "195"; -- Delete
REPLACE INTO `mob_droplist` VALUES (195,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (195,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (195,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (195,0,0,1000,1450,@VRARE); -- Jadeshell
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "1560"; -- Delete
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15072,90); -- WAR Head
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15134,91); -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15105,91); -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15077,91); -- THF Head
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15138,91); -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15109,91); -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15080,91); -- BST Head
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15112,91); -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15128,91); -- Sam Legs
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15084,91); -- NIN Head
REPLACE INTO `mob_droplist` VALUES (1560,1,1,@UNCOMMON,15131,91); -- SMN Legs
-- REPLACE INTO `mob_droplist` VALUES (1560,1,2,@RARE,11382,500); -- BLU Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1560,1,2,@RARE,15031,500); -- PUP Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1560,1,3,@RARE,11398,500); -- SCH Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1560,1,3,@RARE,15038,500); -- DNC Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1518,@VRARE); -- colossal skull
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1466,@VRARE); -- relic iron
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1464,@VRARE); -- lancewood log
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1470,@RARE); -- sparkling stone
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1449,@VCOMMON); -- Whiteshell 1
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1449,@COMMON); -- Whiteshell 2
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1449,@UNCOMMON); -- Whiteshell 3
REPLACE INTO `mob_droplist` VALUES (1560,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (1560,0,0,1000,1450,@VRARE); -- Jadeshell
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2553"; -- Delete
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15072,90); -- WAR Head
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15134,91); -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15105,91); -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15077,91); -- THF Head
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15138,91); -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15109,91); -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15080,91); -- BST Head
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15112,91); -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15128,91); -- Sam Legs
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15084,91); -- NIN Head
REPLACE INTO `mob_droplist` VALUES (2553,1,1,@RARE,15131,91); -- SMN Legs
-- REPLACE INTO `mob_droplist` VALUES (2553,1,3,@RARE,11382,500); -- BLU Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2553,1,3,@RARE,15031,500); -- PUP Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2553,1,4,@RARE,11398,500); -- SCH Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2553,1,4,@RARE,15038,500); -- DNC Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2553,0,0,1000,1518,@VRARE); -- Colossal Skull
REPLACE INTO `mob_droplist` VALUES (2553,0,0,1000,1466,@VRARE); -- Relic Iron
REPLACE INTO `mob_droplist` VALUES (2553,0,0,1000,1464,@VRARE); -- Lancewood Log
REPLACE INTO `mob_droplist` VALUES (2553,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2553,0,0,1000,1449,@VCOMMON); -- Whiteshell 1
REPLACE INTO `mob_droplist` VALUES (2553,0,0,1000,1449,@COMMON); -- Whiteshell 2
REPLACE INTO `mob_droplist` VALUES (2553,0,0,1000,1449,@UNCOMMON); -- Whiteshell 3
REPLACE INTO `mob_droplist` VALUES (2553,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2553,1,2,@RARE,18266,250); -- Relic Dagger
REPLACE INTO `mob_droplist` VALUES (2553,1,2,@RARE,18260,250); -- Relic Knuckles
REPLACE INTO `mob_droplist` VALUES (2553,1,2,@RARE,18320,250); -- Relic Maul
REPLACE INTO `mob_droplist` VALUES (2553,1,2,@RARE,18272,250); -- Relic Sword
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 95
-- Use Spell List 50
-- --------------------------------------------------------------------
--                          Dynamis-Jeuno                           --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "1085"; -- Delete
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,749,@UNCOMMON); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,748,@UNCOMMON); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1474,@COMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1455,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1456,@UNCOMMON); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1450,@UNCOMMON); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1085,0,0,1000,1453,@UNCOMMON); -- Montiont Silverpiece
--            Statues            --
DELETE FROM `mob_droplist` WHERE dropid = "1144"; -- Delete
REPLACE INTO `mob_droplist` VALUES (1144,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (1144,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (1144,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (1144,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (1144,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1144,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1144,1,1,@VRARE,1453,334); -- Montinont Silverpiece
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "143"; -- Delete
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15102,90); -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15103,91); -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15119,91); -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15135,91); -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15121,91); -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15137,91); -- THF Feet
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15124,91); -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15141,91); -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15082,91); -- RNG Head
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15143,91); -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15144,91); -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (143,1,1,@UNCOMMON,15115,91); -- DRG Hands
-- REPLACE INTO `mob_droplist` VALUES (143,1,3,@RARE,15028,500); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (143,1,3,@RARE,16352,500); -- PUP Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (143,1,4,10,16352,1000); -- DNC Feet (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (143,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (143,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (143,1,2,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (143,1,2,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (143,1,2,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (143,1,3,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (143,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (143,1,3,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (143,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (143,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (143,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (143,1,4,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (143,1,4,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (143,1,4,@VRARE,1453,334); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2543"; -- Delete
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15102,90); -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15103,91); -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15119,91); -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15135,91); -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15121,91); -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15137,91); -- THF Feet
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15124,91); -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15141,91); -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15082,91); -- RNG Head
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15143,91); -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15144,91); -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2543,1,1,@RARE,15115,91); -- DRG Hands
-- REPLACE INTO `mob_droplist` VALUES (2543,1,3,10,15028,500); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2543,1,3,10,16352,500); -- PUP Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2543,1,4,5,16352,1000); -- DNC Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2543,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (2543,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2543,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2543,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2543,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2543,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2543,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2543,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2543,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2543,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2543,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2543,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2543,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2543,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (2543,1,5,@RARE,18344,250); -- Relic Bow
REPLACE INTO `mob_droplist` VALUES (2543,1,5,@RARE,18338,250); -- Relic Horn
REPLACE INTO `mob_droplist` VALUES (2543,1,5,@RARE,18326,250); -- Relic Staff
REPLACE INTO `mob_droplist` VALUES (2543,1,5,@RARE,15066,250); -- Relic Shield
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 92
-- Use Spell List 47
-- --------------------------------------------------------------------
--                         Dynamis-Beaucedine                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
-- Use Drop ID 0
--             Eyes              --
DELETE FROM `mob_droplist` WHERE dropid = "3207"; -- Angra Mainyu
REPLACE INTO `mob_droplist` VALUES (3207,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (3207,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (3207,1,1,@VRARE,1453,334); -- Montinont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "2561"; -- Eyes
REPLACE INTO `mob_droplist` VALUES (2561,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (2561,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (2561,1,1,@VRARE,1453,334); -- Montinont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "7500"; -- Vanguard Eyes
REPLACE INTO `mob_droplist` VALUES (7500,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7500,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7500,1,1,@VRARE,1453,334); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (7500,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7501"; -- Orc Statues
REPLACE INTO `mob_droplist` VALUES (7501,0,0,1000,1453,@VRARE); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (7501,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7502"; -- Quadav Statues
REPLACE INTO `mob_droplist` VALUES (7502,0,0,1000,1456,@VRARE); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7502,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7503"; -- Yagudo Statues
REPLACE INTO `mob_droplist` VALUES (7503,0,0,1000,1450,@VRARE); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7503,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7504"; -- Goblin Statues
REPLACE INTO `mob_droplist` VALUES (7504,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7504,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7504,1,1,@VRARE,1453,334); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (7504,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "176"; -- Goblin NM
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (176,1,1,@UNCOMMON,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (176,1,3,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (176,1,3,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (176,1,3,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (176,1,4,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (176,1,4,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (176,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (176,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (176,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (176,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (176,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (176,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (176,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (176,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (176,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (176,1,2,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (176,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (176,1,2,@VRARE,1453,334); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "493"; -- Orc NM
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (493,1,1,@UNCOMMON,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (493,1,2,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (493,1,2,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (493,1,2,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (493,1,3,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (493,1,3,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (493,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (493,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (493,2,0,1000,1452,0);   -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (493,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "261"; -- Quadav NM
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (261,1,1,@UNCOMMON,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (261,1,2,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (261,1,2,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (261,1,2,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (261,1,3,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (261,1,3,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (261,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (261,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (261,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (261,0,0,1000,1456,@VRARE); -- Hundred Byne
DELETE FROM `mob_droplist` WHERE dropid = "265"; -- Yagudo NM
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (265,1,1,@UNCOMMON,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (265,1,2,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (265,1,2,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (265,1,2,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (265,1,3,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (265,1,3,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (265,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (265,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (265,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (265,0,0,1000,1450,@VRARE); -- Jadeshell
DELETE FROM `mob_droplist` WHERE dropid = "559"; -- Dagourmarche
REPLACE INTO `mob_droplist` VALUES (559,1,1,@ALWAYS,1560,333); -- Attestation of Bravery
REPLACE INTO `mob_droplist` VALUES (559,1,1,@ALWAYS,1563,333); -- Attestation of Fortitude
REPLACE INTO `mob_droplist` VALUES (559,1,1,@ALWAYS,1567,334); -- Attestation of Virtue
REPLACE INTO `mob_droplist` VALUES (559,1,2,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (559,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (559,1,2,@VRARE,1453,334); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "1211"; -- Goublefaupe
REPLACE INTO `mob_droplist` VALUES (1211,0,0,1000,1821,@COMMON); -- Attestation of Invulnerability
REPLACE INTO `mob_droplist` VALUES (1211,1,1,@ALWAYS,1559,333); -- Attestation of Righteousness
REPLACE INTO `mob_droplist` VALUES (1211,1,1,@ALWAYS,1558,333); -- Attestation of Glorys
REPLACE INTO `mob_droplist` VALUES (1211,1,1,@ALWAYS,1561,334); -- Attestation of Force
REPLACE INTO `mob_droplist` VALUES (1211,1,2,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1211,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1211,1,2,@VRARE,1453,334); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "1672"; -- Mildaunegeux
REPLACE INTO `mob_droplist` VALUES (1672,1,1,@ALWAYS,1570,333); -- Attestation of Accuracy
REPLACE INTO `mob_droplist` VALUES (1672,1,1,@ALWAYS,1564,333); -- Attestation of Legerity
REPLACE INTO `mob_droplist` VALUES (1672,1,1,@ALWAYS,1556,334); -- Attestation of Might
REPLACE INTO `mob_droplist` VALUES (1672,1,2,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1672,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1672,1,2,@VRARE,1453,334); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "2066"; -- Quiebitiel
REPLACE INTO `mob_droplist` VALUES (2066,1,1,@ALWAYS,1557,333); -- Attestation of Celerity
REPLACE INTO `mob_droplist` VALUES (2066,1,1,@ALWAYS,1566,333); -- Attestation of Sacrifice
REPLACE INTO `mob_droplist` VALUES (2066,1,1,@ALWAYS,1569,334); -- Attestation of Harmony
REPLACE INTO `mob_droplist` VALUES (2066,1,2,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (2066,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (2066,1,2,@VRARE,1453,334); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "2574"; -- Velosareon
REPLACE INTO `mob_droplist` VALUES (2574,1,1,@ALWAYS,1562,333); -- Attestation of Vigor
REPLACE INTO `mob_droplist` VALUES (2574,1,1,@ALWAYS,1565,333); -- Attestation of Decisiveness
REPLACE INTO `mob_droplist` VALUES (2574,1,1,@ALWAYS,1568,334); -- Attestation of Transcendence
REPLACE INTO `mob_droplist` VALUES (2574,1,2,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (2574,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (2574,1,2,@VRARE,1453,334); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2542"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (2542,1,1,@RARE,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (2542,1,5,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2542,1,5,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2542,1,5,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2542,1,6,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2542,1,6,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2542,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (2542,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2542,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2542,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2542,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2542,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2542,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2542,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2542,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2542,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2542,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2542,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2542,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2542,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2547"; -- Orc
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15090,66); -- BLM Bodys
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (2547,1,1,@RARE,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (2547,1,2,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2547,1,2,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2547,1,2,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2547,1,3,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2547,1,3,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2547,0,0,1000,1519,@VRARE); -- Fresh Orc Liver
REPLACE INTO `mob_droplist` VALUES (2547,0,0,1000,1517,@VRARE); -- Giant Frozen Head
REPLACE INTO `mob_droplist` VALUES (2547,0,0,1000,1516,@VRARE); -- Griffon Hide
REPLACE INTO `mob_droplist` VALUES (2547,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2547,0,0,1000,1452,@VCOMMON);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2547,0,0,1000,1452,@COMMON);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2547,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2547,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2557"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (2557,1,1,@RARE,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (2557,1,2,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2557,1,2,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2557,1,2,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2557,1,3,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2557,1,3,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2557,0,0,1000,1469,@VRARE); -- Wootz Ore
REPLACE INTO `mob_droplist` VALUES (2557,0,0,1000,1521,@VRARE); -- Slime Juice
REPLACE INTO `mob_droplist` VALUES (2557,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2557,0,0,1000,1455,@VCOMMON);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2557,0,0,1000,1455,@COMMON);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2557,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2557,2,0,1000,1455,0); -- Byne Bill (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2552"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (2552,1,1,@RARE,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (2552,1,2,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2552,1,2,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2552,1,2,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2552,1,3,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2552,1,3,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2552,0,0,1000,1518,@VRARE); -- Colossal Skull
REPLACE INTO `mob_droplist` VALUES (2552,0,0,1000,1466,@VRARE); -- Relic Iron
REPLACE INTO `mob_droplist` VALUES (2552,0,0,1000,1464,@VRARE); -- Lancewood Log
REPLACE INTO `mob_droplist` VALUES (2552,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (2552,0,0,1000,1449,@VCOMMON);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2552,0,0,1000,1449,@COMMON);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2552,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2552,2,0,1000,1449,0); -- Whiteshell (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "3220"; -- Hydra
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (3220,1,1,@RARE,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (3220,1,5,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3220,1,5,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3220,1,5,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3220,1,6,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (3220,1,6,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (3220,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (3220,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (3220,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (3220,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (3220,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (3220,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (3220,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (3220,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (3220,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (3220,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (3220,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (3220,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (3220,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (3220,2,0,1000,1452,0); -- Bronzepiece (Steal)
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 4
-- Use Spell List 500
-- --------------------------------------------------------------------
--                          Dynamis-Xarcabard                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "730"; -- Dynamis Lord
REPLACE INTO `mob_droplist` VALUES (730,0,0,1000,13658,@COMMON); -- Shadow Mantle
REPLACE INTO `mob_droplist` VALUES (730,0,0,1000,14646,@UNCOMMON); -- Shadow Ring
REPLACE INTO `mob_droplist` VALUES (730,1,1,@ALWAYS,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (730,1,1,@ALWAYS,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (730,1,1,@ALWAYS,1453,334); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (730,0,0,1000,4249,@VCOMMON); -- Schultz's Strategems
-- Statues
DELETE FROM `mob_droplist` WHERE dropid = "7505"; -- Vanguard Eyes
REPLACE INTO `mob_droplist` VALUES (7505,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7505,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7505,1,1,@VRARE,1453,334); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (7505,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7506"; -- Orc Statues - Tombstone Prototype
REPLACE INTO `mob_droplist` VALUES (7506,0,0,1000,1453,@VRARE); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (7506,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7507"; -- Quadav Statues - Effigy Prototype
REPLACE INTO `mob_droplist` VALUES (7507,0,0,1000,1456,@VRARE); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7507,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7508"; -- Yagudo Statues
REPLACE INTO `mob_droplist` VALUES (7508,0,0,1000,1450,@VRARE); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7508,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "7509"; -- Goblin Statues - Statue Prototype
REPLACE INTO `mob_droplist` VALUES (7509,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7509,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7509,1,1,@VRARE,1453,334); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (7509,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory

--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "521"; -- Count Zaebos
REPLACE INTO `mob_droplist` VALUES (521,0,0,1000,15087,@UNCOMMON); -- WAR Body
REPLACE INTO `mob_droplist` VALUES (521,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (521,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (521,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (521,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "714"; -- Duke Berith
REPLACE INTO `mob_droplist` VALUES (714,0,0,1000,15076,@UNCOMMON); -- RDM Head
REPLACE INTO `mob_droplist` VALUES (714,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (714,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (714,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (714,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1626"; -- Marquis Decarabia
REPLACE INTO `mob_droplist` VALUES (1626,0,0,1000,15126,@UNCOMMON); -- BRD Legs
REPLACE INTO `mob_droplist` VALUES (1626,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1626,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1626,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1626,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "715"; -- Duke Gomory
REPLACE INTO `mob_droplist` VALUES (715,0,0,1000,15073,@UNCOMMON); -- MNK Head
REPLACE INTO `mob_droplist` VALUES (715,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (715,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (715,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (715,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1624"; -- Marquis Andras
REPLACE INTO `mob_droplist` VALUES (1624,0,0,1000,15110,@UNCOMMON); -- BST Hands
REPLACE INTO `mob_droplist` VALUES (1624,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1624,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1624,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1624,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "2021"; -- Prince Seere
REPLACE INTO `mob_droplist` VALUES (2021,0,0,1000,15104,@UNCOMMON); -- WHM Hands
REPLACE INTO `mob_droplist` VALUES (2021,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (2021,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (2021,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (2021,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "717"; -- Duke Scox
REPLACE INTO `mob_droplist` VALUES (717,0,0,1000,15079,@UNCOMMON); -- DRK Head
REPLACE INTO `mob_droplist` VALUES (717,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (717,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (717,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (717,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1628"; -- Marquis Gamygyn
REPLACE INTO `mob_droplist` VALUES (1628,0,0,1000,15114,@UNCOMMON); -- NIN Hands
REPLACE INTO `mob_droplist` VALUES (1628,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1628,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1628,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1628,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1630"; -- Marquis Orias
REPLACE INTO `mob_droplist` VALUES (1630,0,0,1000,15075,@UNCOMMON); -- BLM Head
REPLACE INTO `mob_droplist` VALUES (1630,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1630,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1630,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1630,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "519"; -- Count Raum
REPLACE INTO `mob_droplist` VALUES (519,0,0,1000,15107,@UNCOMMON); -- THF Hands
REPLACE INTO `mob_droplist` VALUES (519,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (519,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (519,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (519,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1629"; -- Marquis Nebiros
REPLACE INTO `mob_droplist` VALUES (1629,0,0,1000,15086,@UNCOMMON); -- SMN Head
REPLACE INTO `mob_droplist` VALUES (1629,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1629,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1629,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1629,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1631"; -- Marquis Sabnak
REPLACE INTO `mob_droplist` VALUES (1631,0,0,1000,15093,@UNCOMMON); -- PLD Body
REPLACE INTO `mob_droplist` VALUES (1631,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1631,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1631,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1631,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "520"; -- Count Vine
REPLACE INTO `mob_droplist` VALUES (520,0,0,1000,15083,@UNCOMMON); -- SAM Head
REPLACE INTO `mob_droplist` VALUES (520,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (520,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (520,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (520,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1452"; -- King Zagan
REPLACE INTO `mob_droplist` VALUES (1452,0,0,1000,15085,@UNCOMMON); -- DRG Head
REPLACE INTO `mob_droplist` VALUES (1452,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1452,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1452,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1452,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "1625"; -- Marquis Cimeries
REPLACE INTO `mob_droplist` VALUES (1625,0,0,1000,15097,@UNCOMMON); -- RNG Body
REPLACE INTO `mob_droplist` VALUES (1625,1,1,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (1625,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (1625,1,1,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (1625,0,0,1000,4249,@ALWAYS); -- Schultz's Strategems
DELETE FROM `mob_droplist` WHERE dropid = "99"; -- Animated Hammer
REPLACE INTO `mob_droplist` VALUES (99,0,0,1000,1581,@ALWAYS); -- Heavenly Fragment
DELETE FROM `mob_droplist` WHERE dropid = "108"; -- Animated Staff
REPLACE INTO `mob_droplist` VALUES (108,0,0,1000,1582,@ALWAYS); -- Celestial Fragment
DELETE FROM `mob_droplist` WHERE dropid = "104"; -- Animated Longsword
REPLACE INTO `mob_droplist` VALUES (104,0,0,1000,1573,@ALWAYS); -- Holy Fragment
DELETE FROM `mob_droplist` WHERE dropid = "109"; -- Animated Tabar
REPLACE INTO `mob_droplist` VALUES (109,0,0,1000,1575,@ALWAYS); -- Runaeic Fragment
DELETE FROM `mob_droplist` WHERE dropid = "97"; -- Animated Great Axe
REPLACE INTO `mob_droplist` VALUES (97,0,0,1000,1576,@ALWAYS); -- Seraphic Fragment
DELETE FROM `mob_droplist` WHERE dropid = "95"; -- Animated Claymore
REPLACE INTO `mob_droplist` VALUES (97,0,0,1000,1574,@ALWAYS); -- Intricate Fragment
DELETE FROM `mob_droplist` WHERE dropid = "107"; -- Animated Spear
REPLACE INTO `mob_droplist` VALUES (107,0,0,1000,1578,@ALWAYS); -- Stellar Fragment
DELETE FROM `mob_droplist` WHERE dropid = "105"; -- Animated Scythe
REPLACE INTO `mob_droplist` VALUES (105,0,0,1000,1577,@ALWAYS); -- Tenebrous Fragment
DELETE FROM `mob_droplist` WHERE dropid = "102"; -- Animated Kunai
REPLACE INTO `mob_droplist` VALUES (102,0,0,1000,1579,@ALWAYS); -- Demoniac Fragment
DELETE FROM `mob_droplist` WHERE dropid = "110"; -- Animated Tachi
REPLACE INTO `mob_droplist` VALUES (110,0,0,1000,1580,@ALWAYS); -- Divine Fragment
DELETE FROM `mob_droplist` WHERE dropid = "96"; -- Animated Dagger
REPLACE INTO `mob_droplist` VALUES (96,0,0,1000,1572,@ALWAYS); -- Ornate Fragment
DELETE FROM `mob_droplist` WHERE dropid = "101"; -- Animated Knuckles
REPLACE INTO `mob_droplist` VALUES (101,0,0,1000,1571,@ALWAYS); -- Mystic Fragment
DELETE FROM `mob_droplist` WHERE dropid = "103"; -- Animated Longbow
REPLACE INTO `mob_droplist` VALUES (103,0,0,1000,1583,@ALWAYS); -- Snarled Fragment
DELETE FROM `mob_droplist` WHERE dropid = "98"; -- Animated Gun
REPLACE INTO `mob_droplist` VALUES (98,0,0,1000,1585,@ALWAYS); -- Ethereal Fragment
DELETE FROM `mob_droplist` WHERE dropid = "100"; -- Animated Horn
REPLACE INTO `mob_droplist` VALUES (100,0,0,1000,1584,@ALWAYS); -- Mysterial Fragment
DELETE FROM `mob_droplist` WHERE dropid = "106"; -- Animated Shield
REPLACE INTO `mob_droplist` VALUES (106,0,0,1000,1822,@ALWAYS); -- Supernal Fragment
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "1442"; -- Kindred
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15087,66); -- WAR Body
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15073,66); -- MNK Head
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15104,66); -- WHM Hands
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15075,66); -- BLM Head
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15076,66); -- RDM Head
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15107,67); -- THF Hands
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15093,67); -- PLD Body
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15079,67); -- DRK Head
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15110,67); -- BST Hands
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15126,67); -- BRD Legs
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15097,67); -- RNG Body
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15083,67); -- SAM Head
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15114,67); -- NIN Hands
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15085,67); -- DRG Head
REPLACE INTO `mob_droplist` VALUES (1442,1,1,@RARE,15086,67); -- SMN Head
-- REPLACE INTO `mob_droplist` VALUES (1442,1,5,@RARE,11468,333); -- COR Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1442,1,5,@RARE,11465,333); -- BLU Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1442,1,5,@RARE,11471,334); -- PUP Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1442,1,6,@RARE,11480,500); -- SCH Head (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1442,1,6,@RARE,11305,500); -- DNC Body (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1442,1,2,@VCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1442,1,2,@VCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1442,1,2,@VCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1442,1,3,@COMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1442,1,3,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1442,1,3,@COMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1442,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1442,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1442,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1442,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (1442,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (1442,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2559"; -- Vanguard Dragon
REPLACE INTO `mob_droplist` VALUES (2559,1,1,@VCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2559,1,1,@VCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2559,1,1,@VCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2559,1,2,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (2559,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (2559,1,2,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (2559,0,0,1000,1589,@COMMON); -- Necropsyche
REPLACE INTO `mob_droplist` VALUES (2559,0,0,1000,1452,@ALWAYS); -- Strategems
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 361
-- Use Spell List 86
--           Dragons             --
-- Use Skill List 87
-- --------------------------------------------------------------------
--                            Dynamis-Valkurm                        --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "472"; -- Cirrate Christelle
REPLACE INTO `mob_droplist` VALUES (472,0,0,1000,1456,@VRARE); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (472,0,0,1000,1450,@VRARE); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (472,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
-- Statues
-- Goblin Replica
DELETE FROM `mob_droplist` WHERE dropid = "7510"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7510,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7510,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7510,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7510,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (7510,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7510,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7510,1,1,@VRARE,1453,334); -- Montinont Silverpiece
-- Manifest Icon
DELETE FROM `mob_droplist` WHERE dropid = "7513"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7513,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7513,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7513,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7513,0,0,1000,1450,@VRARE); -- Jadeshell
-- Serjeant Tombstone
DELETE FROM `mob_droplist` WHERE dropid = "7512"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7512,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7512,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7512,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7512,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
-- Adamantking Effigy
DELETE FROM `mob_droplist` WHERE dropid = "7511"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7511,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7511,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7511,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7511,0,0,1000,1456,@VRARE); -- Hundred Byne Bill

--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "2910"; -- NMs
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2033,66);  -- WAR -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2038,66);  -- MNK -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2043,66);  -- WHM -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2048,66);  -- BLM -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2053,66);  -- RDM -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2058,67);  -- THF -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2063,67);  -- PLD -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2068,67);  -- DRK -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2073,67);  -- BST -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2078,67);  -- BRD -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2083,67);  -- RNG -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2088,67);  -- SAM -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2093,67);  -- NIN -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2098,67);  -- DRG -1 Head
REPLACE INTO `mob_droplist` VALUES (2910,1,1,@UNCOMMON,2103,67);  -- SMN -1 Head
-- REPLACE INTO `mob_droplist` VALUES (2910,1,3,@UNCOMMON,2662,333); -- BLU -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2910,1,3,@UNCOMMON,2667,333); -- COR -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2910,1,3,@UNCOMMON,2672,334); -- PUP -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2910,1,4,@UNCOMMON,2718,500); -- DNC -1 Head (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2910,1,4,@UNCOMMON,2723,500); -- SCH -1 Head (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2910,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2910,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2910,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2910,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (2910,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (2910,1,3,@VRARE,1453,333); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2539"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (2539,1,1,@RARE,15131,67);  -- SMN Legs
-- REPLACE INTO `mob_droplist` VALUES (2539,1,4,@RARE,11382,333); -- BLU Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2539,1,4,@RARE,16349,333); -- COR Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2539,1,4,@RARE,16352,334); -- PUP Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2539,1,5,@RARE,15038,500); -- DNC Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2539,1,5,@RARE,15040,500); -- SCH Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2539,1,2,@COMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2539,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2539,1,2,@COMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2539,1,3,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2539,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2539,1,3,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2539,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2539,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2539,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2544"; -- Orc
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (2544,1,1,@RARE,15131,67);  -- SMN Legs
-- REPLACE INTO `mob_droplist` VALUES (2544,1,2,@RARE,11382,333); -- BLU Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2544,1,2,@RARE,16349,333); -- COR Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2544,1,2,@RARE,16352,334); -- PUP Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2544,1,3,@RARE,15038,500); -- DNC Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2544,1,3,@RARE,15040,500); -- SCH Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2544,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2544,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2544,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "2554"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (2554,1,1,@RARE,15131,67);  -- SMN Legs
-- REPLACE INTO `mob_droplist` VALUES (2554,1,2,@RARE,11382,333); -- BLU Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2554,1,2,@RARE,16349,333); -- COR Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2554,1,2,@RARE,16352,334); -- PUP Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2554,1,3,@RARE,15038,500); -- DNC Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2554,1,3,@RARE,15040,500); -- SCH Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2554,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2554,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2554,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "2549"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (2549,1,1,@RARE,15131,67);  -- SMN Legs
-- REPLACE INTO `mob_droplist` VALUES (2549,1,2,@RARE,11382,333); -- BLU Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2549,1,2,@RARE,16349,333); -- COR Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2549,1,2,@RARE,16352,334); -- PUP Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2549,1,3,@RARE,15038,500); -- DNC Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2549,1,3,@RARE,15040,500); -- SCH Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2549,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2549,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2549,2,0,1000,1449,0); -- Whiteshell
--           Nightmare           --
DELETE FROM `mob_droplist` WHERE dropid = "1792"; -- Hippogryph / Sabotender
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2033,66);  -- WAR -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2038,66);  -- MNK -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2043,66);  -- WHM -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2048,66);  -- BLM -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2053,66);  -- RDM -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2058,67);  -- THF -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2063,67);  -- PLD -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2068,67);  -- DRK -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2073,67);  -- BST -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2078,67);  -- BRD -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2083,67);  -- RNG -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2088,67);  -- SAM -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2093,67);  -- NIN -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2098,67);  -- DRG -1 Head
REPLACE INTO `mob_droplist` VALUES (1792,1,1,@RARE,2103,67);  -- SMN -1 Head
-- REPLACE INTO `mob_droplist` VALUES (1792,1,3,@RARE,2662,333); -- BLU -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1792,1,3,@RARE,2667,333); -- COR -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1792,1,3,@RARE,2672,334); -- PUP -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1792,1,4,@RARE,2718,500); -- DNC -1 Head (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1792,1,4,@RARE,2723,500); -- SCH -1 Head (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1792,1,2,@RARE,15481,200); -- PLD Back
REPLACE INTO `mob_droplist` VALUES (1792,1,2,@RARE,15877,200); -- NIN Waist
REPLACE INTO `mob_droplist` VALUES (1792,1,2,@RARE,15482,200); -- BRD Back
REPLACE INTO `mob_droplist` VALUES (1792,1,2,@RARE,15484,200); -- SMN Back
REPLACE INTO `mob_droplist` VALUES (1792,1,2,@RARE,15871,200); -- WAR Waist
-- REPLACE INTO `mob_droplist` VALUES (1792,1,5,10,15920,1000); -- COR Waist (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1792,1,6,10,16248,1000); -- DNC Back  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1792,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1792,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1792,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "1794"; -- Sheep / Fly
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2033,66);  -- WAR -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2038,66);  -- MNK -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2043,66);  -- WHM -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2048,66);  -- BLM -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2053,66);  -- RDM -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2058,67);  -- THF -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2063,67);  -- PLD -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2068,67);  -- DRK -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2073,67);  -- BST -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2078,67);  -- BRD -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2083,67);  -- RNG -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2088,67);  -- SAM -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2093,67);  -- NIN -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2098,67);  -- DRG -1 Head
REPLACE INTO `mob_droplist` VALUES (1794,1,1,@RARE,2103,67);  -- SMN -1 Head
-- REPLACE INTO `mob_droplist` VALUES (1794,1,3,@RARE,2662,333); -- BLU -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1794,1,3,@RARE,2667,333); -- COR -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1794,1,3,@RARE,2672,334); -- PUP -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1794,1,4,@RARE,2718,500); -- DNC -1 Head (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1794,1,4,@RARE,2723,500); -- SCH -1 Head (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1794,1,2,@RARE,15480,125); -- THF Back
REPLACE INTO `mob_droplist` VALUES (1794,1,2,@RARE,15879,125); -- SAM Waist
REPLACE INTO `mob_droplist` VALUES (1794,1,2,@RARE,15872,125); -- WHM Waist
REPLACE INTO `mob_droplist` VALUES (1794,1,2,@RARE,15874,125); -- BLM Waist
REPLACE INTO `mob_droplist` VALUES (1794,1,2,@RARE,15482,125); -- BRD Back
REPLACE INTO `mob_droplist` VALUES (1794,1,2,@RARE,15875,125); -- BST Waist
-- REPLACE INTO `mob_droplist` VALUES (1794,1,5,10,16244,1000); -- BLU Back (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1794,1,6,10,16248,1000); -- DNC Back (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1794,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1794,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1794,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "1799"; -- Manticore
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2033,66);  -- WAR -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2038,66);  -- MNK -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2043,66);  -- WHM -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2048,66);  -- BLM -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2053,66);  -- RDM -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2058,67);  -- THF -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2063,67);  -- PLD -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2068,67);  -- DRK -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2073,67);  -- BST -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2078,67);  -- BRD -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2083,67);  -- RNG -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2088,67);  -- SAM -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2093,67);  -- NIN -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2098,67);  -- DRG -1 Head
REPLACE INTO `mob_droplist` VALUES (1799,1,1,@RARE,2103,67);  -- SMN -1 Head
-- REPLACE INTO `mob_droplist` VALUES (1799,1,3,@RARE,2662,333); -- BLU -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1799,1,3,@RARE,2667,333); -- COR -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1799,1,3,@RARE,2672,334); -- PUP -1 Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1799,1,4,@RARE,2718,500); -- DNC -1 Head (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1799,1,4,@RARE,2723,500); -- SCH -1 Head (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1799,1,2,@RARE,15480,125); -- THF Back
REPLACE INTO `mob_droplist` VALUES (1799,1,2,@RARE,15879,125); -- SAM Waist
REPLACE INTO `mob_droplist` VALUES (1799,1,2,@RARE,15872,125); -- WHM Waist
REPLACE INTO `mob_droplist` VALUES (1799,1,2,@RARE,15874,125); -- BLM Waist
REPLACE INTO `mob_droplist` VALUES (1799,1,2,@RARE,15482,125); -- BRD Back
REPLACE INTO `mob_droplist` VALUES (1799,1,2,@RARE,15875,125); -- BST Waist
-- REPLACE INTO `mob_droplist` VALUES (1799,1,5,10,16244,1000); -- BLU Back (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1799,1,6,10,16248,1000); -- DNC Back (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1799,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1799,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1799,2,0,1000,1449,0); -- Whiteshell
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 0
--          Dragontrap            --
-- Use Skill List 114
--          Fairy Ring            --
-- Use Skill List 116
--           Nant`ina             --
-- Use Skill List 1214
REPLACE INTO `mob_skill_lists` VALUES ('Nantina',5000,1617);
-- REPLACE INTO `mob_skill_lists` VALUES ('Nantina',5000,1618);
-- REPLACE INTO `mob_skill_lists` VALUES ('Nantina',5000,1619);
--         Stcemqestcint          --
-- Use Skill List 245
-- --------------------------------------------------------------------
--                           Dynamis-Buburimu                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "146"; -- Apocalyptic Beast
REPLACE INTO `mob_droplist` VALUES (146,0,0,1000,1456,@VRARE); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (146,0,0,1000,1450,@VRARE); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (146,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
-- Statues/Eyes
-- Goblin Replica
DELETE FROM `mob_droplist` WHERE dropid = "7515"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7515,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7515,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7515,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7515,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (7515,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7515,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7515,1,1,@VRARE,1453,334); -- Montinont Silverpiece
-- Manifest Icon
DELETE FROM `mob_droplist` WHERE dropid = "7520"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7520,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7520,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7520,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7520,0,0,1000,1450,@VRARE); -- Jadeshell
-- Serjeant Tombstone
DELETE FROM `mob_droplist` WHERE dropid = "7521"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7521,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7521,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7521,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7521,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
-- Adamantking Effigy
DELETE FROM `mob_droplist` WHERE dropid = "7522"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7522,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7522,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7522,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7522,0,0,1000,1456,@VRARE); -- Hundred Byne Bill
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "230"; -- NMs
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (230,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (230,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (230,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (230,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (230,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (230,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (230,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (230,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (230,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (230,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (230,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (230,1,3,@VRARE,1453,333); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "2667"; -- Goblin NM
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2667,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2667,1,3,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2667,1,3,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2667,1,3,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2667,1,4,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2667,1,4,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2667,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2667,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2667,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2667,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (2667,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (2667,1,3,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (2667,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2667,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2667,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "760"; -- Orc NM
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (760,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (760,1,2,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (760,1,2,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (760,1,2,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (760,1,3,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (760,1,3,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (760,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (760,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (760,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "2901"; -- Quadav NM
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2901,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2901,1,2,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2901,1,2,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2901,1,2,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2901,1,3,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2901,1,3,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2901,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2901,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2901,0,0,1000,1456,@VRARE); -- Hundred Byne
DELETE FROM `mob_droplist` WHERE dropid = "2085"; -- Yagudo NM
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2085,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2085,1,2,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2085,1,2,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2085,1,2,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2085,1,3,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2085,1,3,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2085,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2085,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2085,0,0,1000,1450,@VRARE); -- Jadeshell
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2540"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2540,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2540,1,2,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2540,1,2,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2540,1,2,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2540,1,3,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2540,1,3,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2540,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2540,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2540,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2540,1,3,@UNCOMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2540,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2540,1,3,@UNCOMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2540,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2540,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2540,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2545"; -- Orc
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2545,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2545,1,2,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2545,1,2,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2545,1,2,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2545,1,3,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2545,1,3,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2545,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2545,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2545,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "2555"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2555,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2555,1,2,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2555,1,2,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2555,1,2,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2555,1,3,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2555,1,3,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2555,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2555,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2555,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "2550"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (2550,1,1,@UNCOMMON,15116,67);  -- SMN Hands
-- REPLACE INTO `mob_droplist` VALUES (2550,1,2,@UNCOMMON,16346,200); -- BLU Legs  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2550,1,2,@UNCOMMON,15028,200); -- COR Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2550,1,2,@UNCOMMON,11388,200); -- PUP Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2550,1,3,@UNCOMMON,11478,200); -- DNC Head  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2550,1,3,@UNCOMMON,11398,200); -- SCH Feet  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2550,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2550,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2550,2,0,1000,1449,0); -- Whiteshell
--           Nightmare           --
DELETE FROM `mob_droplist` WHERE dropid = "1789"; -- Bunny/Mandragora
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1789,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (1789,1,2,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1789,1,2,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1789,1,2,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1789,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1789,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1789,1,3,@RARE,15877,500); -- NIN Belt
REPLACE INTO `mob_droplist` VALUES (1789,1,3,@RARE,15482,500); -- BRD Back
-- REPLACE INTO `mob_droplist` VALUES (1789,1,5,10,16244,1000); -- BLU Back (Comment in for ToAU)
REPLACE INTO `mob_droplist` VALUES (1789,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1789,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1789,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "1805"; -- Cockatrice
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1805,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (1805,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1805,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1805,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1805,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1805,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1805,1,2,@RARE,15874,500); -- BLM Waist
REPLACE INTO `mob_droplist` VALUES (1805,1,2,@RARE,15878,500); -- DRG Waist
-- REPLACE INTO `mob_droplist` VALUES (1805,1,5,@RARE,16245,1000); -- PUP Back (Comment in for ToAU)
REPLACE INTO `mob_droplist` VALUES (1805,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1805,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1805,2,0,1000,1449,0); -- Whiteshell (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "1791"; -- Crab
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1791,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (1791,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1791,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1791,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1791,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1791,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1791,1,2,@RARE,15874,333); -- BLM Waist
REPLACE INTO `mob_droplist` VALUES (1791,1,2,@RARE,15481,333); -- PLD Back
REPLACE INTO `mob_droplist` VALUES (1791,1,2,@RARE,15878,334); -- DRG Waist
REPLACE INTO `mob_droplist` VALUES (1791,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1791,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1791,2,0,1000,1449,0); -- Whiteshell
DELETE FROM `mob_droplist` WHERE dropid = "1798"; -- Crawler
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1798,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (1798,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1798,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1798,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1798,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1798,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1798,1,2,@RARE,15479,500); -- DRK Back
REPLACE INTO `mob_droplist` VALUES (1798,1,2,@RARE,15871,500); -- WAR Waist
REPLACE INTO `mob_droplist` VALUES (1798,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1798,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1798,2,0,1000,1455,0); -- Byne Bill (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2796"; -- Dhalmel
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (2796,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (2796,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2796,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2796,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2796,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2796,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2796,1,2,@RARE,15479,500); -- DRK Back
REPLACE INTO `mob_droplist` VALUES (2796,1,2,@RARE,15871,500); -- WAR Waist
-- REPLACE INTO `mob_droplist` VALUES (2796,1,5,10,16244,1000); -- BLU Back (Comment in for ToAU)
REPLACE INTO `mob_droplist` VALUES (2796,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2796,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2796,2,0,1000,1449,0); -- Whiteshell
DELETE FROM `mob_droplist` WHERE dropid = "2795"; -- Eft
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (2795,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (2795,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2795,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2795,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2795,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2795,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2795,1,2,@RARE,15478,500); -- MNK Back
REPLACE INTO `mob_droplist` VALUES (2795,1,2,@RARE,15481,500); -- PLD Back
REPLACE INTO `mob_droplist` VALUES (2795,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2795,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2795,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "1788"; -- Raven
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1788,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (1788,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1788,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1788,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1788,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1788,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1788,1,2,@RARE,15873,500); -- RDM Waist
REPLACE INTO `mob_droplist` VALUES (1788,1,2,@RARE,15876,500); -- RNG Waist
-- REPLACE INTO `mob_droplist` VALUES (1788,1,5,10,16244,1000); -- BLU Back (Comment in for ToAU)
REPLACE INTO `mob_droplist` VALUES (1788,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1788,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1788,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "1787"; -- Scorpion
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1787,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (1787,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1787,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1787,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1787,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1787,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1787,1,2,@RARE,15873,500); -- RDM Waist
REPLACE INTO `mob_droplist` VALUES (1787,1,2,@RARE,15876,500); -- RNG Waist
REPLACE INTO `mob_droplist` VALUES (1787,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1787,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1787,2,0,1000,1449,0); -- Whiteshell
DELETE FROM `mob_droplist` WHERE dropid = "1785"; -- Uragnite
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (1785,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
-- REPLACE INTO `mob_droplist` VALUES (1785,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1785,1,3,@UNCOMMON,2669,333); -- COR -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1785,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1785,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1785,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1785,1,2,@RARE,15478,500); -- MNK Back
REPLACE INTO `mob_droplist` VALUES (1785,1,2,@RARE,15481,500); -- PLD Back
-- REPLACE INTO `mob_droplist` VALUES (1785,1,5,10,16245,1000); -- PUP Back
REPLACE INTO `mob_droplist` VALUES (1785,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1785,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1785,2,0,1000,1455,0); -- Byne Bill (Steal)
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
REPLACE INTO `mob_skill_lists` VALUES ('Stihi',5001,642);
REPLACE INTO `mob_skill_lists` VALUES ('Vishap',5002,643);
REPLACE INTO `mob_skill_lists` VALUES ('Jurik',5003,644);
REPLACE INTO `mob_skill_lists` VALUES ('Barong',5004,645);
REPLACE INTO `mob_skill_lists` VALUES ('Tarasca',5005,646);
REPLACE INTO `mob_skill_lists` VALUES ('Alklha',5006,647);
REPLACE INTO `mob_skill_lists` VALUES ('Basillic',5007,648);
REPLACE INTO `mob_skill_lists` VALUES ('Aitvaras',5008,649);
REPLACE INTO `mob_skill_lists` VALUES ('Koschei',5009,650);
REPLACE INTO `mob_skill_lists` VALUES ('Stollenwurm',5010,651);
-- --------------------------------------------------------------------
--                            Dynamis-Qufim                         --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "112"; -- Antaeus
REPLACE INTO `mob_droplist` VALUES (112,0,0,1000,1456,@VRARE); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (112,0,0,1000,1450,@VRARE); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (112,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
-- Statues
-- Goblin Replica
DELETE FROM `mob_droplist` WHERE dropid = "7516"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7516,0,0,1000,749,@RARE);      -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7516,0,0,1000,748,@RARE);      -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7516,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7516,0,0,1000,1470,@RARE);     -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (7516,1,1,@VRARE,1456,333);     -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7516,1,1,@VRARE,1450,333);     -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7516,1,1,@VRARE,1453,334);     -- Montinont Silverpiece
-- Adamantking Effigy
DELETE FROM `mob_droplist` WHERE dropid = "7517"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7517,0,0,1000,749,@RARE);      -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7517,0,0,1000,748,@RARE);      -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7517,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7517,0,0,1000,1456,@VRARE);    -- Hundred Byne Bill
-- Manifest Icon
DELETE FROM `mob_droplist` WHERE dropid = "7518"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7518,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7518,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7518,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7518,0,0,1000,1450,@VRARE); -- Jadeshell
-- Sejeant Tombstone
DELETE FROM `mob_droplist` WHERE dropid = "7519"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7519,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7519,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7519,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7519,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "3131"; -- NMs
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (3131,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
-- REPLACE INTO `mob_droplist` VALUES (3131,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3131,1,3,@UNCOMMON,2671,333); -- COR -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3131,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (3131,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (3131,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (3131,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (3131,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (3131,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (3131,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (3131,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (3131,1,3,@VRARE,1453,333); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "2541"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (2541,1,1,@UNCOMMON,15146,67);  -- SMN Feet
-- REPLACE INTO `mob_droplist` VALUES (2541,1,2,@UNCOMMON,15025,333); -- BLU Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2541,1,2,@UNCOMMON,11385,333); -- COR Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2541,1,2,@UNCOMMON,15031,334); -- PUP Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2541,1,3,@UNCOMMON,16352,500); -- DNC Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2541,1,3,@UNCOMMON,16362,500); -- SCH Legs  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2541,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2541,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2541,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2541,1,3,@UNCOMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2541,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2541,1,3,@UNCOMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2541,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2541,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2541,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "2546"; -- Orc
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (2546,1,1,@UNCOMMON,15146,67);  -- SMN Feet
-- REPLACE INTO `mob_droplist` VALUES (2546,1,2,@UNCOMMON,15025,333); -- BLU Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2546,1,2,@UNCOMMON,11385,333); -- COR Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2546,1,2,@UNCOMMON,15031,334); -- PUP Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2546,1,3,@UNCOMMON,16352,500); -- DNC Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2546,1,3,@UNCOMMON,16362,500); -- SCH Legs  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2546,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2546,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2546,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "2556"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (2556,1,1,@UNCOMMON,15146,67);  -- SMN Feet
-- REPLACE INTO `mob_droplist` VALUES (2556,1,2,@UNCOMMON,15025,333); -- BLU Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2556,1,2,@UNCOMMON,11385,333); -- COR Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2556,1,2,@UNCOMMON,15031,334); -- PUP Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2556,1,3,@UNCOMMON,16352,500); -- DNC Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2556,1,3,@UNCOMMON,16362,500); -- SCH Legs  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2556,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2556,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2556,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "2551"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (2551,1,1,@UNCOMMON,15146,67);  -- SMN Feet
-- REPLACE INTO `mob_droplist` VALUES (2551,1,2,@UNCOMMON,15025,333); -- BLU Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2551,1,2,@UNCOMMON,11385,333); -- COR Feet  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2551,1,2,@UNCOMMON,15031,334); -- PUP Hands (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (2551,1,3,@UNCOMMON,16352,500); -- DNC Feet  (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (2551,1,3,@UNCOMMON,16362,500); -- SCH Legs  (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (2551,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2551,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2551,2,0,1000,1449,0); -- Whiteshell
--           Nightmare           --
DELETE FROM `mob_droplist` WHERE dropid = "1793"; -- Gaylas/Kraken/Raptor/Roc
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1793,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
-- REPLACE INTO `mob_droplist` VALUES (1793,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1793,1,3,@UNCOMMON,2671,333); -- COR -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1793,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1793,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1793,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1793,1,2,@RARE,15872,200); -- WHM Waist
REPLACE INTO `mob_droplist` VALUES (1793,1,2,@RARE,15478,200); -- MNK Back
REPLACE INTO `mob_droplist` VALUES (1793,1,2,@RARE,15878,200); -- DRG Waist
REPLACE INTO `mob_droplist` VALUES (1793,1,2,@RARE,15484,200); -- SMN Back
REPLACE INTO `mob_droplist` VALUES (1793,1,2,@RARE,15875,200); -- BST Waist
-- REPLACE INTO `mob_droplist` VALUES (1793,1,5,10,16245,1000); -- PUP Back  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1793,1,6,10,15925,1000); -- SCH Waist (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1793,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1793,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1793,2,0,1000,1455,0); -- Byne Bill (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "1803"; -- Snoll
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1803,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
-- REPLACE INTO `mob_droplist` VALUES (1803,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1803,1,3,@UNCOMMON,2671,333); -- COR -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1803,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1803,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1803,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1803,1,2,@RARE,15872,143); -- WHM Waist
REPLACE INTO `mob_droplist` VALUES (1803,1,2,@RARE,15478,143); -- MNK Back
REPLACE INTO `mob_droplist` VALUES (1803,1,2,@RARE,15878,143); -- DRG Waist
REPLACE INTO `mob_droplist` VALUES (1803,1,2,@RARE,15484,143); -- SMN Back
REPLACE INTO `mob_droplist` VALUES (1803,1,2,@RARE,15875,143); -- BST Waist
-- REPLACE INTO `mob_droplist` VALUES (1803,1,5,10,16245,1000); -- PUP Back  (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1803,1,6,10,15925,1000); -- SCH Waist (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1803,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1803,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1803,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "1790"; -- Diremite
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1790,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
-- REPLACE INTO `mob_droplist` VALUES (1790,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1790,1,3,@UNCOMMON,2671,333); -- COR -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1790,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1790,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1790,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1790,1,2,@RARE,15479,200); -- DRK Back
REPLACE INTO `mob_droplist` VALUES (1790,1,2,@RARE,15480,200); -- THF Back
REPLACE INTO `mob_droplist` VALUES (1790,1,2,@RARE,15873,200); -- RDM Waist
REPLACE INTO `mob_droplist` VALUES (1790,1,2,@RARE,15879,200); -- SAM Waist
REPLACE INTO `mob_droplist` VALUES (1790,1,2,@RARE,15876,200); -- RNG Waist
-- REPLACE INTO `mob_droplist` VALUES (1790,1,5,10,15920,1000); -- COR Waist (Comment in for ToAU)
REPLACE INTO `mob_droplist` VALUES (1790,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1790,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1790,2,0,1000,1449,0); -- Whiteshell (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "1804"; -- Stirge/Tiger/Weapon
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (1804,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
-- REPLACE INTO `mob_droplist` VALUES (1804,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1804,1,3,@UNCOMMON,2671,333); -- COR -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1804,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1804,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1804,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1804,1,2,@RARE,15479,200); -- DRK Back
REPLACE INTO `mob_droplist` VALUES (1804,1,2,@RARE,15480,200); -- THF Back
REPLACE INTO `mob_droplist` VALUES (1804,1,2,@RARE,15873,200); -- RDM Waist
REPLACE INTO `mob_droplist` VALUES (1804,1,2,@RARE,15879,200); -- SAM Waist
REPLACE INTO `mob_droplist` VALUES (1804,1,2,@RARE,15876,200); -- RNG Waist
-- REPLACE INTO `mob_droplist` VALUES (1804,1,5,10,15920,1000); -- COR Waist
REPLACE INTO `mob_droplist` VALUES (1804,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1804,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1804,2,0,1000,1452,0); -- Bronzepiece (Steal)
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- --------------------------------------------------------------------
--                           Dynamis-Tavnazia                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--             Nightmare         --
DELETE FROM `mob_droplist` WHERE dropid = "1786"; -- Nightmare Cluster
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2034,66);  -- WAR -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2039,66);  -- MNK -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2044,66);  -- WHM -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2049,66);  -- BLM -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2054,66);  -- RDM -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2059,67);  -- THF -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2064,67);  -- PLD -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2069,67);  -- DRK -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2074,67);  -- BST -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2079,67);  -- BRD -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2084,67);  -- RNG -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2089,67);  -- SAM -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2094,67);  -- NIN -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2099,67);  -- DRG -1 Body
REPLACE INTO `mob_droplist` VALUES (1786,1,1,@UNCOMMON,2104,67);  -- SMN -1 Body
-- REPLACE INTO `mob_droplist` VALUES (1786,1,2,@UNCOMMON,2663,333); -- BLU -1 Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1786,1,2,@UNCOMMON,2668,333); -- COR -1 Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1786,1,2,@UNCOMMON,2673,334); -- PUP -1 Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1786,1,3,@UNCOMMON,2719,500); -- DNC -1 Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1786,1,3,@UNCOMMON,2724,500); -- SCH -1 Body (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1786,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1786,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1786,2,0,1000,1452,0); -- Bronzepiece

DELETE FROM `mob_droplist` WHERE dropid = "1796"; -- Nightmare Leech
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2034,66); -- WAR -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2039,66); -- MNK -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2044,66); -- WHM -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2049,66); -- BLM -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2054,66); -- RDM -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2059,67); -- THF -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2064,67); -- PLD -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2069,67); -- DRK -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2074,67); -- BST -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2079,67); -- BRD -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2084,67); -- RNG -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2089,67); -- SAM -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2094,67); -- NIN -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2099,67); -- DRG -1 Body
REPLACE INTO `mob_droplist` VALUES (1796,1,1,@UNCOMMON,2104,67); -- SMN -1 Body
-- REPLACE INTO `mob_droplist` VALUES (1796,1,2,@UNCOMMON,2663,333); -- BLU -1 Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1796,1,2,@UNCOMMON,2668,333); -- COR -1 Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1796,1,2,@UNCOMMON,2673,334); -- PUP -1 Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1796,1,3,@UNCOMMON,2719,500); -- DNC -1 Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1796,1,3,@UNCOMMON,2724,500); -- SCH -1 Body (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1796,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1796,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1796,2,0,1000,1449,0); -- Whiteshell

DELETE FROM `mob_droplist` WHERE dropid = "1795"; -- Nightmare Bugard/Hornet
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2036,66); -- WAR -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2041,66); -- MNK -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2046,66); -- WHM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2051,66); -- BLM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2056,66); -- RDM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2061,67); -- THF -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2066,67); -- PLD -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2071,67); -- DRK -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2076,67); -- BST -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2081,67); -- BRD -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2086,67); -- RNG -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2091,67); -- SAM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2096,67); -- NIN -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2101,67); -- DRG -1 Legs
REPLACE INTO `mob_droplist` VALUES (1795,1,1,@UNCOMMON,2106,67); -- SMN -1 Legs
-- REPLACE INTO `mob_droplist` VALUES (1795,1,2,@UNCOMMON,2665,333); -- BLU -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1795,1,2,@UNCOMMON,2670,333); -- COR -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1795,1,2,@UNCOMMON,2675,334); -- PUP -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1795,1,3,@UNCOMMON,2721,500); -- DNC -1 Legs (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1795,1,3,@UNCOMMON,2726,500); -- SCH -1 Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1795,0,0,1000,1455,@COMMON); -- One Byne Bill
REPLACE INTO `mob_droplist` VALUES (1795,0,0,1000,1455,@UNCOMMON); -- One Byne Bill
REPLACE INTO `mob_droplist` VALUES (1795,2,0,1000,1455,0); -- One Byne Bill

DELETE FROM `mob_droplist` WHERE dropid = "1797"; -- Nightmare Makara
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2036,66); -- WAR -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2041,66); -- MNK -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2046,66); -- WHM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2051,66); -- BLM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2056,66); -- RDM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2061,67); -- THF -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2066,67); -- PLD -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2071,67); -- DRK -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2076,67); -- BST -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2081,67); -- BRD -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2086,67); -- RNG -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2091,67); -- SAM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2096,67); -- NIN -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2101,67); -- DRG -1 Legs
REPLACE INTO `mob_droplist` VALUES (1797,1,1,@UNCOMMON,2106,67); -- SMN -1 Legs
-- REPLACE INTO `mob_droplist` VALUES (1797,1,2,@UNCOMMON,2665,333); -- BLU -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1797,1,2,@UNCOMMON,2670,333); -- COR -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1797,1,2,@UNCOMMON,2675,334); -- PUP -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1797,1,3,@UNCOMMON,2721,500); -- DNC -1 Legs (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1797,1,3,@UNCOMMON,2726,500); -- SCH -1 Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1797,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1797,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1797,2,0,1000,1452,0); -- Bronzepiece

DELETE FROM `mob_droplist` WHERE dropid = "1807"; -- Nightmare Worm
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2036,66); -- WAR -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2041,66); -- MNK -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2046,66); -- WHM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2051,66); -- BLM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2056,66); -- RDM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2061,67); -- THF -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2066,67); -- PLD -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2071,67); -- DRK -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2076,67); -- BST -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2081,67); -- BRD -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2086,67); -- RNG -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2091,67); -- SAM -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2096,67); -- NIN -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2101,67); -- DRG -1 Legs
REPLACE INTO `mob_droplist` VALUES (1807,1,1,@UNCOMMON,2106,67); -- SMN -1 Legs
-- REPLACE INTO `mob_droplist` VALUES (1807,1,2,@UNCOMMON,2665,333); -- BLU -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1807,1,2,@UNCOMMON,2670,333); -- COR -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1807,1,2,@UNCOMMON,2675,334); -- PUP -1 Legs (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1807,1,3,@UNCOMMON,2721,500); -- DNC -1 Legs (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1807,1,3,@UNCOMMON,2726,500); -- SCH -1 Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1807,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1807,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1807,2,0,1000,1449,0); -- Whiteshell

DELETE FROM `mob_droplist` WHERE dropid = "2854"; -- Nightmare Taurus
REPLACE INTO `mob_droplist` VALUES (2854,1,1,@RARE,14515,250); -- Hydra Doublet
REPLACE INTO `mob_droplist` VALUES (2854,1,1,@RARE,14516,250); -- Hydra Harness
REPLACE INTO `mob_droplist` VALUES (2854,1,1,@RARE,14517,250); -- Hydra Haubert
REPLACE INTO `mob_droplist` VALUES (2854,1,1,@RARE,14518,250); -- Hydra Jupon
REPLACE INTO `mob_droplist` VALUES (2854,1,2,@RARE,14924,250); -- Hydra Gloves
REPLACE INTO `mob_droplist` VALUES (2854,1,2,@RARE,14925,250); -- Hydra Mittens
REPLACE INTO `mob_droplist` VALUES (2854,1,2,@RARE,14926,250); -- Hydra Moufles
REPLACE INTO `mob_droplist` VALUES (2854,1,2,@RARE,14927,250); -- Hydra Bracers
REPLACE INTO `mob_droplist` VALUES (2854,1,3,@RARE,15260,250); -- Hydra Beret
REPLACE INTO `mob_droplist` VALUES (2854,1,3,@RARE,15261,250); -- Hydra Tiara
REPLACE INTO `mob_droplist` VALUES (2854,1,3,@RARE,15262,250); -- Hydra Salade
REPLACE INTO `mob_droplist` VALUES (2854,1,3,@RARE,15263,250); -- Hydra Cap
REPLACE INTO `mob_droplist` VALUES (2854,1,4,@RARE,15595,250); -- Hydra Brais
REPLACE INTO `mob_droplist` VALUES (2854,1,4,@RARE,15596,250); -- Hydra Tights
REPLACE INTO `mob_droplist` VALUES (2854,1,4,@RARE,15597,250); -- Hydra Brayettes
REPLACE INTO `mob_droplist` VALUES (2854,1,4,@RARE,15598,250); -- Hydra Hose
REPLACE INTO `mob_droplist` VALUES (2854,1,5,@RARE,15680,250); -- Hydra Gaiters
REPLACE INTO `mob_droplist` VALUES (2854,1,5,@RARE,15681,250); -- Hydra Spats
REPLACE INTO `mob_droplist` VALUES (2854,1,5,@RARE,15682,250); -- Hydra Sollerets
REPLACE INTO `mob_droplist` VALUES (2854,1,5,@RARE,15683,250); -- Hydra Boots
REPLACE INTO `mob_droplist` VALUES (2854,1,6,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (2854,1,6,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (2854,1,6,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (2854,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (2854,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (2854,2,0,1000,1452,0); -- Bronzepiece (Steal)

--             Regular           --
DELETE FROM `mob_droplist` WHERE dropid = "1342"; -- Hydra ** NOTE THESE ARE THE SAME DROP RATES AT Dynamis-Beac **
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (1342,1,1,@RARE,15101,67); -- SMN Body
-- REPLACE INTO `mob_droplist` VALUES (1342,1,5,@RARE,11295,333); -- COR Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1342,1,5,@RARE,11292,333); -- BLU Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1342,1,5,@RARE,11298,334); -- PUP Body (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1342,1,6,@RARE,11307,500); -- SCH Body (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1342,1,6,@RARE,16360,500); -- DNC Legs (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1342,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (1342,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (1342,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1342,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1342,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1342,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1342,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1342,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1342,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1342,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1342,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1342,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (1342,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (1342,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "1441"; -- Kindred ** NOTE THESE ARE THE SAME DROP RATES AT Dynamis-Beac **
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15087,66); -- WAR Body
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15073,66); -- MNK Head
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15104,66); -- WHM Hands
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15075,66); -- BLM Head
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15076,66); -- RDM Head
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15107,67); -- THF Hands
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15093,67); -- PLD Body
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15079,67); -- DRK Head
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15110,67); -- BST Hands
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15126,67); -- BRD Legs
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15097,67); -- RNG Body
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15083,67); -- SAM Head
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15114,67); -- NIN Hands
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15085,67); -- DRG Head
REPLACE INTO `mob_droplist` VALUES (1441,1,1,@RARE,15086,67); -- SMN Head
-- REPLACE INTO `mob_droplist` VALUES (1441,1,5,@RARE,11468,333); -- COR Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1441,1,5,@RARE,11465,333); -- BLU Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1441,1,5,@RARE,11471,334); -- PUP Head (Comment in for ToAU)
-- REPLACE INTO `mob_droplist` VALUES (1441,1,6,@RARE,11480,500); -- SCH Head (Comment in for WoTG)
-- REPLACE INTO `mob_droplist` VALUES (1441,1,6,@RARE,11305,500); -- DNC Body (Comment in for WoTG)
REPLACE INTO `mob_droplist` VALUES (1441,1,2,@VCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1441,1,2,@VCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1441,1,2,@VCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1441,1,3,@COMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1441,1,3,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1441,1,3,@COMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1441,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (1441,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (1441,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (1441,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (1441,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (1441,2,0,1000,1452,0); -- Bronzepiece (Steal)

--             Eyes           --
-- Vanguard Eye
DELETE FROM `mob_droplist` WHERE dropid = "7514"; -- Delete
REPLACE INTO `mob_droplist` VALUES (7514,0,0,1000,749,@RARE); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (7514,0,0,1000,748,@RARE); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (7514,0,0,1000,1474,@UNCOMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (7514,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (7514,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (7514,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (7514,1,1,@VRARE,1453,334); -- Montinont Silverpiece

--           Megaboss            --

-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- --------------------------------------------------------------------
--                     Beastmen Mob Skills/Spells                   --
-- --------------------------------------------------------------------
-- ---------------------------------
--            Quadav             --
-- ---------------------------------
--            Statue             --
-- Use List 94
-- Use Spell List 0
--              NMs              --
-- Use Skill List 202
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,611);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,612);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,613);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,1074);
--            Regular            --
-- Use Skill List 337
-- ---------------------------------
--              Orc              --
-- ---------------------------------
--            Statue             --
-- Use List
-- Use Spell List
--              NMs              --
-- Use Skill List 1200
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,605);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,606);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,607);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,608);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,609);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,1066);
--            Regular            --
-- Use Skill List 334
-- ---------------------------------
--            Goblin             --
-- ---------------------------------
--            Statue             --
-- Use List
-- Use Spell List
--              NMs              --
-- Use Skill List 373
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,590);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,591);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1082);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1084);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1086);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1099);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1100);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1101);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1102);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1103);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1104);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1105);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1106);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1107);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1108);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1109);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1518);
--            Regular            --
-- Use Skill List 327
-- ---------------------------------
--            Yagudo             --
-- ---------------------------------
--            Statue             --
-- Use List
-- Use Spell List
--              NMs              --
-- Use Skill List 1201
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,617);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,618);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,619);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,620);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,764);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,1067);
--            Regular            --
-- Use Skill List 360
-- ---------------------------------
--             Hydra             --
-- ---------------------------------
--              NMs              --
-- Use Skill List 359
--            Regular            --
-- Use Skill List 359
-- ---------------------------------
--            Kindred            --
-- ---------------------------------
--              NMs              --
-- Use Skill List 358
--            Regular            --
-- Use Skill List 358
-- ---------------------------------
--          Mob Spells           --
-- ---------------------------------
--              NMs              --
-- WHM Use List 1
-- BLM Use List 500
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,144,13,22);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,145,38,47);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,146,62,67);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,147,73,85);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,149,17,27);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,150,42,53);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,151,64,68);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,152,74,88);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,154,9,18);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,155,34,44);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,156,59,66);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,157,72,82);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,159,1,10);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,160,26,35);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,161,51,60);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,162,68,73);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,164,21,46);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,165,46,55);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,166,66,70);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,167,75,92);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,169,5,12);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,170,30,40);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,171,55,61);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,172,70,78);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,174,28,35);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,175,53,60);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,176,69,90);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,179,32,39);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,180,57,62);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,181,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,184,23,31);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,185,48,56);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,186,67,71);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,189,15,22);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,190,40,47);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,191,63,67);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,194,36,43);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,195,61,65);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,196,73,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,199,19,27);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,200,44,52);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,201,65,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,204,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,206,50,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,208,52,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,210,54,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,212,56,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,214,58,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,220,3,17);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,221,43,64);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,225,24,71);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,226,72,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,230,10,34);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,231,35,59);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,232,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,235,24,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,236,22,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,237,20,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,238,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,239,16,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,240,27,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,245,12,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,247,25,82);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,249,10,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,252,45,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,253,20,40);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,254,4,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,258,7,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,259,41,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,273,31,55);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',1100,274,56,255);
-- RDM Use List 3
-- PLD Use List 4
-- DRK Use List 5
-- BRD Use List 6
-- NIN Use List 7
--          Goublefaupe         --
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,1,3,13);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,2,14,25);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,3,26,48);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,4,48,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,23,1,30);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,24,31,59);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,25,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,33,15,54);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,34,55,70);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,35,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,43,7,26);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,44,27,46);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,45,47,62);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,46,63,76);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,47,80,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,48,17,36);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,49,37,56);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,50,57,67);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,51,68,86);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,52,87,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,53,23,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,54,34,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,55,12,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,56,13,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,57,48,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,58,6,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,59,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,100,24,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,101,22,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,102,20,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,103,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,104,16,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,105,27,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,108,21,75);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,110,80,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,144,19,49);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,145,50,70);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,146,71,85);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,147,86,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,149,24,54);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,150,55,72);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,151,73,88);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,152,89,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,154,14,44);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,155,45,68);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,156,69,82);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,157,83,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,159,4,34);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,160,35,64);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,161,65,76);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,162,77,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,164,29,59);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,165,60,74);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,166,75,91);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,167,89,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,169,9,39);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,170,40,66);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,171,67,88);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,172,80,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,216,21,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,220,5,45);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,221,46,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,230,10,35);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,231,36,70);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,232,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,253,25,45);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,254,8,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,258,11,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,259,46,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,260,32,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,112,32,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',1101,97,32,255);
--           Quieitiel           --
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,144,13,22);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,145,38,47);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,146,62,67);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,147,73,85);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,149,17,27);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,150,42,53);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,151,64,68);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,152,74,88);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,154,9,18);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,155,34,44);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,156,59,66);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,157,72,82);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,159,1,10);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,160,26,35);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,161,51,60);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,162,68,73);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,164,21,46);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,165,46,55);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,166,66,70);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,167,75,92);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,169,5,12);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,170,30,40);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,171,55,61);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,172,70,78);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,174,28,35);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,175,53,60);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,176,69,90);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,179,32,39);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,180,57,62);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,181,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,184,23,31);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,185,48,56);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,186,67,71);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,189,15,22);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,190,40,47);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,191,63,67);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,194,36,43);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,195,61,65);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,196,73,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,199,19,27);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,200,44,52);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,201,65,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,204,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,206,50,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,208,52,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,210,54,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,212,56,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,214,58,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,220,3,17);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,221,43,64);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,225,24,71);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,226,72,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,230,10,34);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,231,35,59);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,232,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,235,24,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,236,22,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,237,20,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,238,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,239,16,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,240,27,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,245,12,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,247,25,82);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,248,83,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,249,10,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,252,45,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,253,20,40);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,254,4,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,258,7,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,259,41,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,273,31,55);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',1102,274,56,255);

--            Regular            --
-- WHM Use List 1
-- BLM Use List 500
-- RDM Use List 3
-- PLD Use List 4
-- DRK Use List 5
-- BRD Use List 6
-- NIN Use List 7
-- --------------------------------------------------------------------
--                        Skill Modifictions                        --
-- --------------------------------------------------------------------
-- Dynamis - Valkurm
DELETE FROM mob_skills WHERE mob_skill_id = "1605"; -- Miasmic Breath
REPLACE INTO mob_skills VALUES (1605,63,'miasmic_breath',4,15.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1607"; -- Fragrant Breath
REPLACE INTO mob_skills VALUES (1607,63,'fragrant_breath',4,15.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1609"; -- Putrid Breath
REPLACE INTO mob_skills VALUES (1609,63,'putrid_breath',4,15.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1610"; -- Extremely Bad Breath
REPLACE INTO mob_skills VALUES (1610,63,'extremely_bad_breath',1,15.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1611"; -- Vampiric Lash
REPLACE INTO mob_skills VALUES (1611,61,'vampiric_lash',0,15.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1617"; -- Blow
REPLACE INTO mob_skills VALUES (1617,325,'blow',0,7.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1618"; -- Uppercut
REPLACE INTO mob_skills VALUES (1618,328,'uppercut',0,7.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1619"; -- Attractant
REPLACE INTO mob_skills VALUES (1619,331,'attractant',1,15.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1146"; -- Hecatomb Wave (RNG/NIN)
REPLACE INTO mob_skills VALUES (1146,304,'hecatomb_wave',0,25.0,2000,1500,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1123"; -- Hecatomb Wave (RNG/NIN)
REPLACE INTO mob_skills VALUES (1123,355,'ore_toss',0,25.0,2000,1500,4,0,0,0,0,0,0);

-- Suttung
REPLACE INTO `mob_skills` VALUES (1648,418,'crystal_shield',0,7.0,2000,1500,1,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1649,419,'heavy_strike',0,7.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1650,420,'ice_break',1,12.0,2000,1000,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1651,1395,'thunder_break',1,12.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1652,422,'crystal_rain',1,12.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1653,423,'crystal_weapon_fire',0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1654,424,'crystal_weapon_stone',0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1655,425,'crystal_weapon_water',0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1656,426,'crystal_weapon_wind',0,15.0,2000,1500,4,0,0,0,0,0,0);

-- Stringes
INSERT INTO `mob_skills` VALUES (1662,136,'ultrasonics',1,16.0,2000,1000,4,0,0,0,0,0,0);
INSERT INTO `mob_skills` VALUES (1663,138,'blood_drain',0,7.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO `mob_skills` VALUES (1664,337,'subsonics',1,12.0,2000,1500,4,0,0,0,0,0,0);
INSERT INTO `mob_skills` VALUES (1665,338,'marrow_drain',0,7.0,2000,1500,4,0,0,0,0,0,0);

-- Scolopendra
REPLACE INTO `mob_skills` VALUES (1671,202,'ink_jet_alt',0,12.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1672 ,203,'hard_membrane',0,7.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1673 ,204,'cross_attack',0,7.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1674 ,205,'regeneration',0,7.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1675 ,206,'maelstrom',1,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1676 ,207,'whirlwind',1,15.0,2000,1500,4,0,0,0,0,0,0);

-- Antaeus
UPDATE `mob_skills` SET `mob_skill_distance` = 16.5 WHERE `mob_skill_id` = 1636; -- trebuchet distance increase
REPLACE INTO `mob_skills` VALUES (1637,410,'power_attack',0,10.0,2000,1000,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1638,406,'lightning_roar',4,20.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1639,408,'impact_roar',4,17.5,2000,1000,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1640,409,'grand_slam',1,20.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1641,23,'eagle_eye_shot',0,7.0,2000,1500,4,2,0,0,0,0,0);

-- Fairy Ring
REPLACE INTO `mob_skills` VALUES (1620,59,'mephitic_spore',4,12.5,2000,0,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1621,52,'frogkick',0,7.0,2000,1500,4,0,0,0,0,0,0);

-- Nantina (inside era_dyna_sql.sql)

-- Stcemqestcint
REPLACE INTO `mob_skills` VALUES (1612,72,'gouging_branch',4,13.0,2000,0,4,0,0,0,0,0,0);

-- Cirrate (These are already in era_dyna_sql.sql but they will be completely removed once rebase is done)
DELETE FROM mob_skills WHERE mob_skill_id = "1604"; -- Miasmic Breath 1
DELETE FROM mob_skills WHERE mob_skill_id = "1605"; -- Miasmic Breath 2
REPLACE INTO mob_skills VALUES (1604,63,'miasmic_breath',4,17.5,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added
REPLACE INTO mob_skills VALUES (1605,63,'miasmic_breath',4,17.5,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added
DELETE FROM mob_skills WHERE mob_skill_id = "1606"; -- Fragrant Breath 1
DELETE FROM mob_skills WHERE mob_skill_id = "1607"; -- Fragrant Breath 2
REPLACE INTO mob_skills VALUES (1606,63,'fragrant_breath',4,10.0,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added
REPLACE INTO mob_skills VALUES (1607,63,'fragrant_breath',4,17.5,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added
DELETE FROM mob_skills WHERE mob_skill_id = "1608"; -- Putrid Breath 1
DELETE FROM mob_skills WHERE mob_skill_id = "1609"; -- Putrid Breath 2
REPLACE INTO mob_skills VALUES (1608,63,'putrid_breath',4,10.0,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added
REPLACE INTO mob_skills VALUES (1609,63,'putrid_breath',4,20.0,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added
DELETE FROM mob_skills WHERE mob_skill_id = "1610"; -- Extremely Bad Breath
REPLACE INTO mob_skills VALUES (1610,63,'extremely_bad_breath',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added
DELETE FROM mob_skills WHERE mob_skill_id = "1611"; -- Vampiric Lash
REPLACE INTO mob_skills VALUES (1611,61,'vampiric_lash',0,15.0,2000,1500,4,0,0,0,0,0,0); -- Distances are wrong until new column is added

-- Nantina
DELETE FROM mob_skills WHERE mob_skill_id = "1617"; -- Blow
REPLACE INTO mob_skills VALUES (1617,325,'blow',0,12.0,2000,1000,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1618"; -- Uppercut
REPLACE INTO mob_skills VALUES (1618,328,'uppercut',0,12.0,2000,1000,4,0,0,0,0,0,0);
DELETE FROM mob_skills WHERE mob_skill_id = "1619"; -- Attractant
REPLACE INTO mob_skills VALUES (1619,331,'attractant',1,12.0,2000,1000,4,0,0,0,0,0,0);
-- --------------------------------------------------------------------
--                         Add Missing Mobs                         --
-- --------------------------------------------------------------------
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (198,1153,134,'Dynamis_Icon',600,128,3209,9000,8000,80,82,0);
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (199,1155,134,'Dynamis_Statue',600,128,3208,9000,8000,80,82,0);
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (200,1152,134,'Dynamis_Effigy',600,128,3211,9000,8000,80,82,0);
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (201,1156,134,'Dynamis_Tombstone',600,128,3210,9000,8000,82,82,0);
-- --------------------------------------------------------------------
--                            Fix Mob MP                            --
-- --------------------------------------------------------------------
DELETE FROM `mob_groups` WHERE name = "Goublefaupe";
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (6,1774,134,'Goublefaupe',0,128,2574,17000,17000,81,83,0);
DELETE FROM `mob_groups` WHERE name = "Quiebitiel";
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (7,3289,134,'Quiebitiel',0,128,2066,17000,17000,81,83,0);
DELETE FROM `mob_groups` WHERE name = "Mildaunegeux";
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (8,2660,134,'Mildaunegeux',0,128,2574,17000,0,81,83,0);
DELETE FROM `mob_groups` WHERE name = "Velosareon";
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (9,4219,134,'Velosareon',0,128,2574,17000,17000,81,83,0);
DELETE FROM `mob_groups` WHERE name = "Dagourmarche";
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (10,892,134,'Dagourmarche',0,128,2066,17000,0,81,83,0);
DELETE FROM `mob_groups` WHERE name = "Apocalyptic_Beast";
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (1,198,40,'Apocalyptic_Beast',0,128,146,35000,35000,85,85,0);
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (200,1375,39,'Dragontrap',0,128,2910,15000,0,80,80,0);
REPLACE INTO `mob_groups` (`groupid`, `poolid`, `zoneid`, `name`, `respawntime`, `spawntype`, `dropid`, `HP`, `MP`, `minLevel`, `maxLevel`, `allegiance`) VALUES (201,1375,39,'Dragontrap_child',0,128,2910,15000,0,80,80,0);
UPDATE `mob_groups` SET HP = 20000 WHERE name = "Scolopendra" and zoneid = 41;
UPDATE `mob_groups` SET HP = 13500 WHERE name = "Suttung" and zoneid = 41;
UPDATE `mob_groups` SET HP = 13000 WHERE name = "Stringes" and zoneid = 41;

UPDATE `mob_pools` SET mJob = 1, sJob = 1 WHERE name = "Scolopendra" and poolid = 3502;
UPDATE `mob_pools` SET mJob = 11, sJob = 1, cmbSkill = 4 WHERE name = "Antaeus" and poolid = 162; -- RNG/WAR

-- -----------------------------------
-- Skill Lists
-- -----------------------------------

-- Suttung
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1648); -- crystal_shield
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1649); -- heavy_strike
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1650); -- ice_break
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1651); -- thunder_break
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1652); -- crystal_rain
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1653); -- crystal_weapon_fire
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1654); -- crystal_weapon_stone
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1655); -- crystal_weapon_water
INSERT INTO `mob_skill_lists` VALUE ('Suttung', 6500, 1656); -- crystal_weapon_wind

-- Stringes
INSERT INTO `mob_skill_lists` VALUE ('Stringes', 6501, 1662); -- ultrasonics
INSERT INTO `mob_skill_lists` VALUE ('Stringes', 6501, 1663); -- blood_drain
INSERT INTO `mob_skill_lists` VALUE ('Stringes', 6501, 1664); -- subsonics
INSERT INTO `mob_skill_lists` VALUE ('Stringes', 6501, 1665); -- marrow_drain

-- Scolopendra
INSERT INTO `mob_skill_lists` VALUE ('Scolopendra', 6502, 1671); -- ink_jet_alt
INSERT INTO `mob_skill_lists` VALUE ('Scolopendra', 6502, 1672); -- hard_membrane
INSERT INTO `mob_skill_lists` VALUE ('Scolopendra', 6502, 1673); -- cross_attack
INSERT INTO `mob_skill_lists` VALUE ('Scolopendra', 6502, 1674); -- regeneration
INSERT INTO `mob_skill_lists` VALUE ('Scolopendra', 6502, 1675); -- maelstrom
INSERT INTO `mob_skill_lists` VALUE ('Scolopendra', 6502, 1676); -- whirlwind

-- Fairy Ring
INSERT INTO `mob_skill_lists` VALUE ('Fairy_Ring', 6503, 1620); -- mephitic_spore

-- Stcemqestcint
INSERT INTO `mob_skill_lists` VALUE ('Stcemqestcint', 6504, 1612); -- gouging_branch

-- Cirrate Christelle
-- These IDs are the more powerful ones
INSERT INTO `mob_skill_lists` VALUES ('Cirrate_Christelle',6505,1605); -- miasmic_breath
INSERT INTO `mob_skill_lists` VALUES ('Cirrate_Christelle',6505,1607); -- fragrant_breath
INSERT INTO `mob_skill_lists` VALUES ('Cirrate_Christelle',6505,1609); -- putrid_breath
INSERT INTO `mob_skill_lists` VALUES ('Cirrate_Christelle',6505,1611); -- vampiric_lash

-- Antaeus
INSERT INTO `mob_skill_lists` VALUES ('Antaeus',6506,1637); -- power_attack
INSERT INTO `mob_skill_lists` VALUES ('Antaeus',6506,1638); -- lightning_roar
INSERT INTO `mob_skill_lists` VALUES ('Antaeus',6506,1639); -- impact_roar
INSERT INTO `mob_skill_lists` VALUES ('Antaeus',6506,1640); -- grand_slam
INSERT INTO `mob_skill_lists` VALUES ('Antaeus',6506,1641); -- eagle_eye_shot

-- Antaeus Ranged
INSERT INTO `mob_skill_lists` VALUES ('Antaeus_range',6507,1636); -- trebuchet

-- Fairy Ring TP Moves
INSERT INTO `mob_skill_lists` VALUE ('Fairy_Ring', 6507, 310); -- Queasyshroom
INSERT INTO `mob_skill_lists` VALUE ('Fairy_Ring', 6507, 311); -- Numbshroom
INSERT INTO `mob_skill_lists` VALUE ('Fairy_Ring', 6507, 314); -- Silence Gas
INSERT INTO `mob_skill_lists` VALUE ('Fairy_Ring', 6507, 315); -- Dark Spore
INSERT INTO `mob_skill_lists` VALUE ('Fairy_Ring', 6507, 1621); -- Frogkick

INSERT INTO `mob_skill_lists` VALUE ('Nantina_one', 6508, 1617); -- blow
-- --------------------------------------------------------------------
--                     Zone Misc Modifications                      --
-- --------------------------------------------------------------------
-- THESE HAVE BEEN MOVED TO era/sql/zone_settings.sql
UNLOCK TABLES;
