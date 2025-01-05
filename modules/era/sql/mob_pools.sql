LOCK TABLES `mob_pools` WRITE;

-- change Qnxzomit (JoL and JoJ pet) spellList to prevent casting ninja spells
UPDATE mob_pools SET spellList = 0 WHERE poolid = 3271;

UNLOCK TABLES;
