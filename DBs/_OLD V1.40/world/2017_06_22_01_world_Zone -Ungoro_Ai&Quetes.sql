/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.0				AI & Quetes    																											 		 			    */
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 
/****************************************************************************************/
/* 				Divers                                                                                                           				*/
/****************************************************************************************/

REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `ScriptName`) VALUES 
('4885', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', ''),
('538', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', ''),
('4884', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', ''),
('543', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', ''),
('539', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', ''),
('540', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', ''),
('490', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', ''),
('1942', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', '');

UPDATE `locales_gossip_menu_option` SET `option_text_loc2` = 'Avez vous entendu parler de Lar''korwi ?' WHERE `locales_gossip_menu_option`.`menu_id` = 2188 AND `locales_gossip_menu_option`.`id` = 0;

#------Cordes 169
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000208, 0, 0, 0, 0, 0, 36541, 42109, 0, 0, 'Corde', '', '', 'vehichleCursor', 0, 1, 1, 0, 0, 35, 1, 1, 1.1428600549698, 1, 0, 0, 0, 0, 1, 1, 1, 131074, 0, 0, 0, 0, 0, 0, 10, 1074791440, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 128, '', 20173);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(15000208, 0, 0, 50331648, 1, 0, '164310 169304');
-- Corde SAI
SET @ENTRY := 15000208;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,64,0,100,0,0,0,0,0,62,1,0,0,0,0,0,7,0,0,0,-7544.238770,-1501.342896,-248.07395,3.1459,"Corde tour cratere d'un'goro");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000209, 0, 0, 0, 0, 0, 36541, 42109, 0, 0, 'Corde', '', '', 'vehichleCursor', 0, 1, 1, 0, 0, 35, 1, 1, 1.1428600549698, 1, 0, 0, 0, 0, 1, 1, 1, 131074, 0, 0, 0, 0, 0, 0, 10, 1074791440, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 128, '', 20173);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(15000209, 0, 0, 50331648, 1, 0, '164310 169304');
-- Corde SAI 
SET @ENTRY := 15000209;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,64,0,100,0,0,0,0,0,62,1,0,0,0,0,0,7,0,0,0,-7537.010254,-1602.067871,-247.260300,1.3021,"Corde tour cratere d'un'goro");

UPDATE `creature_template` SET `scale` = 0.5, `DamageModifier` = 3 WHERE (entry = 9119);
UPDATE `creature_template` SET `scale` = 0.8, `DamageModifier` = 3 WHERE (entry = 9118);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070807, 15000208, 1, 0, 0, 1, 0, 0, 0, 0, -7546.12, -1502.94, -267.016, 3.19498, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21070805, 15000209, 1, 0, 0, 1, 0, 0, 0, 0, -7535.51, -1599.95, -266.253, 1.55351, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `creature`.`guid` = 21070766;
DELETE FROM `creature` WHERE `creature`.`guid` = 21070765;

UPDATE `creature_template` SET `speed_walk` = 2, `speed_run` = 2,`unit_class` = 2, `DamageModifier` = 4 WHERE (entry = 52232);
-- Maximillian of Northshire SAI
SET @ENTRY := 52232;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,25,0,0,0,100,0,2000,2000,2500,2500,11,35395,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe du croisé"),
(@ENTRY,0,15,0,60,0,100,0,0,0,2000,2000,109,0,1500,0,0,0,0,1,0,0,0,0,0,0,0,"Regen Mana");

DELETE FROM `world`.`spell_linked_spell` WHERE `spell_linked_spell`.`spell_trigger` = 6552  AND (`spell_linked_spell`.`spell_effect` =67235 OR `spell_linked_spell`.`spell_effect` =85387);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (6552,67235 , 1, "Stitch : guerrier - Volée de coups : interompre "); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (6552,85387 , 0, "Stitch : guerrier - Volée de coups : stun "); 


/****************************************************************************************/
/* 				AI & Mobs                                                                                                   				*/
/****************************************************************************************/

# UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 8301 ;
# UPDATE `creature_loot_template` SET `Chance` = '100' WHERE `creature_loot_template`.`Entry` = 11560 AND `creature_loot_template`.`Item` = 15849;

UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 2955;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 50478;

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48096, 0, 0, 0, 1, 233, NULL); # Tape avec masse
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (1322, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49944, 0, 0, 0, 0, 0, '97014'); # Pecher
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49920, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49921 , 0, 0, 0, 0, 0, 79506); # Parler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (2920, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (41162, 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (76103, 0, 0, 8, 1, 0, NULL); # agenouillé

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50541, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50530, 0, 0, 1, 1, 0, ''); # Assis par terre

UPDATE `creature_template` SET `flags_extra` = 128 WHERE (entry = 38354);
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 33296;
UPDATE `creature` SET `spawntimesecs` = '15' WHERE `creature`.`id` = 2952;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 36094); # agressif
UPDATE `creature_template` SET `faction` = 188 WHERE (entry = 36113); # non agressif

DELETE FROM `creature_template_addon` WHERE `creature_template_addon`.`entry` = 38237;
DELETE FROM `creature_template_addon` WHERE `creature_template_addon`.`entry` = 38373;

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024675, 174682, 1, 0, 0, 1, 0, 0, -7520.23, -1513.39, -266.06, 3.77905, 0, 0, 0.949635, -0.313358, 300, 0, 1, 0);

UPDATE `world`.`creature_template_addon` SET `auras` = NULL WHERE `creature_template_addon`.`entry` = 15201;

UPDATE `creature_template` SET `ArmorModifier` = 3, `DamageModifier` = 5 WHERE (entry = 6560);
-- Stone Guardian SAI
SET @ENTRY := 6560;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,6000,6000,11,83368,0,0,0,0,0,2,0,0,0,0,0,0,0,"Projection"),
(@ENTRY,0,1,0,9,0,100,0,0,10,15000,15000,11,83370,0,0,0,0,0,2,0,0,0,0,0,0,0,"Onde de choc");

UPDATE `creature_template` SET `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 38329);
-- Durrin Direshovel SAI
SET @ENTRY := 38329;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,14000,88000,11,83386,0,0,0,0,0,2,0,0,0,0,0,0,0,"Projection"),
(@ENTRY,0,1,0,9,0,100,0,0,5,24000,25000,11,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fracasser armure"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `scale` = 0.6, `lootid` = 6555, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 38305);
-- Gorishi Fledgling Colossus SAI
SET @ENTRY := 38305;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,5000,17000,25000,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,"poison"),
(@ENTRY,0,1,0,0,0,100,0,8000,9000,27000,34000,11,71791,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Poison Explosion"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,8000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `ArmorModifier` = 3 WHERE (entry = 6555);
-- Gorishi Tunneler SAI
SET @ENTRY := 6555;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,5000,5000,11,14120,0,0,0,0,0,2,0,0,0,0,0,0,0,"Acide de tunnelier"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,10000,10000,11,8137,32,0,0,0,0,2,0,0,0,0,0,0,0,"Varicelle de silithide"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 6552);
-- Gorishi Worker SAI
SET @ENTRY := 6552;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,50,0,2000,2000,10000,10000,11,8137,0,0,0,0,0,2,0,0,0,0,0,0,0,"Varicelle de silithide"),
(@ENTRY,0,10,0,9,0,100,0,0,5,7000,10000,11,79175,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coupe frénétique");

UPDATE `creature_template` SET `HealthModifier` = 1.25, `DamageModifier` = 2.5 WHERE (entry = 6553);
-- Gorishi Reaver SAI
SET @ENTRY := 6553;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,3500,3500,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,5000,7000,11,8137,32,0,0,0,0,2,0,0,0,0,0,0,0,"Varicelle de silithide"),
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante");

UPDATE `creature_template` SET `speed_walk` = 1.5, `speed_run` = 1.5, `ArmorModifier` = 1.5, `DamageModifier` = 3.5 WHERE (entry = 6551);
-- Gorishi Wasp SAI
SET @ENTRY := 6551;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,5000,5000,11,21067,32,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de poison "),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `speed_walk` = 1.5, `speed_run` = 1.5, `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 6554);
-- Gorishi Stinger SAI
SET @ENTRY := 6554;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,5000,5000,11,21067,32,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de poison "),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,157347,0,0,0,0,0,2,0,0,0,0,0,0,0,"Charge embrasée");

UPDATE `creature_template` SET `HealthModifier` = 2, `ArmorModifier` = 3, `DamageModifier` = 4 WHERE (entry = 38307);
-- Gormashh SAI
SET @ENTRY := 38307;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,10,6000,6000,11,14180,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,1,0,9,0,100,0,0,10,5000,5000,11,5568,0,0,0,0,0,1,0,0,0,0,0,0,0,"Piétiner");


UPDATE `creature_template` SET `ArmorModifier` = 1.5, `scale` = 0.6,`HealthModifier` = 1.5, `DamageModifier` = 4 WHERE (entry = 6507);
-- Ravasaur Hunter SAI
SET @ENTRY := 6507;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,15,0,4,0,50,0,0,0,0,0,11,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,"* Assaut fulgurant (charge + 30% de dégâts , 25m)"),
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,60,0,0,0,75,0,5000,5000,15000,15000,11,35321,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure hémorragique (Dégâts physiques 5s/15s)"),
(@ENTRY,0,65,0,0,0,100,0,4000,4000,5000,10000,11,3604,64,0,0,0,0,2,0,0,0,0,0,0,0," - Déchirure du tendon (Vitesse -25% 5s)"),
(@ENTRY,0,70,0,0,0,100,0,4000,6000,12000,15000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0," - Pourfendre (Dégâts physiques 3s/15)");

UPDATE `creature_template` SET `ArmorModifier` = 1.5,`HealthModifier` = 1.5, `DamageModifier` = 3.5 WHERE (entry = 6508);
-- Venomhide Ravasaur SAI
SET @ENTRY := 6508;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,144546,0,0,0,0,0,2,0,0,0,0,0,0,0,"* Bondir pour tuer ( renverse 5-20m )"),
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,7000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,55,0,0,0,50,0,0,0,10000,12000,11,49710,64,0,0,0,0,2,0,0,0,0,0,0,0," - Eventration (Endurance -15% 6 sec)"),
(@ENTRY,0,65,0,0,0,100,0,4000,4000,5000,10000,11,3604,64,0,0,0,0,2,0,0,0,0,0,0,0," - Déchirure du tendon (Vitesse -25% 5s)"),
(@ENTRY,0,80,0,0,0,25,0,0,0,10000,10000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)");

-- Lar'korwi SAI
SET @ENTRY := 9684;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,0,0,100,0,2000,3000,4000,7000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,60,0,0,0,100,0,5000,5000,15000,15000,11,35321,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure hémorragique (Dégâts physiques 5s/15s)"),
(@ENTRY,0,75,0,0,0,100,0,0,0,8000,8000,11,83366,96,0,0,0,0,1,0,0,0,0,0,0,0," - Hurlement strident (déplacement & attaque -10% 20s)"),
(@ENTRY,0,80,0,0,0,75,0,0,0,10000,15000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)");

UPDATE `creature_template` SET `speed_walk` = 1.5, `speed_run` = 1.5, `HealthModifier` = 1.3, `DamageModifier` = 4 WHERE (entry = 6506);
-- Ravasaur Runner SAI
SET @ENTRY := 6506;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,5,0,4,0,50,0,0,0,0,0,0,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,"* Assaut fulgurant (charge & 30% de dégâts - 25m)"),
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,65,0,0,0,100,0,4000,4000,5000,10000,11,3604,64,0,0,0,0,2,0,0,0,0,0,0,0," - Déchirure du tendon (Vitesse -25% 5s)");

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (61313, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 61313);       #  Voler
UPDATE `world`.`creature` SET `position_z` = `position_z` +7 WHERE `creature`.`id` = 61313;       #  Voler

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(6517, 0, 0, 0, 1, 0, NULL),
(6518, 0, 0, 0, 1, 0, NULL),
(6519, 0, 0, 0, 1, 0, NULL),
(6527, 0, 0, 0, 1, 0, NULL);

UPDATE `creature_template` SET `HealthModifier` = 2, `DamageModifier` = 3 WHERE (entry = 6505);
SET @ENTRY := 6505;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,144546,0,0,0,0,0,2,0,0,0,0,0,0,0,"* Bondir pour tuer ( renverse 5-20m )"),
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,50,0,0,0,20,0,0,0,10000,10000,11,3427,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure infectée (dégâts physiques + 5% 20s)"),
(@ENTRY,0,70,0,0,0,100,0,4000,6000,12000,15000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0," - Pourfendre (Dégâts physiques 3s/15)");

UPDATE `creature_template` SET `HealthModifier` = 5, `ArmorModifier` = 1.5, `DamageModifier` = 4 WHERE (entry = 6581);
SET @ENTRY := 6581;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,144546,0,0,0,0,0,2,0,0,0,0,0,0,0,"* Bondir pour tuer ( renverse 5-20m )"),
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,25,0,0,0,100,0,5000,5000,10000,10000,11,153161,64,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffes déchirantes (Attaque rapidite 6s)"),
(@ENTRY,0,60,0,0,0,75,0,5000,5000,15000,15000,11,35321,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure hémorragique (Dégâts physiques 5s/15s)"),
(@ENTRY,0,80,0,0,0,50,0,0,0,4000,10000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)");

UPDATE `creature_template` SET `HealthModifier` = 4,`ArmorModifier` = 2, `DamageModifier` = 4 WHERE (entry = 6498);
-- Devilsaur SAI
SET @ENTRY := 6498;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,60,0,0,0,75,0,5000,5000,15000,15000,11,35321,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure hémorragique (Dégâts physiques 5s/15s)"),
(@ENTRY,0,70,0,0,0,100,0,4000,6000,12000,15000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0," - Pourfendre (Dégâts physiques 3s/15)"),
(@ENTRY,0,75,0,0,0,100,0,0,0,10000,15000,11,83366,32,0,0,0,0,1,0,0,0,0,0,0,0," - Hurlement strident (déplacement & attaque -10% 20s)");

UPDATE `creature_template` SET `HealthModifier` = 4,`ArmorModifier` = 2, `DamageModifier` = 4 WHERE (entry = 6500);
-- Tyrant Devilsaur SAI
SET @ENTRY := 6500;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,60,0,0,0,75,0,5000,5000,15000,15000,11,35321,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure hémorragique (Dégâts physiques 5s/15s)"),
(@ENTRY,0,70,0,0,0,100,0,4000,6000,12000,15000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0," - Pourfendre (Dégâts physiques 3s/15)"),
(@ENTRY,0,75,0,0,0,100,0,0,0,10000,15000,11,83366,32,0,0,0,0,1,0,0,0,0,0,0,0," - Hurlement strident (déplacement & attaque -10% 20s)"),
(@ENTRY,0,-1,0,2,0,100,0,30,50,10000,10000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Rugissement terrifiant");

UPDATE `creature_template` SET `ArmorModifier` = 2,`HealthModifier` = 5, `DamageModifier` = 3 WHERE (entry = 38346);
-- Devilsaur Queen SAI
SET @ENTRY := 38346;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,0,0,100,0,2000,3000,4500,5500,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,25,0,0,0,100,0,5000,5000,10000,10000,11,153161,64,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffes déchirantes (Attaque rapidite 6s)"),
(@ENTRY,0,80,0,0,0,50,0,0,0,15000,20000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)");

UPDATE `creature_template` SET `HealthModifier` = 2, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 9683);
SET @ENTRY := 9683;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,50,0,0,0,20,0,0,0,10000,10000,11,3427,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure infectée (dégâts physiques + 5% 20s)"),
(@ENTRY,0,70,0,0,0,100,0,4000,6000,12000,15000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0," - Pourfendre (Dégâts physiques 3s/15)"),
(@ENTRY,0,80,0,0,0,50,0,0,0,4000,10000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)");


UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 4 WHERE (entry = 6499);
-- Ironhide Devilsaur SAI
SET @ENTRY := 6499;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,15,0,4,0,75,0,0,0,0,0,11,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,"* Assaut fulgurant (charge + 30% de dégâts , 25m)"),
(@ENTRY,0,20,0,0,0,100,0,2000,3000,3500,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"  + Griffe"),
(@ENTRY,0,50,0,0,0,20,0,0,0,10000,10000,11,3427,32,0,0,0,0,2,0,0,0,0,0,0,0," - Blessure infectée (dégâts physiques + 5% 20s)"),
(@ENTRY,0,70,0,0,0,100,0,4000,6000,12000,15000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0," - Pourfendre (Dégâts physiques 3s/15)");

UPDATE `creature_template` SET `faction` = 103,`HealthModifier` = 4, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 6504);
-- Thunderstomp Stegodon SAI
SET @ENTRY := 6504;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,80,0,0,0,50,0,0,0,10000,15000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)"),
(@ENTRY,0,1,0,9,0,100,0,0,10,8000,14000,11,15548,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,7000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defensif au spawn");

UPDATE `creature_template` SET `faction` = 103, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 6503);
SET @ENTRY := 6503;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,80,0,0,0,50,0,0,0,10000,15000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)"),
(@ENTRY,0,1,0,9,0,100,0,0,10,8000,14000,11,15548,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,7000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `HealthModifier` = 4, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 6502);
SET @ENTRY := 6502;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,80,0,0,0,50,0,0,0,10000,15000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)"),
(@ENTRY,0,1,0,9,0,100,0,0,10,8000,14000,11,15548,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,7000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defensif au spawn");

UPDATE `creature_template` SET `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 6501);
SET @ENTRY := 6501;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,80,0,0,0,50,0,0,0,10000,15000,11,42320,64,0,0,0,0,2,0,0,0,0,0,0,0," - Coup de tête (confusion 3s)"),
(@ENTRY,0,1,0,9,0,100,0,0,10,8000,14000,11,15548,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,7000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defensif au spawn");

UPDATE `creature_template` SET `modelid1` = 13209, `faction` = 103, `scale` = 1.5, `unit_flags` = 0, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 9164);
-- Elder Diemetradon SAI
SET @ENTRY := 9164;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,83367,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hurlement de dimeurtrodon"),
(@ENTRY,0,1,0,9,0,100,0,0,5,7000,9000,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre");

UPDATE `creature_template` SET `faction` = 48,`scale` = 1.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 9163);
-- Diemetradon SAI
SET @ENTRY := 9163;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,75,0,0,5,7000,10000,11,13692,32,0,0,0,0,2,0,0,0,0,0,0,0,"Grondement redoutable"),
(@ENTRY,0,10,0,0,0,100,0,0,0,10000,15000,11,69203,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure vicieuse"),
(@ENTRY,0,1,0,0,0,100,0,0,0,4000,7000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `ArmorModifier` = 1.5, `DamageModifier` = 2.5,`faction` = 103 WHERE (entry = 9162); # 
-- Young Diemetradon SAI
SET @ENTRY := 9162;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,75,0,0,5,10000,10000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déchirure du tendon"),
(@ENTRY,0,1,0,0,0,50,0,3000,3500,5000,8000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `HealthModifier` = 1.1,`faction` = 103, `unit_flags` = 0, `DamageModifier` = 3 WHERE (entry = 9167);
-- Frenzied Pterrordax SAI
SET @ENTRY := 9167;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,75,1,0,0,0,0,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,"* Sprint"),
(@ENTRY,0,17,0,0,0,100,0,2000,3000,4000,8000,11,163716,0,0,0,0,0,2,0,0,0,0,0,0,0,"- Attaque : Griffure de serres"),
(@ENTRY,0,22,0,0,0,30,0,3000,5500,16500,18500,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,"Blessure infectée (dégâts physiques + 5%/20s)"),
(@ENTRY,0,2000,0,2,0,50,0,1,50,10000,14000,11,7399,0,0,0,0,0,2,0,0,0,0,0,0,0,"Terrifier");

UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE (entry = 9166);
-- Pterrordax SAI
SET @ENTRY := 9166;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,11,0,4,0,100,0,0,0,20000,20000,11,157347,0,0,0,0,0,2,0,0,0,0,0,0,0,"* Charge embrasée+ projette loin en arriere"),
(@ENTRY,0,17,0,0,0,100,0,2000,3000,4000,6000,11,163716,0,0,0,0,0,2,0,0,0,0,0,0,0,"- Attaque : Griffure de serres"),
(@ENTRY,0,22,0,0,0,75,0,3000,5500,16500,18500,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,"Blessure infectée (dégâts physiques + 5%/20s)");

UPDATE `creature_template` SET `HealthModifier` = 3, `ArmorModifier` = 2.5,`scale` = 3,`DamageModifier` = 3 WHERE (entry = 6510);
-- Bloodpetal Flayer SAI
SET @ENTRY := 6510;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,14110,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poison Pétale-de-sang"),
(@ENTRY,0,1,0,9,0,100,0,0,5,6000,8000,11,14112,0,0,0,0,0,2,0,0,0,0,0,0,0,"Vigne flagellante"),
(@ENTRY,0,10,0,9,0,75,0,10,35,10000,10000,11,339,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sarments"),
(@ENTRY,0,11,0,9,0,75,0,0,5,10000,10000,11,339,2,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut");

UPDATE `creature_template` SET `scale` = 1.25,`DamageModifier` = 2.5 WHERE (entry = 6509);
-- Bloodpetal Lasher SAI
SET @ENTRY := 6509;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,0,0,7000,7000,11,14110,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison Pétale-de-sang 14110"),
(@ENTRY,0,1,0,9,0,100,0,0,5,10000,10000,11,6607,2,0,0,0,0,2,0,0,0,0,0,0,0,"Fouet"),
(@ENTRY,0,2,0,9,0,100,0,0,5,5000,5000,11,79175,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coupe frénétique");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 4 WHERE (entry = 6512);
-- Bloodpetal Trapper SAI
SET @ENTRY := 6512;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,0,0,5000,5000,11,14110,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison Pétale-de-sang 14110"),
(@ENTRY,0,1,0,9,0,100,0,5,35,9000,12000,11,11922,32,0,0,0,0,2,0,0,0,0,0,0,0,"Sarments");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 2, `DamageModifier` = 3,`faction` = 48,`scale` = 1.5 WHERE (entry = 6511);
-- Bloodpetal Thresher SAI
SET @ENTRY := 6511;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,5,6000,8000,11,82803,1,0,0,0,0,2,0,0,0,0,0,0,0,"Rafale flagellante"),
(@ENTRY,0,2,0,0,0,100,0,0,0,7000,7000,11,82803,2,0,0,0,0,2,0,0,0,0,0,0,0,"Poison Pétale-de-sang 14110");

UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 1.3, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 6520);
-- Scorching Elemental SAI
SET @ENTRY := 6520;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3000,5000,11,13878,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brûlure"),
(@ENTRY,0,10,0,2,0,50,0,1,30,20000,20000,11,31661,0,0,0,0,0,1,0,0,0,0,0,0,0,"Souffle du dragon");

UPDATE `creature_template` SET  `HealthModifier` = 1.3, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 6521);
SET @ENTRY := 6521;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3000,5000,11,13878,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brûlure");

UPDATE `creature_template` SET `scale` = 2, `rank` = 4, `HealthModifier` = 3.5, `ArmorModifier` = 2, `DamageModifier` = 4, `mechanic_immune_mask` = 68535 WHERE (entry = 9376);
REPLACE INTO `world`.`creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('9376', '0', '0', '0', '0', '0', '82790');
-- Blazerunner SAI
SET @ENTRY := 9376;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,10,10000,20000,11,17277,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vague explosive"),
(@ENTRY,0,2,0,8,0,100,0,14247,0,3500,3500,28,13913,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blazerunner - On Spellhit 'Blazerunner Dispel' - Remove Aura 'Blazerunner's Aura'");

UPDATE `world`.`creature_template_addon` SET `bytes2` = '0' WHERE `creature_template_addon`.`entry` = 6559;
UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 0.75 WHERE (entry = 6559);
-- Glutinous Ooze SAI
SET @ENTRY := 6559;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3000,3000,11,14147,32,0,0,0,0,1,0,0,0,0,0,0,0,"Gelée acide");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 2.5, `DamageModifier` = 2.5 WHERE (entry = 6527);
-- Tar Creeper SAI
SET @ENTRY := 6527;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,50,1,0,5,10000,10000,11,14180,0,0,0,0,0,1,0,0,0,0,0,0,0,"Goudron poisseux"),
(@ENTRY,0,1,0,9,0,100,0,0,10,14000,19000,11,5568,0,0,0,0,0,1,0,0,0,0,0,0,0,"Piétiner"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,14797,0,0,0,0,0,2,0,0,0,0,0,0,0,"Goudron brûlant");

UPDATE `creature_template` SET `HealthModifier` = 1.75, `ArmorModifier` = 3, `DamageModifier` = 2.5 WHERE (entry = 6527);
-- Tar Beast SAI
SET @ENTRY := 6517;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,40,1,0,5,10000,10000,11,14180,0,0,0,0,0,1,0,0,0,0,0,0,0,"Goudron poisseux"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,6000,6000,11,79175,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coupe frénétique"),
(@ENTRY,0,2,0,4,0,75,0,0,0,0,0,11,14797,0,0,0,0,0,2,0,0,0,0,0,0,0,"Goudron brûlant");

UPDATE `creature_template` SET `HealthModifier` = 1.75, `ArmorModifier` = 2.5, `DamageModifier` = 4 WHERE (entry = 6519);
-- Tar Lord SAI
SET @ENTRY := 6519;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,25,1,0,5,10000,10000,11,14180,0,0,0,0,0,1,0,0,0,0,0,0,0,"Goudron poisseux"),
(@ENTRY,0,1,0,9,0,100,0,5,30,12000,17000,11,12747,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sarments"),
(@ENTRY,0,2,0,2,0,100,1,0,40,6000,6000,11,11640,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rénovation 0-40% Health"),
(@ENTRY,0,10,0,9,0,50,0,0,5,8000,8000,11,80182,0,0,0,0,0,1,0,0,0,0,0,0,0,"Uppercut"),
(@ENTRY,0,15,0,9,0,50,0,0,10,10000,10000,11,79872,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onde de choc");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 6518);
-- Tar Lurker SAI
SET @ENTRY := 6518;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,0,0,10000,15000,11,7279,0,0,0,0,0,2,0,0,0,0,0,0,0,"Vase noire"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,14797,0,0,0,0,0,2,0,0,0,0,0,0,0,"Goudron brûlant"),
(@ENTRY,0,10,0,9,0,100,0,0,10,6000,10000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");

UPDATE `creature_template` SET `ArmorModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 6514);
-- Un'Goro Gorilla SAI
SET @ENTRY := 6514;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,0,1,0,60,0,2500,4000,300,20000,11,70485,66,0,0,0,0,1,0,0,0,0,0,0,0,"Bond aleatoire"),
(@ENTRY,0,12,0,0,0,35,0,2000,3000,3000,6000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,15,0,1000,3000,4000,6000,11,152679,0,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 6513);
-- Un'Goro Gorilla SAI
SET @ENTRY := 6513;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,0,1,0,60,0,2500,4000,300,20000,11,70485,66,0,0,0,0,1,0,0,0,0,0,0,0,"Bond aleatoire"),
(@ENTRY,0,12,0,0,0,35,0,2000,3000,3000,6000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,15,0,1000,3000,4000,6000,11,152679,0,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 6513);
-- Un'Goro Gorilla SAI
SET @ENTRY := 6513;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,0,1,0,60,0,2500,4000,300,20000,11,70485,66,0,0,0,0,1,0,0,0,0,0,0,0,"Bond aleatoire"),
(@ENTRY,0,12,0,0,0,35,0,2000,3000,3000,6000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,15,0,1000,3000,4000,6000,11,152679,0,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 6516);
-- Un'Goro Thunderer SAI
SET @ENTRY := 6516;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,12,0,0,0,35,0,2000,3000,3000,6000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,9,0,50,0,0,10,6000,10000,11,8147,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de tonnerre ");

UPDATE `creature_template` SET `HealthModifier` = 6, `ArmorModifier` = 2, `DamageModifier` = 4 WHERE (entry = 6585);
UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 6585 ;
-- Uhk'loc SAI
SET @ENTRY := 6585;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,0,0,0,60,0,2500,4000,5000,5000,11,70485,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bond aleatoire"),
(@ENTRY,0,12,0,0,0,50,0,2000,3000,3000,6000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,25,0,1000,3000,4000,6000,11,152679,66,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(365071, 9622, 1, 0, 0, 1, 0, 0, 0, 0, -6256.77, -1997.41, -264.304, 2.42626, 240, 3, 0, 9200, 0, 2, 0, 0, 0, 0);
UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 9622);
SET @ENTRY := 9622;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,12,0,0,0,50,0,2000,3000,3000,6000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,25,0,1000,3000,4000,6000,11,152679,66,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

UPDATE `creature_template` SET `DamageModifier` = 3, `mechanic_immune_mask` = 67637 WHERE (entry = 38254);
-- Steaming Fury SAI
SET @ENTRY := 38254;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,5000,8000,11,83383,0,0,0,0,0,2,0,0,0,0,0,0,0,"Event à vapeur"),
(@ENTRY,0,10,0,9,0,100,0,0,5,4000,4000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");















/****************************************************************************************/
/* 				QUETES              																								 */
/****************************************************************************************/

/* Un paradis tropical vous attend 24911 */
DELETE FROM `creature_queststarter` WHERE (quest = 24911);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(38578, 24911),
(44374, 24911);
/****************************************************************************************/
/* Un parfum pour Lar'korwi 24732 */
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070782, 9683, 1, 0, 0, 1, 0, 0, 0, 0, -7674.62, -1737.76, -271.944, 6.09805, 300, 0, 0, 5520, 0, 0, 0, 0, 0, 0),
(21070781, 9683, 1, 0, 0, 1, 0, 0, 0, 0, -7830.8, -1686.08, -271.953, 1.51329, 300, 10, 0, 5520, 0, 1, 0, 0, 0, 0);

/****************************************************************************************/
/* Un appât pour Lar'korwi 24733 */
UPDATE `creature_template` SET `HealthModifier` = 3, `ArmorModifier` = 1.25, `DamageModifier` = 4 WHERE (entry = 9684);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024600, 172619, 1, 0, 0, 1, 0, 0, -6976.9, -2060.44, -271.287, 0.643443, 0, 0, 0.3162, 0.948692, 300, 0, 1, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070786, 9684, 1, 0, 0, 1, 0, 0, 0, 0, -6970.91, -2053.22, -271.82, 4.17183, 300, 0, 0, 8832, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* Un camp de recherche abandonné 24866 */
DELETE FROM `creature_queststarter` WHERE `quest` = 24866;

/****************************************************************************************/
/* Le Pylone nord 24722 + est 24721 + ouest 24723 */

UPDATE `locales_gossip_menu_option` SET `option_text_loc2` = 'Examinez ce pylône.' WHERE `locales_gossip_menu_option`.`menu_id` = 2177 AND `locales_gossip_menu_option`.`id` = 0;


UPDATE `gameobject_template` SET `IconName` = 'Quest' WHERE (entry = 164955);
DELETE FROM `gameobject_questender` WHERE (quest = 24722);
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (164955, 24722);
DELETE FROM `creature_questender` WHERE `quest` = 24722;

UPDATE `gameobject_template` SET `IconName` = 'Quest' WHERE (entry = 164957);
DELETE FROM `gameobject_questender` WHERE (quest = 24721);
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (164957, 24721);
DELETE FROM `creature_questender` WHERE `quest` = 24721;
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (24721, 0, 0, -7201, --344, 20253);
UPDATE `gameobject_template` SET `IconName` = 'Quest' WHERE (entry = 164956);
DELETE FROM `gameobject_questender` WHERE (quest = 24723);
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES (164956, 24723);
DELETE FROM `creature_questender` WHERE `quest` = 24723;


/****************************************************************************************/
/* Cristaux de puissance 24720 */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024642, 164661, 1, 0, 0, 1, 0, 0, -7187.67, -1509.56, -262.018, 4.40059, 0, 0, 0.808322, -0.58874, 300, 0, 1, 0),
(21024641, 164661, 1, 0, 0, 1, 0, 0, -7161.62, -1433.25, -265.447, 2.90048, 0, 0, 0.992742, 0.120263, 300, 0, 1, 0),
(21024640, 164661, 1, 0, 0, 1, 0, 0, -7049.64, -1495.14, -267.336, 4.83256, 0, 0, 0.663368, -0.748294, 300, 0, 1, 0),
(21024639, 164661, 1, 0, 0, 1, 0, 0, -7051.14, -1435.7, -265.447, 5.72202, 0, 0, 0.276913, -0.960895, 300, 0, 1, 0),
(21024638, 164661, 1, 0, 0, 1, 0, 0, -7022.92, -1362.99, -258.144, 0.25173, 0, 0, 0.125533, 0.992089, 300, 0, 1, 0),
(21024637, 164661, 1, 0, 0, 1, 0, 0, -7044.19, -1307.79, -245.931, 0.361686, 0, 0, 0.179859, 0.983692, 300, 0, 1, 0),
(21024636, 164661, 1, 0, 0, 1, 0, 0, -7054.81, -1235, -272.143, 5.07407, 0, 0, 0.568397, -0.822755, 300, 0, 1, 0),
(21024635, 164661, 1, 0, 0, 1, 0, 0, -7088.4, -1178.29, -254.486, 0.662098, 0, 0, 0.325035, 0.945702, 300, 0, 1, 0),
(21024634, 164661, 1, 0, 0, 1, 0, 0, -7164.05, -1178.8, -251.605, 5.46873, 0, 0, 0.396063, -0.918223, 300, 0, 1, 0),
(21024633, 164661, 1, 0, 0, 1, 0, 0, -7177.41, -1227.33, -210.195, 0.298849, 0, 0, 0.148869, 0.988857, 300, 0, 1, 0),
(21024632, 164661, 1, 0, 0, 1, 0, 0, -7229.41, -1255.63, -214.851, 5.06621, 0, 0, 0.571626, -0.820515, 300, 0, 1, 0),
(21024631, 164661, 1, 0, 0, 1, 0, 0, -7361.79, -1150.75, -274.764, 0.54232, 0, 0, 0.267849, 0.963461, 300, 0, 1, 0),
(21024630, 164661, 1, 0, 0, 1, 0, 0, -7337.6, -1284.09, -274.065, 0.695473, 0, 0, 0.340771, 0.940146, 300, 0, 1, 0),
(21024629, 164661, 1, 0, 0, 1, 0, 0, -7296.21, -1381.09, -271.243, 0.679767, 0, 0, 0.333377, 0.942794, 300, 0, 1, 0),
(21024628, 164661, 1, 0, 0, 1, 0, 0, -7323.49, -1450.58, -241.243, 0.750453, 0, 0, 0.366483, 0.930425, 300, 0, 1, 0),
(21024627, 164661, 1, 0, 0, 1, 0, 0, -7261.66, -1422.56, -228.104, 3.572, 0, 0, 0.976933, -0.213544, 300, 0, 1, 0),
(21024626, 164661, 1, 0, 0, 1, 0, 0, -7142.09, -1461.77, -240.267, 3.8783, 0, 0, 0.932922, -0.36008, 300, 0, 1, 0),
(21024625, 164661, 1, 0, 0, 1, 0, 0, -7097.15, -1404.3, -228.837, 2.44102, 0, 0, 0.939274, 0.343167, 300, 0, 1, 0),
(21024624, 164661, 1, 0, 0, 1, 0, 0, -7072.38, -1358.88, -223.275, 6.08527, 0, 0, 0.0987951, -0.995108, 300, 0, 1, 0),
(21024623, 164661, 1, 0, 0, 1, 0, 0, -7124.44, -1359.25, -193.999, 5.77111, 0, 0, 0.253248, -0.967401, 300, 0, 1, 0),
(21024622, 164661, 1, 0, 0, 1, 0, 0, -7181.37, -1383.04, -181.615, 4.5243, 0, 0, 0.770385, -0.637579, 300, 0, 1, 0),
(21024621, 164661, 1, 0, 0, 1, 0, 0, -7153.09, -1256.88, -192.641, 4.21995, 0, 0, 0.85813, -0.513432, 300, 0, 1, 0),
(21024620, 164661, 1, 0, 0, 1, 0, 0, -7100.75, -1274.28, -192.204, 5.52568, 0, 0, 0.369763, -0.929126, 300, 0, 1, 0),
(21024619, 164661, 1, 0, 0, 1, 0, 0, -7116.28, -1316.55, -181.518, 1.14512, 0, 0, 0.541786, 0.840517, 300, 0, 1, 0);

REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(10980, 11184, 0, 100, 0, 1, 0, 1, 2, NULL),
(10981, 11185, 0, 100, 0, 1, 0, 1, 2, NULL),
(10982, 11186, 0, 100, 0, 1, 0, 1, 2, NULL),
(10983, 11188, 0, 100, 0, 1, 0, 1, 2, NULL);

/****************************************************************************************/
/* Un peu d'aide de mes amis 24735 */

-- FULL `quest_objectives` of QuestID 24735
DELETE FROM `quest_objectives` WHERE (QuestID = 24735);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500011, 24735, 0, 0, 9999, 1, 0, 0, 'Escortez Ringo jusqu\'au Camp retranché des Marshal', 0);

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (9999, 0, 0, 0, 4097, 93, '43905'); # Ivre
UPDATE `creature_template` SET `unit_flags` = 131072, `type_flags` = 0 WHERE (entry = 9999);
-- Ringo SAI
SET @ENTRY := 9999;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,19,0,100,0,24735,0,0,0,29,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Un peu d'aide de mes amis 24735 : suivre joueur"),
(@ENTRY,0,15,20,75,0,100,0,0,9997,10,3000,33,15500011,0,0,0,0,0,17,0,5,0,0,0,0,0,"Un peu d'aide de mes amis 24735 : credit"),
(@ENTRY,0,20,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Un peu d'aide de mes amis 24735 : despawn");

/****************************************************************************************/
/* Porté par les vagues  24686 */
UPDATE `quest_objectives_locale` SET `Description` = 'Graine de flagellant d''Un''Goro' WHERE `quest_objectives_locale`.`ID` = 267217 AND `quest_objectives_locale`.`locale` = 'frFR';
UPDATE `creature_template` SET `scale` = 1.5,`npcflag` = 1 WHERE (entry = 38202);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38202, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 38202);       #  Voler
-- Bloodpetal Seed SAI
SET @ENTRY := 38202;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Porté par les vagues  24686 : despawn"),
(@ENTRY,0,10,0,64,0,100,1,0,0,0,0,33,38202,0,0,0,0,0,7,0,0,0,0,0,0,0,"Porté par les vagues  24686 : credit");

DELETE FROM `quest_objectives` WHERE (QuestID = 24686);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500010, 24686, 0, 0, 38202, 4, 0, 0, '', 20444);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070855, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6593.74, -700.593, -275.44, 2.86427, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070854, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6594.81, -788.071, -275.553, 4.69032, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070853, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6619.29, -800.664, -275.553, 2.71308, 300, 15, 0, 160, 0, 1, 0, 0, 0, 0),
(21070852, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6645.88, -942.815, -275.446, 1.40932, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070851, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6745.5, -1083.03, -275.447, 6.26897, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070850, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6898.36, -1093.9, -275.446, 3.64377, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070849, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7023.06, -1151.24, -275.448, 1.63512, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070848, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6964.79, -1243.13, -275.518, 3.68894, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070847, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6901.84, -1351.72, -275.645, 2.16723, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070846, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6899.3, -1439.54, -275.502, 2.6581, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070842, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7632.73, -2093.69, -275.445, 5.51107, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070841, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7572.94, -2124.68, -275.445, 1.88253, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070840, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7516.27, -2159.87, -274.666, 2.48179, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070839, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7451.02, -2220.63, -275.483, 5.02805, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070838, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7443.36, -2182.92, -275.571, 4.18414, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070837, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7412.42, -2148.8, -275.697, 0.400087, 300, 10, 0, 160, 0, 1, 0, 0, 0, 0),
(21070836, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7375.76, -2157.01, -275.494, 1.34846, 300, 15, 0, 160, 0, 1, 0, 0, 0, 0),
(21070835, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7325.64, -2154.8, -275.22, 1.55698, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070834, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7152.76, -2148.28, -275.529, 1.09124, 300, 3, 0, 160, 0, 1, 0, 0, 0, 0),
(21070833, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7183.47, -2180.3, -275.312, 2.51281, 300, 3, 0, 160, 0, 1, 0, 0, 0, 0),
(21070832, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7143.63, -2208.56, -275.612, 2.60116, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070831, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7079.37, -2163.03, -275.479, 3.09597, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070830, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7037.72, -2119.95, -275.446, 3.43997, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070829, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7011.66, -2075.79, -275.446, 5.14428, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070828, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7025.41, -2025.97, -275.446, 4.44921, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070827, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7019.31, -2003.33, -275.446, 4.44921, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070826, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7022.51, -1959.71, -275.446, 5.18355, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070825, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7039.94, -1883.67, -275.488, 2.31842, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070823, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7058.92, -1801.54, -275.502, 3.28053, 300, 0, 0, 160, 0, 1, 0, 0, 0, 0),
(21070822, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7038.31, -1733.78, -275.502, 3.11363, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070820, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -7033.66, -1675.19, -275.446, 4.00742, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070819, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6989.6, -1618.07, -275.446, 4.66323, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070818, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6981.1, -1556.18, -275.446, 4.05454, 300, 5, 0, 160, 0, 1, 0, 0, 0, 0),
(21070817, 38202, 1, 0, 0, 1, 0, 0, 0, 0, -6944.44, -1505.96, -275.639, 1.85739, 300, 3, 0, 160, 0, 1, 0, 0, 0, 0);

/****************************************************************************************/
/* Le journal de Williden 3884 */
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(4141, 0, 0, -7545, -1502, 20253);

/****************************************************************************************/
/* Muigin et Larion 4141 */
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(3884, 0, 0, -7498, -1504, 20253);

/****************************************************************************************/
/* L'art d'accommoder les restes 24697 */

-- Young Diemetradon SAI
SET @ENTRY := 9162;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,75,0,0,5,10000,10000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déchirure du tendon"),
(@ENTRY,0,1,0,0,0,50,0,3000,3500,5000,8000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,10,0,8,0,100,0,71775,0,3000,3000,29,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"L'art d'accommoder les restes 24697 : suivre joueur"),
(@ENTRY,0,15,20,75,0,100,1,0,38354,5,3000,33,38355,0,0,0,0,0,2,0,0,0,0,0,0,0,"L'art d'accommoder les restes 24697 : credit"),
(@ENTRY,0,20,0,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"L'art d'accommoder les restes 24697 : die");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070870, 9162, 1, 0, 0, 1, 0, 0, 0, 0, -7449.8, -1483.92, -272.018, 0.145277, 300, 0, 0, 5176, 0, 0, 0, 0, 0, 0),
(21070868, 9162, 1, 0, 0, 1, 0, 0, 0, 0, -7396.2, -1418.66, -272.068, 2.87062, 300, 10, 0, 5110, 0, 1, 0, 0, 0, 0),
(21070865, 9162, 1, 0, 0, 1, 0, 0, 0, 0, -7573.44, -1461.91, -265.541, 5.05403, 300, 10, 0, 5110, 0, 1, 0, 0, 0, 0),
(21070864, 9162, 1, 0, 0, 1, 0, 0, 0, 0, -7577.99, -1427.12, -269.499, 3.03948, 300, 10, 0, 5176, 0, 1, 0, 0, 0, 0),
(21070863, 9162, 1, 0, 0, 1, 0, 0, 0, 0, -7497.03, -1437.39, -267.916, 3.26725, 300, 5, 0, 5176, 0, 1, 0, 0, 0, 0),
(21070862, 9162, 1, 0, 0, 1, 0, 0, 0, 0, -7436.53, -1415.36, -268.274, 0.83841, 300, 5, 0, 5110, 0, 1, 0, 0, 0, 0);

/****************************************************************************************/
/* Ci-gît Dadanga 24702 - désactivée */
DELETE FROM `gameobject_queststarter` WHERE (quest = 24702);
DELETE FROM `gameobject_questender` WHERE (quest = 24702);

/****************************************************************************************/
/* Attention aux pterreurdactyles 4501 */
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(4501, 0, 0, -7545, -1502, 20253);

/****************************************************************************************/
/* Réparer A-Mi 01 24715 */
REPLACE INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('50238', '50236', '0', '100', '1', '1', '0', '1', '1', NULL);

/****************************************************************************************/
/* La machine volante de Shizzle 24736 */
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(9165, 11831, 0, 80, 1, 1, 0, 1, 5, NULL),
(9166, 11831, 0, 80, 1, 1, 0, 1, 5, NULL),
(9167, 11831, 0, 80, 1, 1, 0, 1, 5, NULL);

/****************************************************************************************/
/* Les vils dragons d'Un'Goro 24704 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 24703 WHERE (ID = 24704);

/****************************************************************************************/
/* Recherche damoiselle en détresse 24705 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 24703 WHERE (ID = 24705);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
('10995', '0', '0', 'Etes vous en danger gente damoiselle ?', '0', '1', '1', '0', '0', '0', '0', NULL, '0');

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(38238, 0, 0, "Ai je l'aire d'une damoiselle ?! ... C'est encore ce Maximillian de Comté-du-Nord qui vous envoi hein ! ... dites lui donc que je suis reparti a Lune d'argent et que je ne crains plus rien , et trouvez lui une paire de lunette ... je ne suis pas une DAMOISELLE ! ", 12, 0, 0, 1, 500, 0, 0, 0, "Recherche damoiselle en détresse 24705");
-- Damsel by the Shore SAI
SET @ENTRY := 38238;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,10995,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Recherche damoiselle en détresse 24705 : blabla"),
(@ENTRY,0,15,0,62,0,100,0,10995,0,0,0,33,38238,0,0,0,0,0,7,0,0,0,0,0,0,0,"Recherche damoiselle en détresse 24705 : credit");

UPDATE `creature_template` SET `gossip_menu_id` = 10995, `npcflag` = 1 WHERE (entry = 38239);
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(38239, 0, 0, "Ne me dites pas que c'est encore ce Maximachain du Comté-du-Nord qui vous envoi  ! ... Si je comprend bien a chaque nouvel aventurier qui passe par la je vais y avoir droit ... Dites lui que je suis REPARTIE sur vos conseils a Hurlevent !!!", 12, 0, 0, 1, 500, 0, 0, 0, "Recherche damoiselle en détresse 24705");
-- Damsel in the Cliffs SAI
SET @ENTRY := 38239;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,10995,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Recherche damoiselle en détresse 24705 : blabla"),
(@ENTRY,0,15,0,62,0,100,0,10995,0,0,0,33,38239,0,0,0,0,0,7,0,0,0,0,0,0,0,"Recherche damoiselle en détresse 24705 : credit");

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38240, 0, 0, 0, 0, 0, '81041'); # Porte Sac
UPDATE `creature_template` SET `gossip_menu_id` = 10995, `npcflag` = 1 WHERE (entry = 38240);
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(38240, 0, 0, "Ho non .. trois fois par jours ... je n'en peut plus de ce chevalier Maximachinchose ... Dites lui qu'il n'y a plus rien a sauver , qu'il arrive trop tard et que je me suis fais dévorer sous vos yeux par un énorrrrrme Pterreurdactyle !", 12, 0, 0, 1, 500, 0, 0, 0, "Recherche damoiselle en détresse 24705");
-- Damsel of the North SAI
SET @ENTRY := 38240;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,10995,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Recherche damoiselle en détresse 24705 : blabla"),
(@ENTRY,0,15,0,62,0,100,0,10995,0,0,0,33,38240,0,0,0,0,0,7,0,0,0,0,0,0,0,"Recherche damoiselle en détresse 24705 : credit");

/****************************************************************************************/
/* Les esprits des sources de Golakka 24706 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 24703 WHERE (ID = 24706);
UPDATE `quest_template` SET `RewardDisplaySpell` = 0, `RewardSpell` = 0 WHERE (ID = 24706);
UPDATE `quest_template_addon` SET `SourceSpellID` = 0 WHERE (ID = 24706);
UPDATE `world`.`quest_template_locale` SET `LogDescription` = 'Tuer 4 Furies de vapeur.', `QuestDescription` = 'Un peu de sérieux, maintenant, $n. Une mission importante s’offre à nous. Les perfides dragons qui tourmentent cette vallée continueront leurs exactions tant que nous n’aurons pas détruit leur répugnante matriarche. Mais avant même de tenter pareille entreprise, nous devons régler un autre probleme . Ce probleme je l’ai vue se manifester sous la forme d’esprits, flottant non loin des rives des sources de Golakka. ' WHERE `quest_template_locale`.`ID` = 24706 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_objectives_locale` SET `Description` = 'Furie de vapeur' WHERE `quest_objectives_locale`.`ID` = 266337 AND `quest_objectives_locale`.`locale` = 'frFR';
DELETE FROM `quest_objectives` WHERE (QuestID = 24706) AND (ID IN (266337));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(266337, 24706, 0, 0, 38254, 4, 0, 0, 'Furies de vapeur', 20444);

/****************************************************************************************/
/* La ballade de Maximillian 24707 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 24703 WHERE (ID = 24707);
UPDATE `quest_template` SET `RewardDisplaySpell` = 0 WHERE (ID = 24707);
UPDATE `quest_template_addon` SET `SourceSpellID` = 0 WHERE (ID = 24707);

/****************************************************************************************/
/* La ballade de Maximillian 24707 */

DELETE FROM `quest_objectives` WHERE (QuestID = 24707) AND (ID IN (266763));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(266763, 24707, 0, 0, 38346, 1, 0, 0, 'Un\'Goro\'s Broodmother slain', 20444);

/****************************************************************************************/
/* Gormashh le glutineux 24699 */
REPLACE INTO `world`.`creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('38307', '50374', '0', '100', '1', '1', '0', '1', '1', NULL);

/****************************************************************************************/
/* 

/****************************************************************************************/
/* 
