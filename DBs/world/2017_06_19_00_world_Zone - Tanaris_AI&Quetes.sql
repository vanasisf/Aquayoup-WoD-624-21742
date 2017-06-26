/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.0 Tanaris AI & Quetes    	   																									 		 			                 */
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 




/****************************************************************************************/
/* 				Mobs & AI ( certains peuvent debug des quetes )												*/
/****************************************************************************************/

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070705, 5471, 1, 0, 0, 1, 0, 0, 0, 1, -8327.8, -3123.04, 8.64084, 2.14289, 300, 0, 0, 5500, 0, 0, 0, 0, 0, 0),
(21070704, 5475, 1, 0, 0, 1, 0, 0, 0, 1, -8441.09, -2956.62, 9.10619, 3.87665, 300, 15, 0, 4940, 1695, 1, 0, 0, 0, 0),
(21070703, 5475, 1, 0, 0, 1, 0, 0, 0, 1, -8333.79, -2909.84, 9.35332, 3.91985, 300, 25, 0, 4876, 1640, 1, 0, 0, 0, 0),
(21070702, 5475, 1, 0, 0, 1, 0, 0, 0, 1, -8470.95, -2880.55, 8.62592, 5.16274, 300, 0, 0, 4940, 1695, 0, 0, 0, 0, 0),
(21070701, 5474, 1, 0, 0, 1, 0, 0, 0, 1, -8485.62, -2890.2, 8.63259, 6.03453, 300, 0, 0, 4940, 0, 0, 0, 0, 0, 0),
(21070700, 5473, 1, 0, 0, 1, 0, 0, 0, 1, -8359.58, -3021.75, 8.73419, 2.61413, 300, 0, 0, 7800, 3280, 0, 0, 0, 0, 0),
(21070699, 5472, 1, 0, 0, 1, 0, 0, 0, 1, -8387.45, -3069.88, 8.60077, 0.831272, 300, 0, 0, 5500, 0, 0, 0, 0, 0, 0),
(21070698, 5471, 1, 0, 0, 1, 0, 0, 0, 1, -8366.04, -3073.15, 8.57819, 2.23321, 300, 0, 0, 5380, 0, 0, 0, 0, 0, 0);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024566, 207321, 1, 0, 0, 1, 0, 0, -7188.13, -3776.06, 9.0103, 2.01575, 0, 0, 0.8457, 0.533658, 300, 0, 1, 0),
(21024565, 206109, 1, 0, 0, 1, 0, 0, -7104.37, -3814.17, 9.48995, 3.86144, 0, 0, 0.935925, -0.352201, 300, 0, 1, 0);

REPLACE INTO `locales_creature_text` (`entry`, `groupid`, `id`, `text_loc1`, `text_loc2`, `text_loc3`, `text_loc4`, `text_loc5`, `text_loc6`, `text_loc7`, `text_loc8`) VALUES
(5471, 0, 0, 'I''ll crush you!', 'Je vous écraserai!', NULL, NULL, NULL, NULL, NULL, NULL),
(5471, 0, 1, 'Me smash! You die!', ' Toi ! ... mourir !', NULL, NULL, NULL, NULL, NULL, NULL),
(5471, 0, 2, 'Raaar!!! Me smash $r!', 'Raaar !!! Moi, smash $r!', NULL, NULL, NULL, NULL, NULL, NULL),
(5472, 0, 0, 'I''ll crush you!', 'Je vous écraserai!', NULL, NULL, NULL, NULL, NULL, NULL),
(5472, 0, 1, 'Me smash! You die!', ' Toi ! ... mourir !', NULL, NULL, NULL, NULL, NULL, NULL),
(5472, 0, 2, 'Raaar!!! Me smash $r!', 'Raaar !!! Moi, smash $r!', NULL, NULL, NULL, NULL, NULL, NULL),
(5473, 0, 0, 'I''ll crush you!', 'Je vous écraserai!', NULL, NULL, NULL, NULL, NULL, NULL),
(5473, 0, 1, 'Me smash! You die!', ' Toi ! ... mourir !', NULL, NULL, NULL, NULL, NULL, NULL),
(5473, 0, 2, 'Raaar!!! Me smash $r!', 'Raaar !!! Moi, smash $r!', NULL, NULL, NULL, NULL, NULL, NULL),
(5474, 0, 0, 'I''ll crush you!', 'Je vous écraserai!', NULL, NULL, NULL, NULL, NULL, NULL),
(5474, 0, 1, 'Me smash! You die!', ' Toi ! ... mourir !', NULL, NULL, NULL, NULL, NULL, NULL),
(5474, 0, 2, 'Raaar!!! Me smash $r!', 'Raaar !!! Moi, smash $r!', NULL, NULL, NULL, NULL, NULL, NULL),
(5475, 0, 0, 'I''ll crush you!', 'Je vous écraserai!', NULL, NULL, NULL, NULL, NULL, NULL),
(5475, 0, 1, 'Me smash! You die!', ' Toi ! ... mourir !', NULL, NULL, NULL, NULL, NULL, NULL),
(5475, 0, 2, 'Raaar!!! Me smash $r!', 'Raaar !!! Moi, smash $r!', NULL, NULL, NULL, NULL, NULL, NULL);

UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 32258;
UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 47387 ;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38849, 0, 0, 0, 0, 0, 101090); # State - Dance
UPDATE `gameobject_template` SET `Data3` = 60000, `Data6` = 60 WHERE (entry = 205057);
UPDATE `creature_template` SET `unit_flags` = 131074 WHERE (entry = 38704);
UPDATE `creature_template` SET `unit_flags` = 131074 WHERE (entry = 38703);
UPDATE `creature_template` SET `flags_extra` = 128 WHERE (entry = 38665);

DELETE FROM `spell_linked_spell` WHERE `spell_linked_spell`.`spell_trigger` = 82742 AND `spell_linked_spell`.`spell_effect` =30010 ;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (82742,30010, 0, "Stitch : MOB - Empaler et tirer "); 
DELETE FROM `spell_linked_spell` WHERE `spell_linked_spell`.`spell_trigger` = 11366;

#---Barque Aller - .wp add 11043802
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000206, 0, 0, 0, 0, 0, 33265, 0, 0, 0, 'Barque', '', '', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 2.5, 2.5, 1, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2048, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 1, 1, 1, 0, 224, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 15000206;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (15000206, 65030, 1, 1); 
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (15000206, 0, 0, 33554432, 1, 0, NULL); 
-- Barque SAI
SET @ENTRY := 15000206;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn"),
(@ENTRY,0,15,0,27,0,100,0,0,0,0,0,53,1,11043802,0,0,1000,0,1,0,0,0,0,0,0,0,"wp start");

#---Barque Retour - .wp add 11043803
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000207, 0, 0, 0, 0, 0, 33265, 0, 0, 0, 'Barque', '', '', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 2.5, 2.5, 1, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2048, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 1, 1, 1, 0, 224, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 15000207;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (15000207, 65030, 1, 1); 
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (15000207, 0, 0, 33554432, 1, 0, NULL); 
-- Barque SAI
SET @ENTRY := 15000207;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn"),
(@ENTRY,0,15,0,27,0,100,0,0,0,0,0,53,1,11043803,0,0,1000,0,1,0,0,0,0,0,0,0,"wp start");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070724, 15000207, 1, 0, 0, 1, 0, 0, 0, 0, -7341.78, -4495.51, 0.516304, 0.934222, 300, 0, 0, 2188, 0, 0, 0, 0, 0, 0),
(21070723, 15000207, 1, 0, 0, 1, 0, 0, 0, 0, -7314.59, -4485.29, 0.582381, 1.01799, 300, 5, 0, 3586, 1534, 2, 0, 0, 0, 0),
(21070722, 15000207, 1, 0, 0, 1, 0, 0, 0, 0, -7286.21, -4513.02, 0.251744, 2.45723, 300, 0, 0, 3586, 1534, 0, 0, 0, 0, 0),
(21070719, 15000206, 1, 0, 0, 1, 0, 0, 0, 0, -7163.49, -3926.77, 0.000822627, 4.55416, 300, 0, 0, 2188, 0, 0, 0, 0, 0, 0),
(21070718, 15000206, 1, 0, 0, 1, 0, 0, 0, 0, -7142.04, -3925.36, 0.61347, 4.45869, 300, 0, 0, 2188, 0, 0, 0, 0, 0, 0),
(21070717, 15000206, 1, 0, 0, 1, 0, 0, 0, 0, -7099.44, -3962.97, 0.00212609, 4.14453, 300, 0, 0, 2188, 0, 0, 0, 0, 0, 0),
(21070716, 15000206, 1, 0, 0, 1, 0, 0, 0, 0, -7071.47, -3979.58, 0.000539095, 3.63402, 300, 0, 0, 2188, 0, 0, 0, 0, 0, 0),
(21070715, 15000206, 1, 0, 0, 1, 0, 0, 0, 0, -7096.24, -3966.33, 0.000613066, 3.94033, 300, 0, 0, 2188, 0, 0, 0, 0, 0, 0);
DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043802 OR `waypoints`.`entry` = 11043803 ; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043802, 1, -7182.53, -4078.62, 0.00114656, "Barque Tanaris"),
(11043802, 2, -7213.86, -4142.12, 0.00114656, "Barque Tanaris"),
(11043802, 3, -7238.71, -4259.65, 0.00162811, "Barque Tanaris"),
(11043802, 4, -7285.21, -4456.35, 0.00162811, "Barque Tanaris"),
(11043802, 5, -7299.17, -4515.38, 0.00162811, "Barque Tanaris"),
(11043803, 1, -7296.49, -4414.13, 1.5011639, "Barque Tanaris"),
(11043803, 2, -7255.71, -4342.02, 1.50153295, "Barque Tanaris"),
(11043803, 3, -7228.18, -4252, 1.50153295, "Barque Tanaris"),
(11043803, 4, -7215.6, -4138.12, 1.50153295, "Barque Tanaris"),
(11043803, 5, -7180.33, -4027.27, 1.50208485, "Barque Tanaris"),
(11043803, 6, -7158.43, -3969.17, 1.50208485, "Barque Tanaris"),
(11043803, 7, -7152.76, -3952.3, 1.50144745, "Barque Tanaris"),
(11043803, 8, -7151.58, -3921.73, 1.548926, "Barque Tanaris");

#------
UPDATE `creature_template` SET `faction` = 106 WHERE (entry = 39020);

UPDATE `creature_template` SET `unit_flags` = 0, `ArmorModifier` = 1,`HealthModifier` = 1, `DamageModifier` = 2.5 WHERE (entry = 38997);
-- Explorer's League Digger SAI
SET @ENTRY := 38998;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,75,0,100,0,0,38997,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,35,0,9,0,100,1,5,30,3500,3500,11,82625,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer d'os"),
(@ENTRY,0,40,0,0,0,100,0,4000,7000,17000,22000,11,80382,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jet de saleté"),
(@ENTRY,0,45,0,9,0,40,1,0,5,5000,8000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames"),
(@ENTRY,0,50,0,10,0,50,0,1,5,8000,8000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agressif si detecte joueur");


UPDATE `creature_template` SET `unit_flags` = 0, `ArmorModifier` = 1,`HealthModifier` = 1, `DamageModifier` = 2.5 WHERE (entry = 38997);
-- Explorer's League Digger SAI
SET @ENTRY := 38997;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,75,0,100,0,0,38997,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,35,0,9,0,100,1,5,30,3500,3500,11,82625,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer d'os"),
(@ENTRY,0,40,0,0,0,100,0,4000,7000,17000,22000,11,80382,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jet de saleté"),
(@ENTRY,0,45,0,9,0,40,1,0,5,5000,8000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames"),
(@ENTRY,0,50,0,10,0,50,0,1,5,8000,8000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agressif si detecte joueur");


UPDATE `creature_template` SET `speed_run` = 1.2, `scale` = 1.5, `ArmorModifier` = 2.5, `DamageModifier` = 2.5 WHERE (entry = 40656);


REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(38823, 1, 1897, 0, 13474, 18019),
(40583, 1, 1897, 0, 13474, 18019),
(40636, 1, 1897, 0, 13474, 18019);

UPDATE `creature_template` SET `ArmorModifier` = 2.5, `DamageModifier` = 3, `mechanic_immune_mask` = 199219 WHERE (entry = 41083);
-- Steelspark LX-506 SAI
SET @ENTRY := 41083;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,7000,11,421,0,0,0,0,0,2,0,0,0,0,0,0,0,"chaine d'eclair"),
(@ENTRY,0,-1,0,0,0,100,0,0,0,5000,10000,11,32018,0,0,0,0,0,3,0,0,0,0,0,0,0,"Appel d'éclair  ");

UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 38646);
-- Southsea Pirate SAI
SET @ENTRY := 7855;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,75,0,100,0,0,38646,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,75,0,100,0,0,38648,4,3500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,22,0,75,0,100,0,0,38650,4,3000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,10,0,50,0,1,5,8000,8000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agressif si detecte joueur");

UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 38648);
-- Bilgewater Battlebruiser SAI
SET @ENTRY := 38648;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,75,0,100,0,0,38646,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,21,0,75,0,100,0,0,7858,4,3000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,22,0,75,0,100,0,0,7855,4,3500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat");

UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 7858);
-- Southsea Swashbuckler SAI
SET @ENTRY := 7858;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,75,0,100,0,0,38646,4,2000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,75,0,100,0,0,38648,4,3000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,22,0,75,0,100,0,0,38650,4,4000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,55,10,0,50,0,1,5,10000,10000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agressif si detecte joueur"),
(@ENTRY,0,55,0,61,0,25,0,0,0,0,0,0,2,0,0,0,0,0,9,0,0,4,0,0,0,0,"Passe en Agressif les autres mob sur 5m si Detecte joueur");

UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 7855);
-- Southsea Pirate SAI
SET @ENTRY := 7855;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,75,0,100,0,0,38646,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,21,0,75,0,100,0,0,38648,4,3500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,22,0,75,0,100,0,0,38650,4,3000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,50,0,10,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agressif si detecte joueur"),
(@ENTRY,0,55,0,61,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,9,0,0,4,0,0,0,0,"Passe en Agressif les autres mob sur 5m si detecte joueur");

UPDATE `creature_template` SET `type_flags` = 0 WHERE (entry = 40583);
 SET @ENTRY := 40583;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement a distance"),
(@ENTRY,0,11,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,9,0,100,0,5,30,3000,3500,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"5m - 30m : Tir  ( arc 95826 )  ( fusil & arbalete 6660 )"),
(@ENTRY,0,21,22,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme a distance"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement OFF"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Auto Attack"),
(@ENTRY,0,30,31,9,0,100,0,0,5,3000,3500,11,6603,64,0,0,0,0,1,0,0,0,0,0,0,0,"0m - 5m : Attaque auto"),
(@ENTRY,0,31,32,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,32,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement ON");

UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 38650);
-- Rental Shredder SAI
SET @ENTRY := 38650;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,75,0,100,0,0,0,4,4000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,40,0,9,0,100,0,0,20,3000,6000,11,36228,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lame en dents de scie 0-20m'");

UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 38649);
-- Covert Ops Pounder SAI
SET @ENTRY := 38649;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,75,0,100,0,0,0,4,3500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,40,0,9,0,100,0,0,20,3000,6000,11,36228,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lame en dents de scie 0-20m'");


UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 5419);
-- Glasshide Basilisk SAI
SET @ENTRY := 5419;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,75,0,0,5,5000,15000,11,5106,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de cristal"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,4000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 44546);
-- Duneclaw Burrower SAI
SET @ENTRY := 44546;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,55,9000,9800,11,79443,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pas du sable 0-55% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince"),
(@ENTRY,0,15,0,9,0,50,0,0,5,10000,10000,11,9080,0,0,0,0,0,0,0,0,0,0,0,0,0,"Brise-genou");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 5429);
-- Fire Roc SAI
SET @ENTRY := 5429;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,15,3500,3500,11,11021,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crachat de flammes"),
(@ENTRY,0,1,0,9,0,75,0,0,5,5000,5000,11,24423,32,0,0,0,0,2,0,0,0,0,0,0,0,"Hurlement sanguinaire"),
(@ENTRY,0,50,0,4,0,100,0,0,0,0,0,11,157347,0,0,0,0,0,2,0,0,0,0,0,0,0,"Charge embrasée");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 5426);
-- Blisterpaw Hyena SAI
SET @ENTRY := 5426;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,75,0,0,9,10000,10000,11,82797,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure bondissante"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,0,0,50,0,0,0,5000,5000,11,70485,0,0,0,0,0,1,0,0,0,0,0,0,0,"BOND Aleatoire");

UPDATE `creature_template` SET `HealthModifier` = 2.5, `ArmorModifier` = 1.5, `DamageModifier` = 3,`unit_flags` = 0,`InhabitType` = 3 WHERE (entry = 39022);
-- Tidal Strider SAI
SET @ENTRY := 39022;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,5000,15000,11,82376,32,0,0,0,0,2,0,0,0,0,0,0,0,"Choc de givre"),
(@ENTRY,0,1,0,9,0,75,0,0,8,6000,12000,11,10987,0,0,0,0,0,1,0,0,0,0,0,0,0,"Geyser 0-8 Range");

UPDATE `creature_template` SET `unit_flags` = 0, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 40764);
-- Desert Crawler SAI
SET @ENTRY := 40764;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,50,22000,23000,11,79840,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durcissement 0-50% Health "),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,4000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 40581 ;
UPDATE `creature_template` SET `HealthModifier` = 3.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 40581);
-- Gargantapid SAI
SET @ENTRY := 40581;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,50,22000,23000,11,79840,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durcissement 0-50% Health "),
(@ENTRY,0,1,0,0,0,100,0,0,3000,10000,12000,11,79607,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclaboussure de venin"),
(@ENTRY,0,2,0,2,0,100,0,0,40,9000,9800,11,79443,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pas du sable 0-40% Health "),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 40717);
-- Duneclaw Lasher SAI
SET @ENTRY := 40717;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,18000,22000,11,33126,0,0,0,0,0,2,0,0,0,0,0,0,0,"Désarmé 0-5 m"),
(@ENTRY,0,1,0,0,0,75,0,2000,4000,8000,12000,11,6607,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fouet"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `ArmorModifier` = 3, `DamageModifier` = 3 WHERE (entry = 40656);
-- Duneclaw Lasher SAI
SET @ENTRY := 40656;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,18000,22000,11,33126,0,0,0,0,0,2,0,0,0,0,0,0,0,"Désarmé 0-5 m"),
(@ENTRY,0,1,0,0,0,75,0,2000,4000,8000,12000,11,6607,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fouet"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `speed_walk` = 1.2, `speed_run` = 1.2, `scale` = 0.5 WHERE (entry = 40657);
-- Basking Cobra SAI
SET @ENTRY := 40657;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3500,16000,17000,11,32093,64,0,0,0,0,2,0,0,0,0,0,0,0,"Basking Cobra - In Combat - Cast 'Poison Spit'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"bug mouvement");

UPDATE `creature_template` SET `ArmorModifier` = 3, `scale` = 2.5,`speed_walk` = 1.5, `speed_run` = 1.5 WHERE (entry = 8667);
-- Gusting Vortex SAI
SET @ENTRY := 8667;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,10000,14000,11,83492,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jet d'air"),
(@ENTRY,0,1,0,0,0,50,0,0,5000,10000,16000,11,6982,1,0,0,0,0,1,0,0,0,0,0,0,0,"Bourrasque"),
(@ENTRY,0,30,0,9,0,100,0,0,10,5000,5000,11,79872,0,0,0,0,0,2,0,0,0,0,0,0,0,"Onde de choc    ");

UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 40666;
-- Duneclaw Broodling SAI
SET @ENTRY := 40666;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,6,0,100,0,0,0,0,0,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Visuel Geysers vert");

-- Sandfury Firecaller SAI
SET @ENTRY := 5647;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,75,0,0,0,3400,4700,11,82641,0,0,0,0,0,2,0,0,0,0,0,0,0,"Goutte de lave"),
(@ENTRY,0,1,0,2,0,100,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Firecaller - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,0,0,100,0,9000,12000,33000,35000,11,79886,0,0,0,0,0,2,0,0,0,0,0,0,0,"Explosion de lave"),
(@ENTRY,0,4,0,9,0,100,0,40,100,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Lava Gout Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

-- Sandfury Hideskinner SAI
SET @ENTRY := 5645;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Hideskinner - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,2000,4500,10000,10000,11,81705,0,0,0,0,0,2,0,0,0,0,0,0,0,"Entaille au cuir chevelu"),
(@ENTRY,0,2,0,0,0,100,0,0,0,3000,3000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,10,0,9,0,30,0,0,5,5000,5000,11,70485,0,0,0,0,0,1,0,0,0,0,0,0,0,"BOND Aleatoire"),
(@ENTRY,0,15,0,4,0,30,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

-- Sandfury Axe Thrower SAI
SET @ENTRY := 5646;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,30,3000,3000,11,10277,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer"),
(@ENTRY,0,1,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,2,0,100,1,0,30,2000,2000,11,81173,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frénésie 0-30% Health"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Throw Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Range");

-- Sandfury Zombie SAI
SET @ENTRY := 38909;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,75,1,0,30,3000,3000,11,83507,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frénésie 0-30% Health"),
(@ENTRY,0,10,0,4,0,75,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante (bond) "),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,4000,11,24187,0,0,0,0,0,0,0,0,0,0,0,0,0,"griffe");

UPDATE `creature_template` SET `HealthModifier` = 1 WHERE (entry = 44557);
-- Sandfury Zombie SAI
SET @ENTRY := 44557;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,75,1,0,30,3000,3000,11,83507,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frénésie 0-30% Health"),
(@ENTRY,0,10,0,4,0,75,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante (bond) "),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,4000,11,24187,0,0,0,0,0,0,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,20,0,25,0,100,0,0,0,0,0,11,119053,32,0,0,0,0,1,0,0,0,0,0,0,0,"fantome vert");

-- Sand Lasher SAI
SET @ENTRY := 44569;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Aggro - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,48195,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flagellant émeraude émerge"),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Aggro - Remove Flag Standstate Submerged (Phase 1) (No Repeat)"),
(@ENTRY,0,3,0,0,0,100,0,3000,5000,6000,8000,11,43619,0,0,0,0,0,2,0,0,0,0,0,0,0,"Colère"),
(@ENTRY,0,4,0,7,0,100,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Evade - Set Event Phase 2 (Phase 1) (No Repeat)"),
(@ENTRY,0,5,0,7,0,100,1,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Evade - Remove Flag Standstate Submerged (Phase 2) (No Repeat)"),
(@ENTRY,0,6,0,21,0,100,1,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Reached Home - Set Flag Standstate Submerged (Phase 2) (No Repeat)"),
(@ENTRY,0,10,0,9,0,50,0,8,15,10000,10000,11,49576,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poigne de la mort"),
(@ENTRY,0,15,0,11,0,100,0,0,0,0,0,11,63084,0,0,0,0,0,1,0,0,0,0,0,0,0,"nuage vert au sol");

-- Sand Lasher SAI
SET @ENTRY := 44569;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Aggro - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,48195,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flagellant émeraude émerge"),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Aggro - Remove Flag Standstate Submerged (Phase 1) (No Repeat)"),
(@ENTRY,0,3,0,0,0,100,0,3000,5000,6000,8000,11,43619,0,0,0,0,0,2,0,0,0,0,0,0,0,"Colère"),
(@ENTRY,0,4,0,7,0,100,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Evade - Set Event Phase 2 (Phase 1) (No Repeat)"),
(@ENTRY,0,5,0,7,0,100,1,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Evade - Remove Flag Standstate Submerged (Phase 2) (No Repeat)"),
(@ENTRY,0,6,0,21,0,100,1,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sand Lasher - On Reached Home - Set Flag Standstate Submerged (Phase 2) (No Repeat)"),
(@ENTRY,0,10,0,9,0,50,0,8,15,10000,10000,11,49576,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poigne de la mort"),
(@ENTRY,0,15,0,25,0,100,0,0,0,0,0,11,63084,0,0,0,0,0,1,0,0,0,0,0,0,0,"nuage vert au sol");

UPDATE `creature_template` SET `faction` = 103, `ArmorModifier` = 3, `DamageModifier` = 3.5 WHERE (entry = 44573);

UPDATE `creature_template` SET `scale` = 2.5, `unit_flags` = 0, `HealthModifier` = 1.75, `ArmorModifier` = 3, `DamageModifier` = 3, `mechanic_immune_mask` = 65584 WHERE (entry = 5465);
-- Land Rager SAI
SET @ENTRY := 5465;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,10,40,8000,16000,11,80117,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pointe de terre"),
(@ENTRY,0,1,0,2,0,100,1,0,30,2000,2000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Land Rager - Between 0-30% Health - Cast 'Enrage' (No Repeat)"),
(@ENTRY,0,15,0,9,0,30,0,0,5,10000,15000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut"),
(@ENTRY,0,2,0,9,0,50,0,0,5,8000,15000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");

UPDATE `creature_template` SET `scale` = 0.75, `HealthModifier` = 1.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 5460);
-- Centipaar Sandreaver SAI
SET @ENTRY := 5460;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,50,1,0,0,0,0,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,"Centipaar Sandreaver - On Aggro - Cast 'Sprint' (No Repeat)"),
(@ENTRY,0,1,0,0,0,50,0,0,4000,6000,12000,11,81224,32,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide"),
(@ENTRY,0,2,0,0,0,100,0,2000,3200,9000,9100,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rosser"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

-- Centipaar Wasp SAI
SET @ENTRY := 5455;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3500,3500,4000,6000,11,81109,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de poison"),
(@ENTRY,0,1,0,0,0,50,0,0,4000,6000,15000,11,81224,32,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide"),
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `scale` = 1.5, `ArmorModifier` = 4 WHERE (entry = 5459);
-- Centipaar Tunneler SAI
SET @ENTRY := 5459;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,50,0,0,0,6000,10000,11,6016,0,0,0,0,0,2,0,0,0,0,0,0,0,"Perce-armure"),
(@ENTRY,0,1,0,0,0,75,0,4000,4000,60000,65000,11,81224,0,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide"),
(@ENTRY,0,10,0,0,0,50,0,4000,4000,8000,8000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 47386 ;
UPDATE `creature_template` SET `HealthModifier` = 7, `ArmorModifier` = 2 WHERE (entry = 47386);
-- Ainamiss the Hive Queen SAI
SET @ENTRY := 47386;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,6268,0,0,0,0,0,1,0,0,0,0,0,0,0,"Assaut fulgurant"),
(@ENTRY,0,1,0,0,0,100,0,2000,4500,16000,21000,11,12097,0,0,0,0,0,2,0,0,0,0,0,0,0,"Perce-armure"),
(@ENTRY,0,2,0,0,0,100,0,0,30,8000,8000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre"),
(@ENTRY,0,3,0,0,0,100,0,12000,13000,60000,65000,11,81224,0,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

-- Desert Bloom SAI
SET @ENTRY := 44598;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Desert Bloom - On Aggro - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,48195,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flagellant émeraude émerge"),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Desert Bloom - On Aggro - Remove Flag Standstate Submerged (Phase 1) (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,1,0,30,2000,2000,11,83504,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pluie guérisseuse 0-30% Health"),
(@ENTRY,0,4,0,7,0,100,1,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Desert Bloom - On Evade - Set Event Phase 2 (Phase 1) (No Repeat)"),
(@ENTRY,0,5,0,7,0,100,1,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Desert Bloom - On Evade - Remove Flag Standstate Submerged (Phase 2) (No Repeat)"),
(@ENTRY,0,6,0,21,0,100,1,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Desert Bloom - On Reached Home - Set Flag Standstate Submerged (Phase 2) (No Repeat)"),
(@ENTRY,0,10,0,1,0,100,0,0,0,10000,10000,11,55475,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel parcelle fleurie"),
(@ENTRY,0,15,0,0,0,100,0,0,0,3000,5000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

UPDATE `creature_template` SET `scale` = 1.2, `ArmorModifier` = 2 WHERE (entry = 44599);
-- Duneclaw Broodlord SAI
SET @ENTRY := 44599;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,4500,15000,17000,11,79607,32,0,0,0,0,2,0,0,0,0,0,0,0,"Eclaboussure de venin"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `speed_walk` = 1.5, `speed_run` = 1.5, `HealthModifier` = 1.6 WHERE (entry = 9397);
-- Unearthed Fossil SAI
SET @ENTRY := 9397;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,5000,17000,20000,11,83562,0,0,0,0,0,2,0,0,0,0,0,0,0,"Malédiction de vie"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,3149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hurlement furieux");

UPDATE `creature_template` SET `speed_walk` = 1.25, `speed_run` = 1.25, `scale` = 1.75 WHERE (entry = 44594);
-- Sunburst Adder SAI
SET @ENTRY := 44594;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,4000,6000,10000,11,78808,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rayon de soleil");

UPDATE `creature_template` SET `ArmorModifier` = 2 WHERE (entry = 38914);
-- Sandstone Golem SAI
SET @ENTRY := 38914;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,6000,10000,11,80380,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de sable"),
(@ENTRY,0,10,0,9,0,30,0,0,10,6000,18000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 5469);
-- Dune Smasher SAI
SET @ENTRY := 5469;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,50,0,0,10,5000,10000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,15,0,0,0,100,0,5000,10000,15000,15000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 2 WHERE (entry = 38916);
-- Sandstone Earthen SAI
SET @ENTRY := 38916;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,73864,2,0,0,0,0,1,0,0,0,0,0,0,0,"Piège de sable (piege)"),
(@ENTRY,0,1,0,2,0,100,0,0,40,11000,12000,11,83567,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sables étincelants 0-40% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,8000,11,83691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piège de sable (cast)"),
(@ENTRY,0,15,0,0,0,100,0,0,0,6000,6000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre  ");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `DamageModifier` = 1.5 WHERE (entry = 44612);
-- Wastewander Tracker SAI
SET @ENTRY := 44612;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shoot"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,16,0,9,0,100,0,5,15,9000,9000,11,80009,3,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Serpent Sting on Close"),
(@ENTRY,0,17,0,9,0,100,0,0,5,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `DamageModifier` = 2.5 WHERE (entry = 44611);
-- Wastewander Survivalist SAI
SET @ENTRY := 44611;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,1,0,50,0,0,0,30000,30000,11,80596,0,0,0,0,0,1,0,0,0,0,0,0,0,"hors combat pose Piège explosif"),
(@ENTRY,0,15,0,9,0,30,0,0,5,10000,10000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames"),
(@ENTRY,0,20,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,25,0,4,0,50,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `HealthModifier` = 1 ,`DamageModifier` = 1 WHERE (entry = 44612);
-- Wastewander Tracker SAI
SET @ENTRY := 44612;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shoot"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,20,21,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,16,0,9,0,100,0,5,15,9000,9000,11,80009,3,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Serpent Sting on Close"),
(@ENTRY,0,17,0,9,0,100,0,0,5,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement off");

UPDATE `creature_template` SET `scale` = 1.5, `ArmorModifier` = 2 WHERE (entry = 5451);
-- Hazzali Swarmer SAI
SET @ENTRY := 5451;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,10722,2,0,0,0,0,1,0,0,0,0,0,0,0,"Essaim de silithides"),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,25000,27000,11,81224,0,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide"),
(@ENTRY,0,10,0,0,0,50,0,0,0,5000,8000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_template` SET `scale` = 1.5 WHERE (entry = 4196);
-- Silithid Swarm SAI
SET @ENTRY := 4196;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,6590,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silithid Swarm - On Respawn - Cast Silithid Swarm Passive"),
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"agressif"),
(@ENTRY,0,15,0,11,0,100,0,0,0,0,0,41,30000,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn");

UPDATE `creature_template` SET `speed_walk` = 1.25, `speed_run` = 1.25, `scale` = 1.3, `HealthModifier` = 1, `ArmorModifier` = 1.5 WHERE (entry = 5450);
-- Hazzali Stinger SAI
SET @ENTRY := 5450;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,50,0,2000,3000,5000,8000,11,79175,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coupe frénétique"),
(@ENTRY,0,15,0,0,0,100,0,2000,2000,10000,10000,11,5416,2,0,0,0,0,2,0,0,0,0,0,0,0,"Dard venimeux"),
(@ENTRY,0,20,0,4,0,100,0,0,0,0,0,11,157347,0,0,0,0,0,2,0,0,0,0,0,0,0,"Charge embrasée");

UPDATE `creature_template` SET `speed_run` = 1.14, `scale` = 0.35, `HealthModifier` = 1, `ArmorModifier` = 1.5 WHERE (entry = 5454);
-- Hazzali Sandreaver SAI
SET @ENTRY := 5454;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,3000,6000,11,113687,0,0,0,0,0,1,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,1,0,4,0,75,1,0,0,0,0,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sprint"),
(@ENTRY,0,2,0,0,0,50,0,0,4000,25000,27000,11,81224,32,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide");

UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 5, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 47387);
-- Harakiss the Infestor SAI
SET @ENTRY := 47387;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,9000,9800,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rosser"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,6268,0,0,0,0,0,1,0,0,0,0,0,0,0,"Assaut fulgurant"),
(@ENTRY,0,2,0,0,0,100,0,6000,7000,25000,27000,11,81224,0,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide"),
(@ENTRY,0,3,0,2,0,100,1,0,30,2000,2000,11,81173,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frénésie 0-30% Health"),
(@ENTRY,0,4,0,2,0,100,1,0,30,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harakiss the Infestor - Between 0-30% Health - Say Line 0 (No Repeat)"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,0,0,100,0,0,0,10000,15000,11,81691,1,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_template` SET `npcflag` = 1 WHERE (entry = 39081);

UPDATE `creature_template` SET `scale` = 1.5, `ArmorModifier` = 1.25, `DamageModifier` = 2.5 WHERE (entry = 5420);
-- Glasshide Gazer SAI
SET @ENTRY := 5420;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,75,0,4000,4500,12000,18000,11,5106,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de cristal"),
(@ENTRY,0,1,0,2,0,100,0,0,60,12000,13000,11,83497,0,0,0,0,0,1,0,0,0,0,0,0,0,"Peau de verre 0-60% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,5500,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `speed_run` = 1.125, `scale` = 1.5, `DamageModifier` = 2.5 WHERE (entry = 5427);
-- Rabid Blisterpaw SAI
SET @ENTRY := 5427;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,10000,17800,11,82797,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure bondissante 0-9 m"),
(@ENTRY,0,1,0,0,0,75,0,4000,5000,25000,29000,11,3150,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rage"),
(@ENTRY,0,2,0,0,0,50,0,0,0,3000,5000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,10,0,0,0,50,0,0,0,5000,8000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brise-genou");

UPDATE `creature_template` SET `HealthModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 40632);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (40632, 1, 2147, 0, 59577, 18019);
-- Southsea Musketeer SAI
SET @ENTRY := 40632;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,75,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Southsea Musketeer - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,9,0,50,0,5,30,22000,24000,11,79721,1,0,0,0,0,2,0,0,0,0,0,0,0,"Tir explosif"),
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,6600,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shoot"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,21,0,9,0,100,0,5,30,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement off 5-30"),
(@ENTRY,0,25,0,9,0,100,0,0,5,3000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 40635);
-- Southsea Strongarm SAI
SET @ENTRY := 40635;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,4,0,75,1,0,0,0,0,11,82742,0,0,0,0,0,2,0,0,0,0,0,0,0,"Empaler et tirer"),
(@ENTRY,0,15,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Southsea Strongarm - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,20,0,2,0,100,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,25,0,9,0,100,0,0,5,8000,10000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames");

UPDATE `creature_template` SET `scale` = 0.8, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 40527);
-- Duneshore Crab SAI
SET @ENTRY := 40527;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,50,22000,23000,11,79840,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durcissement 0-50% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,5000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 38749 ;
-- Captain Dreadbeard SAI
SET @ENTRY := 38749;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,3000,6000,11,75361,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe d'abordage"),
(@ENTRY,0,1,0,2,0,100,0,0,40,4000,5000,11,83639,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bain de sang 0-40%");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 5471);
-- Dunemaul Ogre SAI
SET @ENTRY := 5471;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Ogre - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe héroïque"),
(@ENTRY,0,10,0,0,0,50,0,4000,4000,8000,12000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,15,0,9,0,25,0,0,5,10000,10000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames    "),
(@ENTRY,0,50,0,62,0,100,1,65063,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : Credit"),
(@ENTRY,0,55,0,62,0,100,0,65063,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : despawn"),
(@ENTRY,0,60,0,8,0,100,0,73068,0,20000,20000,33,39073,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : credit"),
(@ENTRY,0,65,0,8,0,100,0,73068,0,20000,20000,24,131842,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : passif"),
(@ENTRY,0,70,0,8,0,100,0,73068,0,20000,20000,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : despawn");

UPDATE `creature_template` SET `scale` = 0.6, `HealthModifier` = 1.5, `DamageModifier` = 3,`speed_walk` = 1, `speed_run` = 1 WHERE (entry = 5472);
-- Dunemaul Enforcer SAI
SET @ENTRY := 5472;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Enforcer - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,9,0,100,0,0,10,24000,26000,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant 0-10 m"),
(@ENTRY,0,10,0,9,0,100,0,0,5,6000,10000,11,79175,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coupe frénétique"),
(@ENTRY,0,50,0,62,0,100,1,65063,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : Credit"),
(@ENTRY,0,55,0,62,0,100,0,65063,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : despawn"),
(@ENTRY,0,60,0,8,0,100,0,73068,0,20000,20000,33,39073,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : credit"),
(@ENTRY,0,65,0,8,0,100,0,73068,0,20000,20000,24,131842,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : passif"),
(@ENTRY,0,70,0,8,0,100,0,73068,0,20000,20000,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : despawn");

UPDATE `creature_template` SET `scale` = 1.25, `HealthModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 5474);
-- Dunemaul Brute SAI
SET @ENTRY := 5474;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Brute - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,75,9,0,100,0,0,5,16000,18000,11,10966,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,6000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   "),
(@ENTRY,0,50,0,62,0,100,1,65063,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : Credit"),
(@ENTRY,0,55,0,62,0,100,0,65063,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : despawn"),
(@ENTRY,0,60,0,8,0,100,0,73068,0,20000,20000,33,39073,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : credit"),
(@ENTRY,0,65,0,8,0,100,0,73068,0,20000,20000,24,131842,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : passif"),
(@ENTRY,0,70,0,8,0,100,0,73068,0,20000,20000,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : despawn");

UPDATE `creature_template` SET `scale` = 0.75, `HealthModifier` = 1.25, `DamageModifier` = 2 WHERE (entry = 5474);
-- Dunemaul Ogre Mage SAI
SET @ENTRY := 5473;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boule de feu"),
(@ENTRY,0,1,0,0,0,50,0,4000,9000,18000,19000,11,11436,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lenteur"),
(@ENTRY,0,3,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Ogre Mage - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,12,0,9,0,75,1,5,30,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement off 5-30"),
(@ENTRY,0,50,0,62,0,100,1,65063,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : Credit"),
(@ENTRY,0,55,0,62,0,100,0,65063,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : despawn"),
(@ENTRY,0,60,0,8,0,100,0,73068,0,20000,20000,33,39073,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : credit"),
(@ENTRY,0,65,0,8,0,100,0,73068,0,20000,20000,24,131842,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : passif"),
(@ENTRY,0,70,0,8,0,100,0,73068,0,20000,20000,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : despawn");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 38880 ;
UPDATE `creature_template` SET `scale` = 1.25,`rank` = 1, `HealthModifier` = 3, `DamageModifier` = 3.5 WHERE (entry = 38880);
-- Sandscraper SAI
SET @ENTRY := 38880;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandscraper - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,9,0,100,0,0,5,7000,12000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe mortelle 0-5 m"),
(@ENTRY,0,2,0,2,0,100,1,0,30,2000,2000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"8599 0-30% Health - Cast 'Enrage' (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,1,0,30,2000,2000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandscraper - Between 0-30% Health - Say Line 1 (No Repeat)"),
(@ENTRY,0,4,0,9,0,100,0,0,5,8000,12000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement");

UPDATE `creature_template` SET `scale` = 0.8, `HealthModifier` = 1.25, `DamageModifier` = 2 WHERE (entry = 5475);
-- Dunemaul Warlock SAI
SET @ENTRY := 5475;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de l'ombre"),
(@ENTRY,0,1,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Warlock - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,11,0,4,0,75,0,0,0,0,0,11,6909,2,0,0,0,0,2,0,0,0,0,0,0,0,"Malédiction des épines"),
(@ENTRY,0,12,0,9,0,100,0,5,40,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement off "),
(@ENTRY,0,50,0,62,0,100,1,65063,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : Credit"),
(@ENTRY,0,55,0,62,0,100,0,65063,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Valoir son pesant d’ogres 24955 : despawn"),
(@ENTRY,0,60,0,8,0,100,0,73068,0,20000,20000,33,39073,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : credit"),
(@ENTRY,0,65,0,8,0,100,0,73068,0,20000,20000,24,131842,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : passif"),
(@ENTRY,0,70,0,8,0,100,0,73068,0,20000,20000,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le sucre d’ogre 24963 : despawn");


UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 40648 ;
UPDATE `creature_template` SET `faction` = 91, `scale` = 2, `rank` = 1, `HealthModifier` = 3.5, `ArmorModifier` = 2 WHERE (entry = 40648);
-- Zakkaru SAI
SET @ENTRY := 40648;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,4000,6000,11,83492,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jet d'air"),
(@ENTRY,0,1,0,9,0,100,0,0,5,16000,20000,11,6982,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bourrasque 0-5 m"),
(@ENTRY,0,2,0,2,0,100,0,0,40,25000,26000,11,83493,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bénédiction d’Al'Akir");

UPDATE `creature_template` SET `scale` = 2,`flags_extra` = 128 WHERE (entry = 41730);
UPDATE `creature` SET `spawndist`=50,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 41730;

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 8203 ;
UPDATE `creature_template` SET `faction` = 230, `HealthModifier` = 4.5, `DamageModifier` = 3 WHERE (entry = 8203);
-- Kregg Keelhaul SAI
SET @ENTRY := 8203;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,83622,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement bondissant"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,24000,28000,11,83643,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mousse glissante"),
(@ENTRY,0,2,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode defensif");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `DamageModifier` = 2.5 WHERE (entry = 40636);
-- Southsea Swabbie SAI
SET @ENTRY := 40636;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,50,0,0,0,0,0,11,42332,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer une arme"),
(@ENTRY,0,1,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Southsea Swabbie - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,2,0,100,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse");

UPDATE `creature_template` SET `faction` = 230, `HealthModifier` = 2.75, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 40593);
-- Southsea Taskmaster SAI
SET @ENTRY := 40593;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,3500,4500,12000,16000,11,81754,0,0,0,0,0,2,0,0,0,0,0,0,0,"Motiver"),
(@ENTRY,0,15,0,4,0,100,0,0,15,34000,37000,11,81753,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri menaçant"),
(@ENTRY,0,20,0,0,0,100,0,2000,2000,10000,10000,11,772,34,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre"),
(@ENTRY,0,25,0,0,0,100,0,2000,2000,4000,6000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse"),
(@ENTRY,0,30,0,0,0,75,0,3000,3000,8000,10000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre    ");





















REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44873, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 44873);       #  Voler
#UPDATE `creature` SET `position_z` = `position_z` +2 WHERE `creature`.`id` = 44873;       #  Voler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5455, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 5455);       #  Voler
#UPDATE `creature` SET `position_z` = `position_z` +4 WHERE `creature`.`id` = 5455;       #  Voler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5430, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 7 WHERE (entry = 5430);       #  Voler
UPDATE `creature` SET `position_z` = `position_z` +4 WHERE `creature`.`id` = 5430;       #  Voler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5450, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 5450);       #  Voler
UPDATE `creature` SET `position_z` = `position_z` +4 WHERE `creature`.`id` = 5450;       #  Voler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5429, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 5429);       #  Voler
UPDATE `creature` SET `position_z` = `position_z` +7 WHERE `creature`.`id` = 5429;       #  Voler


UPDATE `creature_template` SET `faction` = 413 WHERE (entry = 9397);
UPDATE `creature_template` SET `faction` = 413 WHERE (entry = 44594);
UPDATE `creature_template` SET `faction` = 413 WHERE (entry = 44595);
UPDATE `creature_template` SET `faction` = 778 WHERE (entry = 44595);
UPDATE `creature_template` SET `faction` = 778 WHERE (entry = 38914);
UPDATE `creature_template` SET `faction` = 778 WHERE (entry = 44568);
UPDATE `creature_template` SET `faction` = 778 WHERE (entry = 39185);
UPDATE `creature_template` SET `faction` = 778 WHERE (entry = 40657);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 40583);
UPDATE `creature_template` SET `faction` = 230 WHERE (entry = 7855);
UPDATE `creature_template` SET `faction` = 230 WHERE (entry = 7858);
UPDATE `creature_template` SET `faction` = 2258 WHERE (entry = 38749);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 44611);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 44612);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 44613);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 39061);








/****************************************************************************************/
/* 				QUETES              																								 */
/****************************************************************************************/
/* Le robot-boucher 25112 */
UPDATE `quest_template` SET `StartItem` = 0 WHERE (ID = 25112);
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 0 WHERE (ID = 25112);
DELETE FROM `quest_objectives` WHERE (QuestID = 25112) AND (ID IN (265863));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(265863, 25112, 0, 0, 5419, 10, 0, 0, 'Glasshide Basilisks Harvested', 20444);
UPDATE `quest_objectives_locale` SET `Description` = 'Basilics peau-de-verre tués' WHERE `quest_objectives_locale`.`ID` = 265863 AND `quest_objectives_locale`.`locale` = 'frFR';
UPDATE `quest_template_locale` SET `LogDescription` = 'Tuer 10 Basilics peau-de-verre.', `QuestDescription` = 'Je gagne ma vie en vendant des morceaux d’animaux. J’ai mis au point une technique infaillible pour faire un maximum de profit. Le robot-boucher !$B$BCette petite machine est programmée pour ramasser toutes sortes de matériaux utilisables qu’on peut trouver dans la nature. Le robot procède au cas-par-cas, il fait tout le boulot à ma place, et je n’ai qu’à récupérer ce qu’il a ramassé.Le seul problème avec ce robot c''est qu''il n''arrive absolument pas a ramasser des morceaux de basilic peau-de-verre , et j''ai des commandes a honorer !. $B$BEn attendant de résoudre ce souci, allez me tuer quelques basilic peau-de-verre. Vous en trouverez au sud.' WHERE `quest_template_locale`.`ID` = 25112 AND `quest_template_locale`.`locale` = 'frFR';


/****************************************************************************************/
/* Roc n’ roll 25111 */
UPDATE `quest_template` SET `StartItem` = 0 WHERE (ID = 25111);
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 0 WHERE (ID = 25111);
DELETE FROM `quest_objectives` WHERE (QuestID = 25111) AND (ID IN (265837));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(265837, 25111, 0, 0, 5429, 12, 0, 0, 'Fire Rocs Harvested', 20444);
UPDATE `quest_objectives_locale` SET `Description` = 'Rocs de feu Basilics peau-de-verre tués' WHERE `quest_objectives_locale`.`ID` = 265837 AND `quest_objectives_locale`.`locale` = 'frFR';
UPDATE `quest_template_locale` SET `LogDescription` = 'Tuer 12 de Rocs de feu.' WHERE `quest_template_locale`.`ID` = 25111 AND `quest_template_locale`.`locale` = 'frFR';

/****************************************************************************************/
/* Boucherie de brûlepattes 25115 */
UPDATE `quest_objectives_locale` SET `Description` = 'Hyènes brûlepatte tuées' WHERE `quest_objectives_locale`.`ID` = 265656 AND `quest_objectives_locale`.`locale` = 'frFR';
DELETE FROM `quest_objectives` WHERE (QuestID = 25115) AND (ID IN (265656));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(265656, 25115, 0, 0, 5426, 10, 0, 0, 'Blisterpaw Hyenas Harvested', 20444);
UPDATE `quest_template` SET `StartItem` = 0 WHERE (ID = 25115);
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 0 WHERE (ID = 25115);
UPDATE `quest_template_locale` SET `LogDescription` = 'Tuer 10 d''Hyènes brûlepattes.', `QuestDescription` = 'Les hyènes qui errent dans le désert peuvent vous sembler décharnées, mais elles sont dotées des mâchoires les plus puissantes que l’on peut trouver ! Si vous ne faites pas attention, elles vous arracheront une jambe d’un seul coup. Ces mâchoires surpuissantes sont très prisées, mon $gami:amie;, et n''attendent que de trouver preneur !' WHERE `quest_template_locale`.`ID` = 25115 AND `quest_template_locale`.`locale` = 'frFR';

/****************************************************************************************/
/* Chasseur d’épaves 25048 (a2) - 24906 (h2) */
DELETE FROM `gameobject` WHERE `gameobject`.`id` = 202198;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024471, 202198, 1, 0, 0, 1, 0, 0, -7619.05, -3905.59, 0.912897, 2.80742, 0, 0, 0.986074, 0.166308, 300, 0, 1, 0),
(21024472, 202198, 1, 0, 0, 1, 0, 0, -7658.16, -3931.4, -0.67641, 5.14202, 0, 0, 0.540122, -0.841587, 300, 0, 1, 0),
(21024473, 202198, 1, 0, 0, 1, 0, 0, -7522.1, -3994.67, -1.71596, 5.4228, 0, 0, 0.417044, -0.908886, 300, 0, 1, 0),
(21024474, 202198, 1, 0, 0, 1, 0, 0, -7551.79, -3871, -1.12719, 2.02007, 0, 0, 0.84685, 0.531832, 300, 0, 1, 0),
(21024475, 202198, 1, 0, 0, 1, 0, 0, -7587.49, -3840.82, -0.784868, 2.46382, 0, 0, 0.943125, 0.332438, 300, 0, 1, 0),
(21024476, 202198, 1, 0, 0, 1, 0, 0, -7560.73, -4015.38, -1.71617, 4.99673, 0, 0, 0.599783, -0.800163, 300, 0, 1, 0),
(21024477, 202198, 1, 0, 0, 1, 0, 0, -7594.57, -4004.46, -1.71617, 3.28652, 0, 0, 0.997376, -0.0724005, 300, 0, 1, 0),
(21024478, 202198, 1, 0, 0, 1, 0, 0, -7669.57, -3992.75, -1.71617, 2.78976, 0, 0, 0.984566, 0.175012, 300, 0, 1, 0),
(21024479, 202198, 1, 0, 0, 1, 0, 0, -7753.42, -3996.58, -1.7138, 3.20995, 0, 0, 0.999416, -0.0341699, 300, 0, 1, 0),
(21024480, 202198, 1, 0, 0, 1, 0, 0, -7836.29, -3994.7, -1.55799, 2.99003, 0, 0, 0.99713, 0.0757068, 300, 0, 1, 0),
(21024481, 202198, 1, 0, 0, 1, 0, 0, -7885.75, -4030.49, -1.27726, 3.24136, 0, 0, 0.998756, -0.049864, 300, 0, 1, 0),
(21024482, 202198, 1, 0, 0, 1, 0, 0, -7828.52, -4069.67, -1.71615, 5.72715, 0, 0, 0.274451, -0.961601, 300, 0, 1, 0),
(21024483, 202198, 1, 0, 0, 1, 0, 0, -7740.1, -4064.98, -1.71615, 0.103696, 0, 0, 0.0518249, 0.998656, 300, 0, 1, 0),
(21024484, 202198, 1, 0, 0, 1, 0, 0, -7724.47, -4110.97, -1.67702, 4.51174, 0, 0, 0.774371, -0.632732, 300, 0, 1, 0),
(21024485, 202198, 1, 0, 0, 1, 0, 0, -7719.77, -4140.82, 0.34027, 0.541557, 0, 0, 0.267482, 0.963563, 300, 0, 1, 0),
(21024486, 202198, 1, 0, 0, 1, 0, 0, -7762.58, -4144.73, -1.71752, 3.03127, 0, 0, 0.998479, 0.0551333, 300, 0, 1, 0),
(21024487, 202198, 1, 0, 0, 1, 0, 0, -7799.34, -4187.47, -0.425379, 4.18188, 0, 0, 0.867748, -0.497004, 300, 0, 1, 0),
(21024488, 202198, 1, 0, 0, 1, 0, 0, -7854.69, -4212.93, -1.69406, 4.57458, 0, 0, 0.754114, -0.656744, 300, 0, 1, 0),
(21024489, 202198, 1, 0, 0, 1, 0, 0, -7838.75, -4260.87, 0.274565, 4.80038, 0, 0, 0.675323, -0.737522, 300, 0, 1, 0),
(21024490, 202198, 1, 0, 0, 1, 0, 0, -7911.35, -4228.23, -0.657589, 2.64446, 0, 0, 0.969266, 0.246013, 300, 0, 1, 0),
(21024491, 202198, 1, 0, 0, 1, 0, 0, -7893.72, -4132.31, 0.374927, 3.40434, 0, 0, 0.991383, -0.130995, 300, 0, 1, 0),
(21024492, 202198, 1, 0, 0, 1, 0, 0, -7557.81, -3931.27, -1.71682, 4.13869, 0, 0, 0.878278, -0.47815, 300, 0, 1, 0);

/****************************************************************************************/
/* Les fusées de sauvetage 25050 (a2) - 24910 (h2) - balon 40604 - .cast 76107 invoque npc 40791 */

DELETE FROM `quest_objectives` WHERE (QuestID = 24910);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(266428, 24910, 0, 0, 38576, 10, 0, 0, 'Life Rockets Delivered', 20444),
(266429, 24910, 0, 1, 15000186, 3, 0, 0, '', 20444);
DELETE FROM `quest_objectives` WHERE (QuestID = 25050);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(265891, 25050, 0, 0, 38576, 10, 0, 0, 'Life Rockets Delivered', 20444),
(265892, 25050, 0, 1, 15000186, 3, 0, 0, '', 20444);
UPDATE `quest_objectives_locale` SET `Description` = 'Gobelins rescapés secouru' WHERE `quest_objectives_locale`.`ID` = 265891 AND `quest_objectives_locale`.`locale` = 'frFR';
UPDATE `quest_objectives_locale` SET `Description` = 'Gobelins rescapés secouru' WHERE `quest_objectives_locale`.`ID` = 266428 AND `quest_objectives_locale`.`locale` = 'frFR';
UPDATE `quest_objectives_locale` SET `Description` = 'Canon des Intercepteurs' WHERE `quest_objectives_locale`.`ID` = 266429 AND `quest_objectives_locale`.`locale` = 'frFR';
UPDATE `quest_objectives_locale` SET `Description` = 'Canon des Intercepteurs' WHERE `quest_objectives_locale`.`ID` = 265892 AND `quest_objectives_locale`.`locale` = 'frFR';

UPDATE `quest_template_locale` SET `LogDescription` = 'Apportez des fusées de sauvetage à 10 Rescapés de Gentepression et détruisez 3 Canons des Intercepteurs.', `QuestDescription` = 'Très bien, $n. Y en a assez des p’tits boulots, il est temps de passer aux choses sérieuses.$B$BLes ruines du port de Gentepression sont toujours occupées par de malheureux gobelins de Gentepression qui attendent d’être secourus. Chacun d’eux est un futur acheteur potentiel , apportez leur ces réacteurs dorsaux qu''ils puissent rentrer et m''acheter tout un tas de choses . Puisque c''est sur le chemin ... si vous pouviez détruire ces 3 énormes canons ... Ils tirent sur tous les bateaux qui quittent le port et ce n''est pas très bon pour le commerce .' WHERE `quest_template_locale`.`ID` = 24910 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `quest_template_locale` SET `LogDescription` = 'Apportez des fusées de sauvetage à 10 Rescapés de Gentepression et détruisez 3 Canons des Intercepteurs.', `QuestDescription` = 'Le port de Gentepression, à l''est, a été inondé et beaucoup de malheureux gobelins y sont encore piégés ! , il est temps de leur porter secour. Chacun d’eux est un futur acheteur potentiel , apportez leur ces réacteurs dorsaux qu''ils puissent rentrer et m''acheter tout un tas de choses . Puisque c''est sur le chemin ... si vous pouviez détruire ces 3 énormes canons ... Ils tirent sur tous les bateaux qui quittent le port et ce n''est pas très bon pour le commerce .' WHERE `quest_template_locale`.`ID` = 25050 AND `quest_template_locale`.`locale` = 'frFR';

UPDATE `creature_template` SET `npcflag` = `npcflag` |1 WHERE (entry = 38571);
-- Steamwheedle Survivor SAI
SET @ENTRY := 38571;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,64,0,100,1,0,0,0,0,33,38576,0,0,0,0,0,7,0,0,0,0,0,0,0,"Les fusées de sauvetage 25050 (a2) - 24910 (h2) - balon 40604 : credit"),
(@ENTRY,0,15,20,61,0,100,0,0,0,0,0,11,168253,0,0,0,0,0,1,0,0,0,0,0,0,0,"Les fusées de sauvetage 25050 (a2) - 24910 (h2) - balon 40604 : saut tres rapide et loin pour pnj"),
(@ENTRY,0,20,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Les fusées de sauvetage 25050 (a2) - 24910 (h2) - balon 40604 : despawn"),
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000186, 0, 0, 0, 0, 0, 21788, 0, 0, 0, 'Canon des Intercepteurs', '', '', 'Interact', 0, 41, 41, 0, 0, 230, 0, 1, 1.0714299678802, 2, 0, 0, 2000, 2000, 1, 1, 1, 131072, 2131968, 0, 0, 0, 0, 0, 9, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);


DELETE FROM `creature` WHERE `creature`.`id` = 38571;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(273984, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6978.65, -4839.01, 3.66244, 2.02458, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273986, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6972.64, -4843.7, 3.31533, 6.19592, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273991, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6811.51, -4822.24, 6.31223, 5.86431, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273993, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6847.49, -4822.39, 2.05035, 2.19912, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273998, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6828.12, -4819.02, 21.0406, 2.19912, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273999, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6888.32, -4838.34, 5.28646, 0.977384, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(274001, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6878.39, -4837.75, 2.63025, 0.0174533, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(274003, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6915.94, -4830.96, 2.19499, 2.19912, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(274006, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6885.45, -4809.96, 2.88348, 6.00393, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(274007, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6854.45, -4841.11, 1.54962, 2.19912, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(274008, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6916.69, -4862.75, 3.70832, 2.19912, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(274009, 38571, 1, 0, 0, 1, 0, 0, 0, 0, -6883.64, -4865.85, 0.573809, 2.19912, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070459, 15000186, 1, 0, 0, 1, 0, 0, 0, 0, -7443.45, -4648.76, 4.3127, 1.10555, 300, 0, 0, 6356, 0, 0, 0, 0, 0, 0),
(21070458, 15000186, 1, 0, 0, 1, 0, 0, 0, 0, -6991.61, -4575.12, 3.41157, 5.14643, 300, 0, 0, 6356, 0, 0, 0, 0, 0, 0),
(21070457, 15000186, 1, 0, 0, 1, 0, 0, 0, 0, -7203.14, -4544.07, 3.62734, 1.50414, 300, 0, 0, 6356, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `creature`.`id` = 38571;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070462, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7445.89, -4655.66, 3.6631, 1.40989, 300, 0, 0, 6752, 0, 0, 0, 0, 0, 0),
(21070461, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7419.66, -4655.59, 2.54337, 0.192528, 300, 10, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070460, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7462.87, -4639.48, 5.3177, 1.74761, 300, 10, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070435, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7218.08, -4646.6, 18.1436, 3.66972, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070434, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7191.61, -4627.57, 11.1706, 2.41112, 300, 5, 0, 6752, 0, 1, 0, 0, 0, 0),
(21070433, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7177.07, -4621.59, 11.2039, 5.83153, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070430, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7198.23, -4552.38, 2.28368, 1.83401, 300, 3, 0, 7172, 0, 2, 0, 0, 0, 0),
(21070429, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7217.48, -4534.51, 2.95511, 2.36612, 300, 10, 0, 7172, 0, 1, 0, 0, 0, 0),
(273980, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7002.77, -4574.96, 3.09492, 5.12286, 240, 5, 0, 7172, 0, 1, 0, 0, 0, 0),
(273973, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7033.31, -4425.27, 12.7484, 1.90241, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273971, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7007.24, -4442.41, 19.2568, 6.03377, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273967, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7044.03, -4442.21, 12.3497, 4.27606, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273966, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7059.11, -4422.64, 12.8657, 0.628318, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273964, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7057.25, -4439.39, 12.599, 5.11381, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273963, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -7069.53, -4425.13, 13.2731, 5.96903, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273961, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -7068.6, -4432.82, 13.1744, 0.15708, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273958, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7035.05, -4489.4, 2.77751, 3.735, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273957, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7032.28, -4493.77, 3.10938, 3.735, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273955, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7042.26, -4489, 2.37676, 0.191986, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273953, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7030.29, -4513.67, 2.60058, 4.16659, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273952, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7047.27, -4511.48, 0.860175, 3.49066, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273951, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7017.01, -4537.05, 1.31424, 3.735, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273950, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7023.94, -4535.71, 1.64921, 6.10865, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273944, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -7044.43, -4616.56, 13.8536, 3.78736, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273943, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -6973.71, -4581.55, 2.02779, 6.16729, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273942, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -6990.31, -4646.05, 19.8688, 1.48828, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273941, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -7025.31, -4614.27, 13.2315, 0.977384, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273940, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -7025.12, -4635.79, 13.0188, 4.15388, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273937, 40583, 1, 440, 1937, 1, 0, 0, 0, 0, -7018, -4544.58, 1.61517, 3.05433, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273933, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -7009.32, -4623.22, 13.4248, 0.977384, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273932, 40583, 1, 440, 440, 1, 0, 0, 0, 0, -7030.27, -4632.79, 13.063, 4.2586, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273900, 40583, 1, 440, 985, 1, 0, 0, 0, 0, -7141.35, -4592.25, 1.16875, 6.14356, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273897, 40583, 1, 440, 985, 1, 0, 0, 0, 0, -7157.5, -4580.67, 2.51389, 0.663225, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273896, 40583, 1, 440, 985, 1, 0, 0, 0, 0, -7157.02, -4572.89, 2.46144, 3.05433, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273895, 40583, 1, 0, 0, 1, 0, 0, 0, 1, -7169.67, -4574.25, 1.68807, 5.37468, 240, 10, 0, 7172, 0, 1, 0, 0, 0, 0),
(273894, 40583, 1, 440, 985, 1, 0, 0, 0, 0, -7169.11, -4553.51, 2.30341, 3.19395, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273893, 40583, 1, 440, 985, 1, 0, 0, 0, 0, -7179.65, -4550.64, 2.99696, 0.837758, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* ON RECHERCHE : Caliph Dard-de-Scorpide 2781 */
UPDATE `quest_objectives_locale` SET `Description` = 'Caliph Dard-de-Scorpide' WHERE `quest_objectives_locale`.`ID` = 256332 AND `quest_objectives_locale`.`locale` = 'frFR';
UPDATE `quest_template_locale` SET `LogDescription` = 'Rapportez la mort de de Caliph Dard-de-Scorpide à l''Ingénieur en chef Vizisanie à Gadgetzan.', `QuestDescription` = 'ON RECHERCHE : Caliph Dard-de-Scorpide !$B$BLa Compagnie des Eaux de Gadgetzan de Tanaris paiera une forte récompense pour la tête de Caliph Dard-de-Scorpide, chef des hors-la-loi Bat-le-Désert. Ses crimes sont :$B$B1) Assassinat d''employés de la Compagnie des Eaux de Gadgetzan ;$B2) Vol des ressources de la Compagnie des Eaux de Gadgetzan ;$B3) Vol des biens de la Compagnie des Eaux de Gadgetzan.$BRapportez la mort de Caliph Dard-de-Scorpide à l''ingénieur en chef Vizisanie pour toucher immédiatement votre récompense.' WHERE `quest_template_locale`.`ID` = 2781 AND `quest_template_locale`.`locale` = 'frFR';
-- DIFF `quest_objectives` of QuestID 2781
DELETE FROM `quest_objectives` WHERE (QuestID = 2781) AND (ID IN (256332));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (256332, 2781, 0, 0, 44750, 1, 0, 0, '', 20444);
UPDATE `creature_template` SET `faction` = 103, `HealthModifier` = 4.5, `ArmorModifier` = 1.5, `DamageModifier` = 4 WHERE (entry = 44750);
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('44750', '2781', '0', '100', '1', '1', '0', '1', '1', NULL);
-- Caliph Scorpidsting SAI
SET @ENTRY := 44750;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,8000,8000,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,"poison"),
(@ENTRY,0,15,0,0,0,100,0,0,0,3000,3000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,75,0,0,0,100,0,0,0,5000,5000,46,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"mouvement en combat");


REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070465, 44750, 1, 0, 0, 1, 0, 0, 0, 1, -7641.88, -4389.11, 1.82416, 2.16781, 300, 0, 0, 2964, 0, 0, 0, 0, 0, 0),
(21070469, 7407, 1, 0, 0, 1, 0, 0, 0, 1, -7178.46, -3842.65, 8.49614, 1.48256, 300, 0, 0, 8280, 0, 0, 0, 0, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024532, 15000026, 1, 0, 0, 1, 0, 0, -7636.06, -4412.29, -4.64121, 0.288739, 0, 0, 0.143868, 0.989597, 300, 0, 1, 0),
(21024531, 1901, 1, 0, 0, 1, 0, 0, -7637.11, -4405.31, 2.45015, 1.71031, 0, 0, 0.754673, 0.656101, 300, 0, 1, 0);


/****************************************************************************************/
/* Le secret de l’oasis 25032 */

UPDATE `creature_template` SET `KillCredit1` = 39159, `faction` = 37, `rank` = 1, `HealthModifier` = 3, `DamageModifier` = 3 WHERE (entry = 38968);
-- Mazoga SAI
SET @ENTRY := 38968;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,0,5,15000,25000,11,11658,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sul'thraze"),
(@ENTRY,0,15,0,9,0,100,0,0,5,10000,55000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames"),
(@ENTRY,0,20,0,0,0,100,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,25,0,2,0,100,1,1,40,5000,5000,11,35205,0,0,0,0,0,1,0,0,0,0,0,0,0,"Disparition");

UPDATE `creature` SET `spawntimesecs` = '0' WHERE `creature`.`guid` = 273297;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE (entry = 39159);
-- Mazoga Credit Stalker SAI
SET @ENTRY := 39159;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,15,0,10,0,100,0,1,10,30000,30000,12,38968,2,30000,1,0,0,8,0,0,0,-7439.67,-2888.04,8.55551,2.7894,"Le secret de l’oasis 25032 "),
(@ENTRY,0,20,0,61,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn");



/****************************************************************************************/
# Des cendres aux cendres  25053 (A2) - 24928(H2)

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000201, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Cabane du nord-ouest", '', 'Q25053 & 24928', '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000202, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Cabane du sud-ouest", '', 'Q25053 & 24928', '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000203, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Cabane du nord-est", '', 'Q25053 & 24928', '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);

--  Cabane du nord-ouest SAI
SET @ENTRY := 15000201;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,72520,0,3000,3000,33,38660,0,0,0,0,0,17,0,10,0,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : credit"),
(@ENTRY,0,15,0,8,0,100,0,72520,0,3000,3000,12,15000065,2,20000,0,0,0,9,15000079,0,20,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : visuel"),
(@ENTRY,0,16,0,8,0,100,0,72520,0,3000,3000,12,38719,2,20000,0,0,0,9,15000157,0,20,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : spawn");

SET @ENTRY := 15000202;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,72520,0,3000,3000,33,38662,0,0,0,0,0,17,0,10,0,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : credit"),
(@ENTRY,0,15,0,8,0,100,0,72520,0,3000,3000,12,15000065,2,20000,0,0,0,9,15000079,0,20,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : visuel"),
(@ENTRY,0,16,0,8,0,100,0,72520,0,3000,3000,12,38719,2,20000,0,0,0,9,15000157,0,20,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : spawn");

SET @ENTRY := 15000203;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,72520,0,3000,3000,33,38665,0,0,0,0,0,17,0,10,0,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : credit"),
(@ENTRY,0,15,0,8,0,100,0,72520,0,3000,3000,12,15000065,2,20000,0,0,0,9,15000079,0,20,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : visuel"),
(@ENTRY,0,16,0,8,0,100,0,72520,0,3000,3000,12,38719,2,20000,0,0,0,9,15000157,0,20,0,0,0,0,"Des cendres aux cendres  25053 (A2) - 24928(H2) : spawn");

UPDATE `creature_template` SET `unit_flags` = 570557186 WHERE (entry = 38719);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38719, 0, 0, 0, 0, 431, '72660');
DELETE FROM `creature` WHERE `creature`.`id` = 38719;
-- Burning Southsea Pirate SAI
SET @ENTRY := 38719;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,1,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn"),
(@ENTRY,0,15,0,1,0,100,0,0,0,4000,4000,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"mouvement aleatoire");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070633, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8072, -5240.42, 13.2324, 3.92068, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070632, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -7979.9, -5335.45, 1.70739, 5.36974, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070631, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -7975.67, -5314.16, 2.05441, 0.55721, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070630, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -7990.24, -5306.79, 0.580428, 3.75378, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070629, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8023.5, -5197.23, 13.3427, 2.19673, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070628, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8022.76, -5207.25, 13.3427, 0.767302, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070627, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8016.11, -5198.43, 5.18652, 3.32574, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070626, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8016.33, -5214.18, 2.41454, 0.140954, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070625, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8028.96, -5218.75, 2.17252, 1.21302, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070624, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8031.78, -5236.04, 0.575166, 3.34734, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070623, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8022.05, -5232.92, 0.749685, 0.225386, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070622, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8072.75, -5220.35, 0.633324, 1.50166, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070621, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8069.39, -5237, 2.85685, 1.89239, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070620, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8083.33, -5240.51, 2.44827, 0.700551, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070619, 15000157, 1, 0, 0, 1, 0, 0, 11686, 0, -8086.93, -5260.17, 0.680727, 5.04773, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070618, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7975.25, -5314.24, 13.4696, 1.5154, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070617, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7979.88, -5325.35, 13.2432, 0.620044, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070616, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7988.24, -5334.81, 10.8287, 4.65503, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070615, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7982.32, -5310.65, 10.9948, 0.665204, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070614, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7972.65, -5332.94, 4.34247, 5.47577, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070613, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7987.03, -5333.87, 4.80184, 2.91341, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070612, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7983.12, -5340.03, 1.79303, 4.24073, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070611, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7975.65, -5340.95, 1.75354, 4.78462, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070610, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7972.51, -5327.64, 1.67575, 6.04911, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070609, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7985.13, -5327.59, 1.58021, 2.89573, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070608, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7970.04, -5321.88, 4.67397, 0.488488, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070607, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7983.12, -5314.41, 2.06714, 2.92715, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070606, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7983.9, -5320.29, 1.87807, 3.02729, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070605, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7976.65, -5306.11, 1.98112, 1.99449, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070604, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -7969.07, -5309.11, 1.98334, 0.851732, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070603, 15000203, 1, 0, 0, 1, 0, 0, 11686, 0, -7979.4, -5332.71, 1.64227, 1.29548, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070602, 15000203, 1, 0, 0, 1, 0, 0, 11686, 0, -7976.12, -5316.93, 2.07087, 1.42312, 300, 3, 0, 80, 0, 2, 0, 33554432, 0, 0),
(21070601, 15000202, 1, 0, 0, 1, 0, 0, 11686, 0, -8072.18, -5237.62, 2.87998, 0.5042, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070600, 15000202, 1, 0, 0, 1, 0, 0, 11686, 0, -8088.45, -5242.02, 2.45349, 0.237165, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070597, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8004.21, -5215.34, 2.53859, 5.7644, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070596, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8020.45, -5208.06, 2.4458, 2.29294, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070595, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8030.16, -5210.78, 2.63017, 2.10641, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070594, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8034.24, -5225.13, 2.38567, 4.38406, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070593, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8035.97, -5216.47, 2.35039, 3.34145, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070592, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8038.13, -5207.77, 26.4652, 4.89457, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070591, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8038.6, -5197.8, 23.4832, 3.62615, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070590, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8019.3, -5191.82, 24.0312, 2.15157, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070589, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8007.58, -5208.13, 23.3783, 6.21601, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070588, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8015.29, -5207.89, 25.2519, 0.354973, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070587, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8021.98, -5210.37, 25.3259, 2.21637, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070586, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8033.13, -5217.86, 23.9597, 3.69684, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070585, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8017.63, -5213.1, 13.9214, 2.39308, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070584, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8007.94, -5203.23, 11.5283, 2.67582, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070583, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8008.36, -5209.48, 14.0438, 0.47867, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070582, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8024.06, -5217.27, 14.1581, 1.07361, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070581, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8032.37, -5226.64, 11.9587, 2.10248, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070580, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8013.16, -5206.37, 6.05695, 1.92184, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070579, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8008.36, -5206.91, 4.40878, 1.45649, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070578, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8013.27, -5221.46, 3.45068, 5.02809, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070577, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8008.78, -5218.95, 2.59387, 4.47242, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070576, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8019.22, -5222.08, 2.26192, 5.34618, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070575, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8025.19, -5224.67, 2.17721, 5.48166, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070574, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8037.12, -5215.72, 2.36983, 2.66797, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070573, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8023.11, -5222.85, 2.13089, 4.8985, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070572, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8012.74, -5208.04, 2.58256, 1.40937, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070571, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8012.28, -5218.05, 2.74408, 4.51365, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070570, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8023.15, -5195.2, 6.18575, 1.53699, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070569, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8021.96, -5202.56, 5.18586, 5.26174, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070568, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8034.66, -5199.8, 8.93948, 1.71567, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070567, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8028.35, -5195.78, 13.3421, 3.41213, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070566, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8027.17, -5206.23, 13.3421, 4.0051, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070565, 15000201, 1, 0, 0, 1, 0, 0, 11686, 0, -8017.33, -5201.56, 13.804, 0.496337, 300, 0, 0, 80, 0, 0, 0, 33554432, 0, 0),
(21070550, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8023.9, -5193.11, 13.3421, 1.70389, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070531, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8016.61, -5190.38, 13.4035, 1.54266, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070530, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8013.95, -5200.51, 14.1173, 0.341002, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070529, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8031.49, -5197.64, 13.342, 1.92751, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070528, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8031.44, -5210.29, 13.3406, 1.40718, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070527, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8036.98, -5199.05, 8.89971, 2.42231, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070526, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8033.08, -5202.41, 7.44361, 2.30647, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070525, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8017.69, -5194.69, 6.17997, 2.48907, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070524, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8021.98, -5193.9, 5.91055, 0.556993, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070523, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8026.25, -5197.85, 6.18852, 1.80578, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070522, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8024.75, -5204.69, 5.18669, 4.6175, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070521, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8018.68, -5202.38, 5.18676, 5.68172, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070652, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8088.68, -5239.05, 2.44282, 2.87805, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070651, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8081.39, -5242.1, 2.50367, 3.73807, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070650, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8072.1, -5236.05, 2.87562, 3.57903, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070649, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8064.7, -5232.45, 2.81354, 1.73138, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070648, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8064.28, -5235.83, 2.80424, 0.133091, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070647, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8077.96, -5245.69, 3.25856, 4.9574, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070646, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8068.86, -5243.6, 2.86093, 3.98154, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070645, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8062.99, -5238.23, 2.79335, 5.80563, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070644, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8064.97, -5231.71, 2.81837, 0.394236, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070643, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8074.1, -5231, 2.87894, 1.05593, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070642, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8077.28, -5229.74, 3.39081, 0.928307, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070641, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8084.39, -5233.23, 2.80718, 0.826204, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070640, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8091.94, -5235.7, 3.11365, 1.29548, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070639, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8096.6, -5235.95, 3.37462, 2.63262, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070638, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8097.08, -5242.66, 2.63119, 3.19222, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070637, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8095.76, -5246.25, 2.6198, 3.42194, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070636, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -8085.04, -5248.68, 2.62791, 5.05164, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0);
 
/****************************************************************************************/
/* Mon œil ! 24931 */
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(5420, 51793, 0, 80, 1, 1, 0, 1, 1, NULL);

/****************************************************************************************/
/*  Quelques bons gobelins 25072 */
UPDATE `creature_template` SET `faction` = 310, `speed_walk` = 0.001, `speed_run` = 0.001, `unit_flags` = 131076 WHERE (entry = 39081);

-- Captured Goblin Bughunter SAI
SET @ENTRY := 39082;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"On spawn - despawn 2 sec after"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,46,20,0,0,0,0,0,1,0,0,0,0,0,0,0,"On spawn - davance");

/****************************************************************************************/
/* Une idée géniale 24951 */
UPDATE `creature_template` SET `unit_flags` = 131074 WHERE (entry = 38718);
UPDATE `creature_template` SET `flags_extra` = 128 WHERE (entry = 38742);
-- Hazzali Swarmer SAI
SET @ENTRY := 5451;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,10722,2,0,0,0,0,1,0,0,0,0,0,0,0,"Essaim de silithides"),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,25000,27000,11,81224,0,0,0,0,0,2,0,0,0,0,0,0,0,"Toxine de silithide"),
(@ENTRY,0,10,0,0,0,50,0,0,0,5000,8000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine"),
(@ENTRY,0,15,0,75,0,100,0,0,38718,10,3000,18,16908290,0,0,0,0,0,1,0,0,0,0,0,0,0,"Une idée géniale 72659 : passif"),
(@ENTRY,0,20,0,75,0,100,0,0,38718,10,3000,29,3,0,0,0,0,0,17,0,10,0,0,0,0,0,"Une idée géniale 72659 : suivre"),
(@ENTRY,0,30,0,75,0,100,0,0,38742,5,3000,33,38742,0,0,0,0,0,17,0,5,0,0,0,0,0,"Une idée géniale 72659 : credit"),
(@ENTRY,0,35,0,75,0,100,0,0,38742,5,3000,41,1000,0,0,0,0,0,1,0,5,0,0,0,0,0,"Une idée géniale 72659 : despawn");

-- Silithid Bait SAI
SET @ENTRY := 38718;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,41,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn"),
(@ENTRY,0,1,0,11,0,100,1,0,0,0,0,29,1,0,0,0,0,0,17,0,10,0,0,0,0,0,"suivre");

/****************************************************************************************/
/* La petite bête qui descend, qui descend… 24953    .cast 72736 - mob 38748 */

#--- Grouillant contrôlé
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(38748, 0, 0, 0, 0, 0, 11093, 0, 0, 0, 'Mind-Controlled Swarmer', '', '', '', 0, 47, 48, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1.25, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);

-- Mind-Controlled Swarmer SAI
SET @ENTRY := 38748;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,41,900000,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn"),
(@ENTRY,0,15,0,75,0,100,0,0,38706,5,3000,37,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si Zeke"),
(@ENTRY,0,20,25,75,0,100,0,0,15000161,10,10000,33,38996,0,0,0,0,0,23,0,0,0,0,0,0,0,"La petite bête qui descend, qui descend… 24953 : credit"),
(@ENTRY,0,25,35,61,0,100,0,0,0,0,0,11,60860,0,0,0,0,0,9,37522,0,50,0,0,0,0,"La petite bête qui descend, qui descend… 24953 : explosion"),
(@ENTRY,0,35,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,50,0,0,0,0,"La petite bête qui descend, qui descend… 24953 : despawn");

#--- 
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(6646, 0, 0, "Il y a le gobelin la bas qui me dit que vous pouvez m'aider a controler mentalement le grouillant ?", 0, 1, 3, 0, 0, 0, 0, '', 0);
-- Narain Soothfancy SAI
SET @ENTRY := 11811;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,50,0,62,0,100,0,6646,0,0,0,86,72736,0,7,0,0,0,1,0,0,0,0,0,0,0,"La petite bête qui descend, qui descend… 24953 : invoc grouillant controlé"),
(@ENTRY,0,55,0,62,0,100,0,6646,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"La petite bête qui descend, qui descend… 24953 : fermer gossip");
#--- 
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070663, 15000161, 1, 0, 0, 1, 0, 0, 11686, 0, -9238.17, -4004.68, -33.99, 1.3237, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21070681, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9229.93, -3971.53, -42.7806, 1.4478, 300, 5, 0, 7800, 0, 1, 0, 0, 0, 0),
(21070680, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9232.76, -3989.86, -38.2258, 4.98405, 300, 5, 0, 7800, 0, 1, 0, 0, 0, 0),
(21070679, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9225.58, -3984.59, -37.5513, 5.46904, 300, 5, 0, 7800, 0, 1, 0, 0, 0, 0),
(21070678, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9248.96, -4019.23, -41.1342, 0.809658, 300, 5, 0, 7332, 0, 1, 0, 0, 0, 0),
(21070677, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9239.85, -4003.75, -33.9988, 5.05081, 300, 0, 0, 7332, 0, 0, 0, 0, 0, 0),
(21070676, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9234.79, -4005.48, -34.3401, 3.41521, 300, 0, 0, 7332, 0, 0, 0, 0, 0, 0),
(21070675, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9218.75, -4015.02, -39.2655, 5.14309, 300, 5, 0, 7332, 0, 1, 0, 0, 0, 0),
(21070674, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9230.17, -4020.18, -40.9073, 5.44546, 300, 5, 0, 7800, 0, 1, 0, 0, 0, 0),
(21070673, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9264.3, -4019.84, -38.4909, 5.5888, 300, 5, 0, 7800, 0, 1, 0, 0, 0, 0),
(21070672, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9259.8, -4008.61, -39.0225, 0.000692368, 300, 5, 0, 7332, 0, 1, 0, 0, 0, 0),
(21070671, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9271.31, -3989.68, -35.0581, 4.78181, 300, 5, 0, 7332, 0, 1, 0, 0, 0, 0),
(21070670, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9252.15, -3990.91, -37.8891, 3.80399, 300, 10, 0, 7800, 0, 1, 0, 0, 0, 0),
(21070669, 5452, 1, 0, 0, 1, 0, 0, 0, 0, -9235.69, -3987.89, -38.0561, 6.09539, 300, 10, 0, 7800, 0, 1, 0, 0, 0, 0);

/****************************************************************************************/
/* Le secret du coffre 25070 */

UPDATE `creature_template` SET `faction` = 103, `HealthModifier` = 3, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 39077);
-- Antechamber Guardian SAI
SET @ENTRY := 39077;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,5000,5000,11,80380,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de sable 0-5 m"),
(@ENTRY,0,1,0,9,0,100,0,0,25,22000,23000,11,73864,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piège de sable 0-25 m"),
(@ENTRY,0,2,0,2,0,100,0,1,50,18000,18000,11,83567,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sables étincelants"),
(@ENTRY,0,10,0,9,0,100,0,0,10,15000,15000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");

-- Antediluvean Chest SAI
SET @ENTRY := 202474;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,10,0,19,0,100,0,0,0,0,0,12,39077,2,180000,0,0,0,8,0,0,0,-9775.812500,-2789.631348,9.622049,3.1473,"le secret du coffre 25070 : spawn Gardien de l'antichambre");

/****************************************************************************************/
/* Valoir son pesant d’ogres 24955 (H2)  */
UPDATE `quest_template_locale` SET `LogDescription` = 'Obtenir 5 Signatures de charte des Ogres cognedune.' WHERE `quest_template_locale`.`ID` = 24955 AND `quest_template_locale`.`locale` = 'frFR';
DELETE FROM `quest_objectives` WHERE (QuestID = 24955) AND (ID IN (266669));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (266669, 24955, 0, 0, 38848, 5, 0, 0, '"Signatures" Obtained', 20444);
UPDATE `creature_template` SET `gossip_menu_id` = 65063,`npcflag` = `npcflag`|1 WHERE (entry = 5471);
UPDATE `creature_template` SET `gossip_menu_id` = 65063,`npcflag` = `npcflag`|1 WHERE (entry = 5472);
UPDATE `creature_template` SET `gossip_menu_id` = 65063,`npcflag` = `npcflag`|1 WHERE (entry = 5473);
UPDATE `creature_template` SET `gossip_menu_id` = 65063,`npcflag` = `npcflag`|1 WHERE (entry = 5474);
UPDATE `creature_template` SET `gossip_menu_id` = 65063,`npcflag` = `npcflag`|1 WHERE (entry = 5475);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(65063, 0, 0, "Pouvez vous signer ma charte SVP monsieur le gentil orge ?", 0, 1, 1, 0, 0, 0, 0, '', 0);


/****************************************************************************************/
/* Le dôme du Tonnerre : l’Immenstrueux ! 25067*/
UPDATE `quest_template` SET `RewardNextQuest` = 25094 WHERE (ID = 25067);
UPDATE `quest_template_addon` SET `NextQuestID` = 25094 WHERE (ID = 25067);
DELETE FROM `quest_objectives` WHERE (QuestID = 25067);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500005, 25067, 0, 0, 39075, 1, 0, 0, '', 0);

UPDATE `creature_template` SET `ArmorModifier` = 1, `DamageModifier` = 3.5, `mechanic_immune_mask` = 65553 WHERE (entry = 39075);
-- The Ginormus SAI
SET @ENTRY := 39075;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,73854,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invocation des chiens de guerre  39374"),
(@ENTRY,0,15,0,13,0,100,0,15000,25000,0,0,11,73855,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pile-crâne"),
(@ENTRY,0,20,0,0,0,100,0,0,0,6000,12000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre ");

-- Warhound SAI
SET @ENTRY := 39374;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agressif"),
(@ENTRY,0,15,0,11,0,100,0,0,0,0,0,41,30000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");


/****************************************************************************************/
/* Le dôme du Tonnerre : Zumonga !  25094 */
UPDATE `quest_template` SET `RewardNextQuest` = 25095 WHERE (ID = 25094);
UPDATE `quest_template_addon` SET `NextQuestID` = 25095 WHERE (ID = 25094);
UPDATE `quest_template_addon` SET `PrevQuestID` = 25067 WHERE (ID = 25094);
DELETE FROM `quest_objectives` WHERE (QuestID = 25094);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500006, 25094, 0, 0, 39148, 1, 0, 0, '', 0);

UPDATE `creature_template` SET `faction` = 103, `DamageModifier` = 3 WHERE (entry = 39148);
-- Zumonga SAI
SET @ENTRY := 39148;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante (bond)"),
(@ENTRY,0,15,0,0,0,100,0,0,0,8000,12000,11,73859,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de tête"),
(@ENTRY,0,1,0,2,0,100,0,1,40,30000,45000,11,73859,0,0,0,0,0,2,0,0,0,0,0,0,0,"Goût du sang");

/****************************************************************************************/
/* Le dôme du Tonnerre : Sarinexx ! 25095 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 25094 WHERE (ID = 25095);
UPDATE `quest_template` SET `RewardNextQuest` = 25095 WHERE (ID = 25095);
UPDATE `quest_template_addon` SET `NextQuestID` = 25095 WHERE (ID = 25095);
DELETE FROM `quest_objectives` WHERE (QuestID = 25095);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500007, 25095, 0, 0, 39149, 1, 0, 0, '', 0);

UPDATE `creature_template` SET `faction` = 103, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 39149);
-- Sarinexx SAI
SET @ENTRY := 39149;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,223971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ruée du chasseur"),
(@ENTRY,0,15,0,0,0,100,0,0,0,10000,15000,11,83730,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piège de sable"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3000,5000,11,73863,0,0,0,0,0,2,0,0,0,0,0,0,0,"Balafre");

/****************************************************************************************/
/* Le dôme du Tonnerre : le règlement de comptes ! 25591 (H2) - 25513 (A2) */
UPDATE `quest_template_addon` SET `PrevQuestID` = 25095 WHERE (ID = 25591);
UPDATE `quest_template_addon` SET `PrevQuestID` = 25095 WHERE (ID = 25513);

DELETE FROM `quest_objectives` WHERE (QuestID = 25591);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500008, 25591, 0, 0, 15000204, 1, 0, 0, "Kelsey Étinçacier vaincue", 0);

DELETE FROM `quest_objectives` WHERE (QuestID = 25513);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500009, 25513, 0, 0, 15000205, 1, 0, 0, "Megs Déchiqueffroi vaincue", 0);

-- Dr. Dealwell SAI
SET @ENTRY := 39034;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,19,0,100,0,25067,0,0,0,12,39075,2,60000,0,0,0,8,0,0,0,-7144.752441,-3784.265137,8.429897,6.0201,"Le dôme du Tonnerre : l’Immenstrueux ! 25067 : spawn adversaire"),
(@ENTRY,0,15,0,19,0,100,0,25094,0,0,0,12,39148,2,60000,0,0,0,8,0,0,0,-7144.752441,-3784.265137,8.429897,6.0201,"Le dôme du Tonnerre : Zumonga !  25094  : spawn adversaire"),
(@ENTRY,0,20,0,19,0,100,0,25095,0,0,0,12,39148,2,60000,0,0,0,8,0,0,0,-7144.752441,-3784.265137,8.429897,6.0201,"Le dôme du Tonnerre : Sarinexx ! 25095   : spawn adversaire"),
(@ENTRY,0,25,0,19,0,100,0,25591,0,0,0,12,15000204,2,60000,0,0,0,8,0,0,0,-7144.752441,-3784.265137,8.429897,6.0201,"Le dôme du Tonnerre : le règlement de comptes ! 25591 (H2)   : spawn adversaire"),
(@ENTRY,0,300,0,19,0,100,0,25513,0,0,0,12,15000205,2,60000,0,0,0,8,0,0,0,-7144.752441,-3784.265137,8.429897,6.0201,"Le dôme du Tonnerre : le règlement de comptes ! 25513 (A2)   : spawn adversaire");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000204, 0, 0, 0, 0, 0, 31159, 0, 0, 0, 'Kelsey Steelspark', '', 'Opérations spéciales de Gnomeregan', '', 0, 50, 50, 5, 0, 103, 0, 1, 1.1428600549698, 1, 0, 0, 0, 0, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 1.5, 3, 1, 0, 0, 1, 0, 0, '', 22566);
-- Kelsey Steelspark SAI
SET @ENTRY := 15000204;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,2,0,100,1,1,40,3000,3000,11,213877,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aura vampirique"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,9,0,100,0,0,10,15000,20000,11,128044,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eventail de couteaux"),
(@ENTRY,0,25,0,0,0,100,0,3000,3000,10000,12000,11,183934,0,0,0,0,0,1,0,0,0,0,0,0,0,"Déluge de lames");
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(15000204, 1, 34282, 34282, 0, 18019);

REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000205, 0, 0, 0, 0, 0, 29472, 0, 0, 0, 'Megs Dreadshredder', '', 'Cartel Baille-Fonds', '', 11176, 50, 50, 0, 0, 103, 3, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 1, 1, 1.5, 3, 1, 0, 0, 1, 0, 0, '', 20173);
SET @ENTRY := 15000205;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,2,0,100,1,1,40,3000,3000,11,213877,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aura vampirique"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,9,0,100,0,0,10,15000,20000,11,128044,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eventail de couteaux"),
(@ENTRY,0,25,0,0,0,100,0,3000,3000,10000,12000,11,183934,0,0,0,0,0,1,0,0,0,0,0,0,0,"Déluge de lames");
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(15000205, 1, 34282, 34282, 0, 18019);


/****************************************************************************************/





