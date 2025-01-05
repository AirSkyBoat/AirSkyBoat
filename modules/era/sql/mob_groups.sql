LOCK TABLES `mob_groups` WRITE;

-- ------------------------------------------------------------
-- AlTaieu (Zone 33)
-- ------------------------------------------------------------
-- these JoL and JoJ pet changes should eventually go to LSB
UPDATE mob_groups SET minLevel = 80, maxLevel = 80, HP = 2500 WHERE name = "Qnxzomit" and zoneid = 33;
UPDATE mob_groups SET minLevel = 80, maxLevel = 80, HP = 2500 WHERE name = "Ruphuabo" and zoneid = 33;
UPDATE mob_groups SET minLevel = 80, maxLevel = 80, HP = 2500 WHERE name = "Qnhpemde" and zoneid = 33;

UNLOCK TABLES;
