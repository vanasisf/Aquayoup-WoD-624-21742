/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.0			les Serres-Rocheuses -AI & Quetes  & cosmetiques																 		 			    */
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 
/****************************************************************************************/
/* 				Divers 					*/
/****************************************************************************************/
DELETE FROM `creature` WHERE `creature`.`guid` = 5457922; # retrait portail palum Theramore
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071268, 1100001, 0, 0, 0, 1, 0, 0, 0, 0, -3855.37, -647.995, 4.38365, 2.06199, 300, 0, 0, 159740, 0, 0, 0, 0, 0, 0); # Portail Palum vers Cabestan pour liaison avec serre rocheuse
DELETE FROM `creature` WHERE `creature`.`guid` = 21070087; # Supression portail Cabestan pour tanaris
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071278, 1100015, 1, 0, 0, 1, 0, 0, 0, 0, -988.194, -3823.52, 5.72278, 1.03767, 300, 0, 0, 159740, 0, 0, 0, 0, 0, 0); # portail Cabestan->Palum

# ------------------------------------ Dirigeables Cabestan ------------------------------------ 

#------ Elglib Balon 15000211 - gossip 65064  
UPDATE `creature_template` SET `subname` = 'Dirigeable de l\'Alliance', `npcflag` = 3 WHERE (entry = 15000211);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('15000211', '28539'); # L'appel du héros : les Serres-Rocheuses !
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('15000211', '28551'); # L’appel du héros : les Tarides du Sud !
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(65064, 0, 0, 'Aller a Theramore', 0, 1, 1, 0, 0, 0, 0, '', 0),
(65064, 1, 0, 'Aller aux Serres-Rocheuses', 0, 1, 1, 0, 0, 0, 0, '', 0), # .go 1922.47 -323.184 118.33 1
(65064, 2, 0, 'Aller a Fort de Guet-du-Nord', 0, 1, 1, 0, 0, 0, 0, '', 0);
-- Elglib Balon SAI
SET @ENTRY := 15000211;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,65064,0,0,0,12,15000212,2,600000,0,0,0,8,0,0,0,-894.727,-3766.03,11.8618,2.9496,"Cabestan vers Theramore "),
(@ENTRY,0,15,0,62,0,100,0,65064,1,0,0,12,15000214,2,600000,0,0,0,8,0,0,0,-894.727,-3766.03,11.8618,2.9496,"Cabestan vers les Serres-Rocheuses"),# wp 11043806
(@ENTRY,0,20,0,62,0,100,0,65064,2,0,0,12,15000215,2,600000,0,0,0,8,0,0,0,-894.727,-3766.03,11.8618,2.9496,"Cabestan vers Fort de Guet-du-Nord");# wp 11043807

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000214, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour les Serres-Rocheuses', 'vehichleCursor', 0, 45, 45, 0, 0, 11, 50331648, 3, 3, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2048, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
SET @ENTRY := 15000214;
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
-- Dirigeable SAI
SET @ENTRY := 15000214;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043806,0,0,0,0,1,0,0,0,0,0,0,0,"Demarre WP si passager"),
(@ENTRY,0,15,0,40,0,100,0,21,11043806,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Despawn forcé en fin de wp"),
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000215, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour Fort de Guet-du-Nord', 'vehichleCursor', 0, 45, 45, 0, 0, 11, 50331648, 2, 2, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2048, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
SET @ENTRY := 15000215;
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
-- Dirigeable SAI
SET @ENTRY := 15000215;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043807,0,0,0,0,1,0,0,0,0,0,0,0,"Demarre WP si passager"),
(@ENTRY,0,15,0,40,0,100,0,15,11043807,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Despawn forcé en fin de wp"),
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager");

DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043806 OR `waypoints`.`entry` = 11043807; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043806, 1, -895.214, -3762.47, 20.2426, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 2, -895.214, -3762.47, 42.4186, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 3, -919.594, -3676.28, 75.2906, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 4, -945.496, -3462.44, 127.146, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 5, -908.721, -3381.1, 154.212, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 6, -811.991, -3290.57, 174.062, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 7, -632.396, -3150.35, 205.914, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 8, -379.021, -2899.75, 223.983, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 9, -18.8484, -2490.02, 237.431, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 10, 91.0988, -2014.06, 193.232, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 11, 186.581, -1817.76, 197.041, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 12, 383.952, -1476.14, 233.922, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 13, 673.273, -1128.64, 346.301, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 14, 810.019, -927.95, 333.149, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 15, 1011.99, -650.164, 234.006, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 16, 1112.9, -594.758, 215.835, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 17, 1458.96, -475.358, 269.599, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 18, 1658.75, -433.128, 246.866, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 19, 1853.69, -388.511, 212.045, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 20, 1911.87, -371.533, 191.589, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043806, 21, 1917.63, -342.907, 118.209, "Dirigeable  Cabestan vers les Serres-Rocheuses"),
(11043807, 1, -893.458, -3762.1, 24.4551, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 2, -912.493, -3761.67, 31.7749, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 3, -963.384, -3753.58, 44.8301, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 4, -1019.77, -3713.31, 85.6297, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 5, -1165.37, -3717.85, 140.356, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 6, -1356.19, -3735.47, 156.368, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 7, -1510.27, -3714.37, 161.555, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 8, -1697.58, -3730.82, 125.086, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 9, -1853.59, -3811.24, 93.7124, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 10, -2043.68, -3937.57, 67.5654, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 11, -2150.04, -3984.7, 54.4912, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 12, -2224.07, -3984.74, 40.8758, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 13, -2253.9, -3963.66, 29.0542, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 14, -2268.93, -3933.94, 22.0659, "Dirigeable  Cabestan vers Fort de Guet-du-Nord"),
(11043807, 15, -2268.93, -3933.94, 7.59946, "Dirigeable  Cabestan vers Fort de Guet-du-Nord");

# ------------------------------------------------------------------------ 
#  Excavation de Bael Modan
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(298581, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4080.89, -2139.58, 50.1836, 4.76201, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298561, 3374, 1, 0, 0, 1, 0, 0, 0, 1, -4124.69, -2215.22, 50.1832, 2.68511, 5, 0, 0, 2336, 0, 0, 0, 0, 0, 0),
(298563, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4137.48, -2149.88, 50.5815, 2.6529, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298568, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4110.14, -2209.2, 50.4812, 1.06326, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298569, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4112.49, -2195.32, 50.8111, 2.30729, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298572, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4091.97, -2179.45, 50.3219, 5.49684, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298573, 3374, 1, 0, 0, 1, 0, 0, 0, 1, -4105.22, -2128.07, 53.3243, 2.37489, 5, 0, 0, 2336, 0, 0, 0, 0, 0, 0),
(298574, 3374, 1, 0, 0, 1, 0, 0, 0, 1, -4099.11, -2164.81, 50.8419, 4.78409, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298579, 3374, 1, 0, 0, 1, 0, 0, 0, 1, -4098.28, -2198.45, 52.4586, 0.766774, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298559, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4156.29, -2184.65, 50.3203, 0.749117, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298558, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4157.87, -2202.18, 50.1832, 0.285738, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298539, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4196.56, -2214.88, 54.3283, 5.785, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298535, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4186.31, -2261.29, 50.4357, 3.9295, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298536, 3374, 1, 0, 0, 1, 0, 0, 0, 1, -4205.86, -2253.67, 50.5719, 3.48968, 5, 0, 0, 2178, 0, 0, 0, 0, 0, 0),
(298554, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4166.47, -2183.08, 51.0741, 0.8605, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298547, 3374, 1, 4709, 4946, 1, 0, 0, 0, 1, -4131.95, -2235.15, 50.9685, 2.05875, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298580, 3375, 1, 0, 0, 1, 0, 0, 0, 1, -4081.39, -2164.72, 50.4269, 1.53256, 5, 5, 0, 4580, 0, 2, 0, 0, 2, 0),
(298537, 3375, 1, 4709, 4946, 1, 0, 0, 0, 1, -4193.77, -2240.65, 50.3439, 2.852, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298557, 3375, 1, 4709, 4946, 1, 0, 0, 0, 1, -4171.57, -2196.36, 50.1843, 3.06017, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298555, 3375, 1, 4709, 4946, 1, 0, 0, 0, 1, -4163.83, -2184.33, 50.8926, 0.427951, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298562, 3375, 1, 0, 0, 1, 0, 0, 0, 1, -4130.82, -2199.48, 50.1817, 5.78889, 5, 10, 0, 4732, 0, 2, 0, 0, 0, 0),
(298556, 3375, 1, 4709, 4946, 1, 0, 0, 0, 1, -4150.13, -2224.07, 50.333, 5.09777, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298527, 3375, 1, 4709, 4946, 1, 0, 0, 0, 1, -4181.79, -2248.39, 50.2686, 0.96901, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(298532, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4208.34, -2254.41, 50.7911, 0.503659, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21118023, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4108.72, -2206.92, 50.6562, 4.0733, 300, 0, 0, 4732, 0, 0, 0, 0, 0, 0),
(21118022, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4132.47, -2233.28, 51.2108, 4.76641, 300, 0, 0, 4732, 0, 0, 0, 0, 0, 0),
(21118021, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4180.2, -2246.53, 50.3387, 4.03599, 300, 0, 0, 4580, 0, 0, 0, 0, 0, 0),
(298578, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4081.22, -2161.47, 50.2675, 4.87199, 5, 10, 0, 4732, 0, 2, 0, 0, 0, 0),
(298577, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4080.86, -2142.19, 50.1833, 1.45597, 5, 0, 0, 4580, 0, 0, 0, 0, 0, 0),
(298576, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4090.87, -2180.99, 50.1831, 2.28065, 5, 10, 0, 4580, 0, 2, 0, 0, 0, 0),
(298571, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4099.06, -2168.02, 50.6045, 3.93736, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298570, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4107.57, -2125.76, 54.3298, 5.00597, 5, 10, 0, 4580, 0, 2, 0, 0, 0, 0),
(298567, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4127.97, -2201.58, 50.1839, 2.51823, 5, 0, 0, 4732, 0, 0, 0, 32768, 0, 0),
(298564, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4114.29, -2192.74, 50.3953, 5.30637, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298560, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4127.17, -2213.85, 50.3081, 6.1608, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298552, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4153.57, -2182.13, 50.3116, 3.75916, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298550, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4154.62, -2201.23, 50.1832, 3.55299, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298549, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4162.85, -2178.87, 51.0244, 4.53367, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298548, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4149.17, -2227.87, 50.3827, 1.80546, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298543, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4174.5, -2196.83, 50.3081, 0.0813198, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298533, 39153, 1, 4709, 4946, 1, 0, 0, 0, 1, -4197.74, -2239.34, 50.9745, 5.40016, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21118024, 39153, 1, 0, 0, 1, 0, 0, 0, 1, -4096.51, -2196.71, 52.2207, 3.89266, 300, 0, 0, 4732, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('37487', '0', '0', "Merci l'ami , sans toi j'étais cuit !", '12', '0', '0', '1', '500', '0', '0', '0', ''),
('37487', '0', '1', "Sauvé ... vous m'avez sauvé , merci !", '12', '0', '0', '1', '500', '0', '0', '0', ''),
('37487', '0', '2', "Sans vous cette ... chose ... m'aurait dévoré tout cru !", '12', '0', '0', '1', '500', '0', '0', '0', ''),
('37487', '0', '3', "Pour moi c'est fini le jardinage ... je peux vous le jurer !!!!", '12', '0', '0', '1', '500', '0', '0', '0', ''),
('37487', '1', '0', "Merci l'ami , sans toi je ne m'en serais pas sortie vivant !", '12', '0', '0', '1', '500', '0', '0', '0', ''),
('37487', '1', '1', "Sauvé ... vous m'avez sauvé , merci !", '12', '0', '0', '1', '500', '0', '0', '0', ''),
('37487', '1', '2', "Sans vous ces Hurans m'auraient dévoré tout cru !", '12', '0', '0', '1', '500', '0', '0', '0', ''),
('37487', '1', '3', "Je commençais a me sentir un peu a l'etroit , merci !", '12', '0', '0', '1', '500', '0', '0', '0', '');

UPDATE `locales_gossip_menu_option` SET `option_text_loc2` = 'Les réfugiés de Taurajo sont en sécurité ? ... Enfin , ceux qui sont encore en vie !' WHERE `locales_gossip_menu_option`.`menu_id` = 10936 AND `locales_gossip_menu_option`.`id` = 0;

-- Bristleback Cage SAI
SET @ENTRY := 201724;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,10,15,70,0,100,0,2,0,0,0,1,1,0,0,0,0,0,9,37487,0,3,0,0,0,0,"De mal en pis : fait parler refugier"),
(@ENTRY,1,15,0,61,0,100,0,2,0,0,0,41,3000,0,0,0,0,0,9,37487,0,3,0,0,0,0,"De mal en pis : fait parler refugier");

UPDATE `creature_template` SET `IconName` = 'inspect' WHERE `IconName` = 'Interact';

/****************************************************************************************/
/* 				AI & Mobs                                                                                                   				*/
/****************************************************************************************/


REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48096, 0, 0, 0, 1, 233, NULL); # Tape avec masse
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (1322, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44279, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39129, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49944, 0, 0, 0, 0, 0, '97014'); # Pecher
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49920, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38875, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49921 , 0, 0, 0, 0, 0, 79506); # Parler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (2920, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39006, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44304, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44280, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38627, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (41162, 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (76103, 0, 0, 8, 1, 0, NULL); # agenouillé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50541, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50530, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44348, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39322, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38620, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39212, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38033, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44283, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38697, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38805, 0, 0, 8, 1, 0, 104015); # agenouillé/Stun
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (37910, 0, 0, 0, 0, 0, 101090); # State - Dance

REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (299902, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (299903, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (299904, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (299894, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (299895, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (299896, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (298648, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (298651, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (298653, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (298652, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`GUID`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (298649, 0, 0, 1, 1, 0, ''); # Assis par terre



UPDATE `creature_template` SET `npcflag` = 65665 WHERE (entry = 7714);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(296941, 44283, 1, 4709, 4847, 1, 0, 0, 0, 0, -2181.94, -3640.69, 92.0135, 2.36848, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118286, 44402, 47, 0, 0, 2, 0, 0, 0, 1, 1942.62, 1563.34, 82.2969, 1.16305, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 34346;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 33296;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 38055;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 37931;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 66428;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 39308;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 38119;


UPDATE `creature` SET `spawntimesecs` = '5' WHERE `creature`.`id` = 39153;
UPDATE `creature` SET `spawntimesecs` = '5' WHERE `creature`.`id` = 3375  ;
UPDATE `creature` SET `spawntimesecs` = '5' WHERE `creature`.`id` = 3374;

UPDATE `creature` SET `spawndist` = 15, `MovementType` = '1' WHERE `creature`.`id` = 37738;  

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117978, 3705, 1, 0, 0, 1, 0, 0, 0, 1, -2092.34, -1742.74, 96.878, 1.993, 300, 0, 0, 1608, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `minlevel` = 50, `maxlevel` = 50, `faction` = 11 WHERE (entry = 513485);
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45,`HealthModifier` = 2 WHERE (entry = 39211);
UPDATE `creature_template` SET `minlevel` = 45, `maxlevel` = 45 WHERE (entry = 39330);


UPDATE `creature_template` SET `HealthModifier` = 3.5, `DamageModifier` = 2.4 WHERE (entry = 5851);

UPDATE `creature_template` SET `scale` = 1.25, `rank` = 1, `HealthModifier` = 4, `DamageModifier` = 3 WHERE (entry = 3257);

UPDATE `creature_template` SET `HealthModifier` = 3, `DamageModifier` = 2.5 WHERE (entry = 5848);

SET @ENTRY := 39153;
UPDATE `creature_template` SET `unit_flags` = `unit_flags`|512 WHERE (entry = @ENTRY);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,22120,0,0,0,0,0,2,0,0,0,0,0,0,0,"Excavation Raider - On Aggro - Cast 'Charge' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,3000,4000,120000,125000,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Excavation Raider - In Combat - Cast 'Battle Shout'"),
(@ENTRY,0,15,21,75,0,100,0,0,3375,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,20,21,75,0,100,0,0,3374,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,90,0,10,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");

SET @ENTRY := 3374;
UPDATE `creature_template` SET `unit_flags` = `unit_flags`|512 WHERE (entry = @ENTRY);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,12000,14000,11,57846,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bael'dun Excavator - In Combat - Cast 'Heroic Strike'"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,22000,26000,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bael'dun Excavator - In Combat - Cast 'Sunder Armor'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bael'dun Excavator - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,20,21,75,0,100,0,0,39153,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,90,0,10,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");

SET @ENTRY := 3375;
UPDATE `creature_template` SET `unit_flags` = `unit_flags`|512 WHERE (entry = @ENTRY);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,1,0,0,0,100,0,0,0,15000,15000,11,6257,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer de torche"),
(@ENTRY,0,2,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bael'dun Foreman - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,2,0,50,1,0,15,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,20,21,75,0,100,0,0,39153,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,90,0,10,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");

SET @ENTRY := 39083   ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 39094   ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");


SET @ENTRY := 38800   ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

-- Northwatch Defender SAI
SET @ENTRY := 38624;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,15000,20000,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant"),
(@ENTRY,0,1,0,2,0,100,0,0,30,18000,21000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maîtrise du blocage 0-30% Health "),
(@ENTRY,0,20,21,75,0,100,0,0,38658,4,2000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,0,0,100,0,0,0,3500,4500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,90,0,10,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");

-- Rageroar Grunt SAI
SET @ENTRY := 38658;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,13,0,100,0,10000,20000,0,0,11,35178,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de bouclier"),
(@ENTRY,0,1,0,2,0,50,1,0,30,2000,2000,11,82836,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fureur sanguinaire 0-30% Health"),
(@ENTRY,0,20,21,75,0,100,0,0,38624,4,2000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,0,0,100,0,0,0,3500,4500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,90,0,10,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");

-- Rageroar Sea Dog SAI
SET @ENTRY := 38661;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,21,75,0,100,0,0,38664,4,2000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

-- Blackpool Crewman SAI
SET @ENTRY := 38664;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,21,75,0,100,0,0,38661,4,2000,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

SET @ENTRY := 38622;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,50,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `rank` = 1, `HealthModifier` = 5, `DamageModifier` = 5 WHERE (entry = 3476);
-- Isha Awak SAI
SET @ENTRY := 3476;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,-1,0,9,0,100,0,0,10,6000,6000,11,69203,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure vicieuse");

-- Rageroar Lieutenant SAI
SET @ENTRY := 38659;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,1,2,2,0,75,1,0,30,2000,2000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-30% Health"),
(@ENTRY,0,2,0,61,0,50,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rageroar Lieutenant - Between 0-30% Health - Say Line 0 (No Repeat)"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,22,9,0,100,0,8,40,2500,3000,11,42332,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer une arme"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement OFF"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Auto Attack"),
(@ENTRY,0,30,32,9,0,100,0,0,8,3000,3500,11,6603,64,0,0,0,0,1,0,0,0,0,0,0,0,"0m - 8m : Attaque auto"),
(@ENTRY,0,32,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement ON");

SET @ENTRY := 38826;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement visible"),
(@ENTRY,0,12,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,4,0,100,0,5,30,3000,3500,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agro -  Movement OFF"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,11,184,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Bouclier de feu"),
(@ENTRY,0,30,31,9,0,100,0,35,100,3000,3500,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"35m - 100m : Evade"),
(@ENTRY,0,31,0,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : Movement ON"),
(@ENTRY,0,40,0,0,0,100,0,1000,1000,3000,4000,11,20793,0,0,0,0,0,2,0,0,0,0,0,0,0,"Combat - Boule de feu");

UPDATE `creature_template` SET `unit_flags` = 0, `ManaModifier` = 5 WHERE (entry = 38826);
-- Hexmaster Bastoon SAI
SET @ENTRY := 38826;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement visible"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : Movement ON"),
(@ENTRY,0,12,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,4,0,100,0,5,30,3000,3500,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agro -  Movement OFF"),
(@ENTRY,0,21,22,61,0,100,0,0,0,0,0,11,11639,2,0,0,0,0,1,0,0,0,0,0,0,0,"     Mot de l’ombre : Douleur"),
(@ENTRY,0,30,31,9,0,100,0,35,100,3000,3500,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"35m - 100m : Evade"),
(@ENTRY,0,31,0,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,40,0,0,0,100,0,1000,1000,3000,4000,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de l'ombre"),
(@ENTRY,0,22,0,61,0,50,0,0,0,0,0,11,12493,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Malédiction de faiblesse"),
(@ENTRY,0,45,0,2,0,100,0,1,40,15000,15000,11,72975,0,0,0,0,0,1,0,0,0,0,0,0,0,"Barrière de l'ombre"),
(@ENTRY,0,50,0,13,0,100,0,15000,15000,0,0,11,8988,34,0,0,0,0,1,0,0,0,0,0,0,0,"Silence");

UPDATE `creature_template` SET `scale` = 1.25, `unit_flags` = 0, `HealthModifier` = 3, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 38663);
-- Karga Rageroar SAI
SET @ENTRY := 38663;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,58743,0,0,0,0,0,2,0,0,0,0,0,0,0,"Interception"),
(@ENTRY,0,1,0,0,0,100,0,2000,4500,4000,6000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,2,0,9,0,100,0,0,10,24000,25000,11,48696,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rugissement d'intimidation");

UPDATE `creature_template` SET `HealthModifier` = 1.75 WHERE (entry = 3261);
-- Bristleback Thornweaver SAI
SET @ENTRY := 3261;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,"Colère"),
(@ENTRY,0,1,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bristleback Thornweaver - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,9,0,100,0,0,20,9000,12000,11,12747,1,0,0,0,0,2,0,0,0,0,0,0,0,"Sarments 0-20 m"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 37511);
-- Bristleback Bladewarden SAI
SET @ENTRY := 37511;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,50,0,0,10,12000,20000,11,82610,2,0,0,0,0,2,0,0,0,0,0,0,0,"Ruée du huran"),
(@ENTRY,0,1,0,2,0,50,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bristleback Bladewarden - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,2,0,30,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

-- Deviate Thornweaver SAI
SET @ENTRY := 38884;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deviate Thornweaver - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,9,0,100,0,0,20,9000,12000,11,12747,1,0,0,0,0,2,0,0,0,0,0,0,0,"Sarments"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3400,4700,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,"Colère"),
(@ENTRY,0,4,0,9,0,100,0,40,100,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `HealthModifier` = 3 WHERE (entry = 5859);
UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 5859 ;
-- Hagg Taurenbane SAI
SET @ENTRY := 5859;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,7165,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hagg Taurenbane - On Aggro - Cast 'Battle Stance' (No Repeat)"),
(@ENTRY,0,1,0,9,0,100,0,0,5,5000,5000,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement 0-5 m"),
(@ENTRY,0,2,0,9,0,100,0,0,8,25000,30000,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant 0-8 m"),
(@ENTRY,0,3,0,0,0,100,0,2000,4500,12000,20000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brise-genou");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 5847 ;
UPDATE `creature_template` SET `HealthModifier` = 4, `DamageModifier` = 3 WHERE (entry = 5847);
-- Heggin Stonewhisker SAI
SET @ENTRY := 5847;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,2000,6000,6000,9000,11,6979,0,0,0,0,0,2,0,0,0,0,0,0,0,"Flèche de feu"),
(@ENTRY,0,2,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Heggin Stonewhisker - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,4,5,9,0,100,0,5,30,3000,3000,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tir"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 5863 ;
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE (entry = 5863);
-- Geopriest Gukk'rok SAI
SET @ENTRY := 5863;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3500,3500,6000,6000,11,75068,0,0,0,0,0,2,0,0,0,0,0,0,0,"Explosion de lave"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,80117,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pointe de terre"),
(@ENTRY,0,2,0,1,0,100,0,500,1000,600000,600000,11,79927,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bouclier de terre");

UPDATE `creature_template` SET `DamageModifier` = 2 WHERE (entry = 37207);
SET @ENTRY := 37207;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,75,0,0,0,0,0,11,44531,2,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,5,0,4,0,30,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante (bond)  "),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,5500,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");


UPDATE `creature_template` SET `unit_flags` = 67108864, `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 3240);
-- Stormsnout SAI
SET @ENTRY := 3240;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,12000,13000,11,15611,2,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de lézard"),
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0,"charge"),
(@ENTRY,0,15,0,9,0,100,0,0,10,10000,10000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");

UPDATE `creature` SET `spawntimesecs` = '5' WHERE `creature`.`id` = 37706;
UPDATE `creature_template` SET `DamageModifier` = 2 WHERE (entry = 37706);
-- Desolation Grunt SAI
SET @ENTRY := 37706;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,10,0,4,0,30,0,0,0,0,0,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0,"charge"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4500,6500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,9,0,25,0,0,10,8000,10000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre  "),
(@ENTRY,0,25,0,9,0,25,0,0,5,6000,9000,11,772,32,0,0,0,0,1,0,0,0,0,0,0,0,"Pourfendre");

UPDATE `creature` SET `spawntimesecs` = '5' WHERE `creature`.`id` = 37585;
UPDATE `creature_template` SET `DamageModifier` = 2 WHERE (entry = 37585);
SET @ENTRY := 37585;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,10,0,4,0,30,0,0,0,0,0,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0,"charge"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4500,6500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,9,0,25,0,0,10,8000,10000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre  "),
(@ENTRY,0,25,0,9,0,25,0,0,5,6000,9000,11,772,32,0,0,0,0,1,0,0,0,0,0,0,0,"Pourfendre");


-- Lashvine SAI
SET @ENTRY := 37093;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,30,3000,3000,11,69867,0,0,0,0,0,1,0,0,0,0,0,0,0,"Floraison des Tarides 0-30% Health"),
(@ENTRY,0,1,0,9,0,100,0,0,5,6000,8000,11,82803,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rafale flagellante");

UPDATE `creature_template` SET `HealthModifier` = 2.5,`ArmorModifier` = 3, `DamageModifier` = 3 WHERE (entry = 37092);
-- Outgrowth SAI
SET @ENTRY := 37092;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,16000,25000,11,82810,0,0,0,0,0,2,0,0,0,0,0,0,0,"Spore sauvage"),
(@ENTRY,0,10,10,9,0,75,0,0,10,10000,10000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");

UPDATE `creature_template` SET `minlevel` = 32, `maxlevel` = 32 WHERE (entry = 44265);

UPDATE `creature_template` SET `HealthModifier` = 6, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 37753);


-- Deviate Terrortooth SAI
SET @ENTRY := 37090;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,75,1,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,1,0,9,0,100,0,0,10,15000,21000,11,82608,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hurlement strident"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,15,0,11,0,100,0,0,0,0,0,11,71764,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel malade"),
(@ENTRY,0,20,25,8,0,100,0,70458,0,30000,30000,33,37726,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le germe de la solution 24566 : credit"),
(@ENTRY,0,25,30,61,0,100,0,70458,0,30000,30000,28,71764,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le germe de la solution 24566 : retire visuel malade"),
(@ENTRY,0,30,35,61,0,100,0,70458,0,30000,30000,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le germe de la solution 24566 : faction amicale"),
(@ENTRY,0,35,0,61,0,100,0,70458,0,30000,30000,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le germe de la solution 24566 : despawn");

UPDATE `creature_template` SET `scale` = 0.75 WHERE (entry = 37091);
-- Deviate Plainstrider SAI
SET @ENTRY := 37091;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,10,8000,12000,11,80807,0,0,0,0,0,2,0,0,0,0,0,0,0,"Splendeur (cone)"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,134537,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de bec"),
(@ENTRY,0,15,0,11,0,100,0,0,0,0,0,11,71764,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel malade"),
(@ENTRY,0,20,25,8,0,100,0,70458,0,30000,30000,33,37726,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le germe de la solution 24566 : credit"),
(@ENTRY,0,25,30,61,0,100,0,70458,0,30000,30000,28,71764,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le germe de la solution 24566 : retire visuel malade"),
(@ENTRY,0,30,35,61,0,100,0,70458,0,30000,30000,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le germe de la solution 24566 : faction amicale"),
(@ENTRY,0,35,0,61,0,100,0,70458,0,30000,30000,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le germe de la solution 24566 : despawn"),
(@ENTRY,0,2000,0,10,0,100,0,1,10,2000,2000,11,68326,0,0,0,0,0,1,0,0,0,0,0,0,0,"Si detecte mouvement hors combat : auto peur 8225");



UPDATE `creature_template` SET `speed_walk` = 1.25, `speed_run` = 1.25, `scale` = 1.3, `unit_flags` = 67108864, `DamageModifier` = 3 WHERE (entry = 37085);
-- Towering Plainstrider SAI
SET @ENTRY := 37085;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,134537,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de bec"),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,"Towering Plainstrider - On Aggro - Cast 'Sprint' (No Repeat)"),
(@ENTRY,0,20,0,0,0,100,0,2000,3000,15000,19000,11,81678,0,0,0,0,0,2,0,0,0,0,0,0,0,"Aveugleur"),
(@ENTRY,0,2000,0,10,0,100,0,1,10,2000,2000,11,68326,0,0,0,0,0,1,0,0,0,0,0,0,0,"Si detecte mouvement hors combat : auto peur 8225");

UPDATE `creature_template` SET `scale` = 0.7 WHERE (entry = 37083);
-- Terrortooth Runner SAI
SET @ENTRY := 37083;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,89712,0,0,0,0,0,1,0,0,0,0,0,0,0,"Griffure bondissante"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 37084);
-- Terrortooth Scytheclaw SAI
SET @ENTRY := 37084;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,16000,20000,11,82796,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffe-faux"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `unit_flags` = 67108864, `DamageModifier` = 3 WHERE (entry = 3256);
-- Sunscale Scytheclaw SAI
SET @ENTRY := 3256;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,60,0,0,0,0,0,11,12787,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rosser"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,4000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

UPDATE `creature_template` SET `scale` = 1.25, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 37208);
-- Thunderhead SAI
SET @ENTRY := 37208;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,12000,13000,11,15611,2,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de lézard"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,9,0,100,0,0,5,6000,15000,11,81691,2,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_template` SET `speed_walk` = 1.5, `DamageModifier` = 3 WHERE (entry = 38015);
-- Karthog SAI
SET @ENTRY := 38015;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,9,0,50,0,0,10,6000,6000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");

-- Horde Field Defender SAI
SET @ENTRY := 37659;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,6000,8000,11,70316,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement 0-5 m"),
(@ENTRY,0,1,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `KillCredit1` = 39050, `gossip_menu_id` = 65530, `npcflag` = 1, `unit_flags` = 0,`DamageModifier` = 2,`HealthModifier` = 1.75 WHERE (entry = 37743);
-- Taurajo Looter SAI
SET @ENTRY := 37743;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,20,0,500,1000,600000,600000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Taurajo Looter - Out of Combat - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,0,0,9000,13000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,2,0,0,0,100,0,200,2000,5000,5000,11,3583,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison mortel"),
(@ENTRY,0,3,0,2,0,50,0,0,30,14000,15000,11,6434,1,0,0,0,0,1,0,0,0,0,0,0,0,"Débiter 0-30% Health"),
(@ENTRY,0,10,0,62,0,100,0,65530,0,0,0,2,103,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jetez-les aux fers 25057 : faction agressive"),
(@ENTRY,0,15,0,25,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Faction d'origine"),
(@ENTRY,0,20,25,8,0,100,0,73387,0,30000,30000,33,39050,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jetez-les aux fers 25057 : credit"),
(@ENTRY,0,25,30,61,0,100,0,73387,0,30000,30000,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jetez-les aux fers 25057 : Faction d'origine"),
(@ENTRY,0,30,0,61,0,100,0,73387,0,30000,30000,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jetez-les aux fers 25057 : despawn");


UPDATE `creature_template` SET `unit_flags` = 67108864, `unit_flags2` = 2048 WHERE (entry = 37082);

UPDATE `creature` SET `spawndist` = 15, `MovementType` = '1' WHERE `creature`.`id` = 37082; 

UPDATE `creature_template` SET `HealthModifier` = 5 WHERE (entry = 5834);
-- Azzere the Skyblade SAI
SET @ENTRY := 5834;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,4000,11,13375,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boule de feu"),
(@ENTRY,0,1,0,0,0,100,0,5000,7000,18000,22000,11,6725,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dards de flammes"),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,11,13375,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast bolt on Aggro"),
(@ENTRY,0,4,0,9,0,100,0,40,100,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 37922);
-- Desolation Raider SAI
SET @ENTRY := 37922;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,12000,14500,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fracasser armure 0-5m"),
(@ENTRY,0,1,0,2,0,100,1,0,30,2000,2000,11,82836,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fureur sanguinaire 0-30% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4500,6000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,0,0,20,0,0,0,6000,10000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");


UPDATE `creature_template` SET `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 37923);
-- Triumph Vanguard SAI
SET @ENTRY := 37923;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant"),
(@ENTRY,0,1,0,2,0,100,0,0,50,12000,13000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maîtrise du blocage 0-50% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4500,6000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,0,0,20,0,0,0,6000,10000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");

UPDATE `creature_template` SET `ArmorModifier` = 1.5, `HealthModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 3252);
-- Silithid Swarmer SAI
SET @ENTRY := 3252;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,0,5,4000,4000,11,113687,0,0,0,0,0,1,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,4,0,75,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante");

REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (39139, 1, 1899, 0, 53285, 18019);
UPDATE `creature_template` SET `lootid` = 37926,`DamageModifier` = 3 WHERE (entry = 39139);
SET @ENTRY := 39139;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement a distance"),
(@ENTRY,0,11,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,9,0,100,0,5,30,3000,3500,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"5m - 30m : Tir  ( arc 95826 )  ( fusil & arbalete 6660-item53285 )"),
(@ENTRY,0,21,22,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme a distance"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement OFF"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Auto Attack"),
(@ENTRY,0,30,31,9,0,100,0,0,5,3000,3500,11,6603,64,0,0,0,0,1,0,0,0,0,0,0,0,"0m - 5m : Attaque auto"),
(@ENTRY,0,31,32,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,32,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement ON");

UPDATE `creature_template` SET `ArmorModifier` = 1.5, `DamageModifier` = 3.5 WHERE (entry = 39136);
-- Triumph Sentry SAI
SET @ENTRY := 39136;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,100,0,0,50,12000,13000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,"Triumph Sentry - Between 0-50% Health - Cast 'Shield Block'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,0,0,100,0,0,0,5000,5000,11,772,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre");

UPDATE `creature_template` SET `faction` = 125, `unit_flags` = 0 WHERE (entry = 37925);
-- Sapper Specialist SAI
SET @ENTRY := 37925;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,100,1,0,10,3000,3000,11,82867,0,0,0,0,0,1,0,0,0,0,0,0,0,"Charge de sapeur 0-10% Health"),
(@ENTRY,0,4,5,9,0,100,0,5,30,4000,4000,11,7978,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer de dynamite"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Dynamite Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Dynamite Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Dynamite Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Throw Dynamite Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Dynamite Range");


UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 5829 ;
UPDATE `creature_template` SET `HealthModifier` = 7, `DamageModifier` = 2.5 WHERE (entry = 5829);
-- Snort the Heckler SAI
SET @ENTRY := 5829;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,12000,15000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déchirure du tendon"),
(@ENTRY,0,1,0,9,0,100,0,5,30,22000,26000,11,7951,32,0,0,0,0,2,0,0,0,0,0,0,0,"Crachat toxique"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 5832 ;
UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 7, `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 5832);
-- Thunderstomp SAI
SET @ENTRY := 5832;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,5000,7000,11,421,0,0,0,0,0,2,0,0,0,0,0,0,0,"chaine d'eclair"),
(@ENTRY,0,10,0,9,0,100,0,0,5,8000,8000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut");

UPDATE `creature_template` SET `faction` = 103, `unit_flags` = 0, `lootid` = 37511, `HealthModifier` = 3, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 37513);
-- Sabersnout SAI
SET @ENTRY := 37513;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sabersnout - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,6,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sabersnout - On Just Died - Say Line 1 (No Repeat)"),
(@ENTRY,0,2,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,3,0,9,0,100,0,0,10,15000,18000,11,82610,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ruée du huran"),
(@ENTRY,0,4,0,2,0,100,0,1,25,26000,33000,11,70171,0,0,0,0,0,2,0,0,0,0,0,0,0,"Peur"),
(@ENTRY,0,5,6,2,0,100,1,0,30,2000,2000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-30% Health"),
(@ENTRY,0,6,0,61,0,100,1,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sabersnout - Between 0-30% Health - Say Line 2 (No Repeat)");

UPDATE `creature_template` SET  `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 37556);
SET @ENTRY := 37556;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,9,0,100,0,0,5,5000,5000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_template` SET  `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 37555);
-- Landquaker Kodo SAI
SET @ENTRY := 37555;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,9,0,100,0,0,5,8000,10000,11,6266,0,0,0,0,0,1,0,0,0,0,0,0,0,"Piétinement de kodo");

UPDATE `creature_template` SET `scale` = 1.2, `HealthModifier` = 1.5, `ArmorModifier` = 1.2, `DamageModifier` = 2.5 WHERE (entry = 37557);
-- Thunderhawk Cloudscraper SAI
SET @ENTRY := 37557;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,6000,11,36594,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de foudre");

UPDATE `creature_template` SET `unit_flags` = 134217728, `type_flags` = 2048, `ArmorModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 37926);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('37926', '0', '2404', '0', '0', '0', NULL);
-- Triumph Captain SAI
SET @ENTRY := 37926;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,13,0,100,0,20000,20000,0,0,11,23920,0,0,0,0,0,1,0,0,0,0,0,0,0,"Renvoi de sort");

UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 4096 WHERE (entry = 37923);
-- Triumph Vanguard SAI
SET @ENTRY := 37923;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant"),
(@ENTRY,0,1,0,2,0,100,0,0,50,12000,13000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maîtrise du blocage 0-50% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('37977', '0', '1149', '0', '0', '0', NULL);
UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 37977);
-- Wildhammer Mercenary SAI
SET @ENTRY := 37977;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,40,10000,10000,11,82837,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wildhammer Mercenary - Within 0-40 Range - Cast 'Stormhammer'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,9000,11000,11,11978,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wildhammer Mercenary - Within 0-5 Range - Cast 'Kick'"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `DamageModifier` = 3,`unit_flags` = 0, `type_flags` = 2048 WHERE (entry = 37971);
SET @ID := 37971 ;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ID, 0, 29310, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ID);       #  Voler

UPDATE `creature_template` SET `scale` = 1.25, `HealthModifier` = 5.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 3253);
-- Silithid Harvester SAI
SET @ENTRY := 3253;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,25000,32000,11,7278,0,0,0,0,0,1,0,0,0,0,0,0,0,"Essaim moissonneur"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,9,0,100,0,0,5,10000,10000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brise-genou");

-- Thunderhawk Cloudscraper SAI
SET @ENTRY := 37557;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,6000,11,36594,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de foudre");

UPDATE `creature_template` SET `unit_flags` = 0, `DamageModifier` = 3 WHERE (entry = 37924);
-- Barrens Operative SAI
SET @ENTRY := 37924;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,"Furtivité"),
(@ENTRY,0,2,0,67,0,100,0,9000,12000,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque sournoise"),
(@ENTRY,0,3,0,2,0,100,0,0,40,18000,22000,11,80576,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pas de l’ombre 0-40% Health"),
(@ENTRY,0,4,0,9,0,100,0,0,5,24000,26000,11,14902,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup bas Within 0-5 Range"),
(@ENTRY,0,10,0,0,0,100,0,2000,2000,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse    ");

UPDATE `creature` SET `spawndist` = 25, `MovementType` = '1' WHERE `creature`.`id` = 37559;  
UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 37559);
-- Savannah Boar SAI
SET @ENTRY := 37559;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,44530,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boutoir"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,5000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature` SET `spawndist` = 10, `MovementType` = '1' WHERE `creature`.`id` = 37560;  
-- Razormane Pathfinder SAI
SET @ENTRY := 37560;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Razormane Pathfinder - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,9,0,100,0,5,30,22000,24000,11,82844,33,0,0,0,0,2,0,0,0,0,0,0,0,"Tir toxique 5-30 m"),
(@ENTRY,0,3,0,9,0,100,0,0,20,8000,9000,11,70218,1,0,0,0,0,2,0,0,0,0,0,0,0,"Filet à sanglier 0-20 m"),
(@ENTRY,0,4,5,9,0,100,0,5,30,3000,4000,11,74613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shoot"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range");

UPDATE `creature` SET `spawndist` = 10, `MovementType` = '1' WHERE `creature`.`id` = 37660;  
UPDATE `creature_template` SET `scale` = 1.2, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 37660);
-- Razormane Warfrenzy SAI
SET @ENTRY := 37660;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,1,0,9,0,100,0,0,10,8000,12000,11,82610,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ruée du huran"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse");

-- Razormane Seer SAI
SET @ENTRY := 37661;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,3500,11,57780,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair"),
(@ENTRY,0,1,0,2,0,75,1,0,20,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Razormane Seer - Between 0-20% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,1,0,100,0,500,1000,600000,600000,11,33907,0,0,0,0,0,1,0,0,0,0,0,0,0,"Epines"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");


UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 37847 ;
UPDATE `creature_template` SET `HealthModifier` = 7, `ArmorModifier` = 1, `DamageModifier` = 3 WHERE (entry = 37847);
-- Mankrik SAI
SET @ENTRY := 37847;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,5000,11,79877,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sanguinaire"),
(@ENTRY,0,20,0,0,0,100,0,0,0,6000,6000,11,11977,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pourfendre"),
(@ENTRY,0,25,0,2,0,100,0,1,50,10000,12000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 37940 ;
UPDATE `creature_template` SET `HealthModifier` = 3.5 WHERE (entry = 37940);
-- Mangletooth SAI
SET @ENTRY := 37940;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,5000,11,79884,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair"),
(@ENTRY,0,1,0,1,0,100,0,500,1000,600000,600000,11,79892,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bouclier d'eau"),
(@ENTRY,0,3,0,0,0,100,0,4000,4500,12000,13000,11,79890,34,0,0,0,0,2,0,0,0,0,0,0,0,"Horion de flammes"),
(@ENTRY,0,4,0,0,0,100,0,9000,12000,25000,28000,11,79886,1,0,0,0,0,2,0,0,0,0,0,0,0,"Explosion de lave"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 1.5, `DamageModifier` = 1.5 WHERE (entry = 39280);
-- Frazzlecraz Miner SAI
SET @ENTRY := 39280;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,75,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frazzlecraz Miner - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,9,0,100,0,0,5,12000,12500,11,58461,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fracasser armure 0-5 m"),
(@ENTRY,0,4,0,9,0,30,0,5,30,2300,3900,11,7978,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer de dynamite"),
(@ENTRY,0,10,0,75,0,100,0,0,15000079,4,2000,5,467,0,0,0,0,0,1,0,0,0,0,0,0,0,"emote miner");
#
UPDATE `creature_template` SET `unit_flags` = 0, `DamageModifier` = 3 WHERE (entry = 39279);
-- Frazzlecraz Foreman SAI
SET @ENTRY := 39279;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,80983,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de commandement"),
(@ENTRY,0,1,2,2,0,100,0,0,30,15000,15000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-30% Health"),
(@ENTRY,0,2,0,61,0,30,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frazzlecraz Foreman - Between 0-30% Health - Say Line 0 (No Repeat)"),
(@ENTRY,0,10,0,0,0,100,0,0,0,6000,6000,11,83639,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bain de sang");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117791, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3734.88, -1668.54, 91.799, 5.88707, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117790, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3603.65, -1636.29, 104.707, 5.02313, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117789, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3585.72, -1617.66, 101.238, 2.16036, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117788, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3563.7, -1614.63, 100.979, 6.10502, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117787, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3465.32, -1606.07, 97.0271, 2.08967, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117786, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3438.22, -1600.84, 93.2811, 5.87136, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117785, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3459.79, -1629.75, 97.9225, 5.07222, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117784, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3484.71, -1582.03, 95.1818, 2.15054, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117783, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3479.71, -1592.4, 94.9736, 0.689697, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117782, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3502.69, -1615.95, 98.1369, 5.67698, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117781, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3527.04, -1577.09, 101.926, 0.658283, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117780, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3552.39, -1605.77, 101.029, 4.26915, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117779, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3587.4, -1558.84, 105.871, 0.699514, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117778, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3592.43, -1564.48, 105.369, 3.55444, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117777, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3577.6, -1562.02, 105.397, 1.99346, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0);

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 37553);
-- Disturbed Earth Elemental SAI
SET @ENTRY := 37553;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,6000,6000,8000,11,82841,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de pierre"),
(@ENTRY,0,1,0,11,0,100,1,0,0,0,0,11,82839,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durci");

REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (38070, 1, 49930, 0, 0, 18019);
UPDATE `creature_template` SET `lootid` = 37922,`type_flags` = 4096, `DamageModifier` = 3 WHERE (entry = 38070);
-- Desolation Guard SAI
SET @ENTRY := 38070;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,5,9,0,100,0,0,5,9000,12000,11,40505,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `lootid` = 37922,`HealthModifier` = 2.5, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 37811);
-- Warlord Gar'dul SAI
SET @ENTRY := 37811;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,9,0,100,0,0,10,10000,14000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");

UPDATE `creature_template` SET `lootid` = 37925, `DamageModifier` = 3 WHERE (entry = 38290);
-- Barrens Brave SAI
SET @ENTRY := 38290;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,4,0,50,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 1.5, `DamageModifier` = 2.5 WHERE (entry = 3376);
-- Bael'dun Soldier SAI
SET @ENTRY := 3376;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,50,1,0,0,0,0,11,22120,2,0,0,0,0,2,0,0,0,0,0,0,0,"Charge"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,81219,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,2,0,2,0,50,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bael'dun Soldier - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,9,0,100,0,0,5,6000,8000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement"),
(@ENTRY,0,4,0,0,0,100,0,2000,2000,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (3377, 1, 2147, 0, 53285, 18019);
-- Bael'dun Rifleman SAI
SET @ENTRY := 3377;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,5,9,0,100,0,5,30,3000,4000,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shoot"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,15,0,25,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model");

UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE (entry = 3378);
-- Bael'dun Officer SAI
SET @ENTRY := 3378;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,0,0,1000,1000,11,12787,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bael'dun Officer - In Combat - Cast 'Thrash' (No Repeat)"),
(@ENTRY,0,1,0,2,0,60,0,1,50,15000,15000,11,6264,0,0,0,0,0,1,0,0,0,0,0,0,0,"Réflexes vifs"),
(@ENTRY,0,2,0,2,0,100,1,0,15,3000,3000,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flee at 15% HP"),
(@ENTRY,0,3,0,2,0,50,1,0,15,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,13,0,100,0,10000,10000,0,0,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,"Revers"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39218, 0, 0, 8, 1, 0, 104015);
-- Bael'dun Survivor SAI
SET @ENTRY := 39218;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "),
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defensif");

UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE (entry = 38183);
-- Haggis Boatmurder SAI
SET @ENTRY := 38183;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,100,0,0,0,100,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse ");

UPDATE `creature_template` SET `unit_flags` = 131074 WHERE (entry = 38140);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('38140', '0', '0', '0', '0', '0', '80264 5916');

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38152, 0, 0, 0, 0, 0, '29266');

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117798, 3421, 1, 0, 0, 1, 0, 0, 0, 1, -4218.52, -2337.06, 91.8178, 1.98642, 300, 0, 0, 1372, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `HealthModifier` = 1.75, `DamageModifier` = 3 WHERE (entry = 3421);
-- Feegly the Exiled (Old) SAI
SET @ENTRY := 3421;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   ");

UPDATE `creature_template` SET  `DamageModifier` = 3 WHERE (entry = 39174);
SET @ENTRY := 39174;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   ");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 3375);
-- Bael'dun Foreman SAI
SET @ENTRY := 3375;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,1,0,0,0,100,0,0,0,15000,15000,11,6257,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer de torche"),
(@ENTRY,0,2,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bael'dun Foreman - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,2,0,50,1,0,15,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP");

UPDATE `creature_template` SET `lootid` = 3375, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 39156);
-- Twinbraid's Bodyguard SAI
SET @ENTRY := 39156;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   ");

UPDATE `creature_template` SET `lootid` = 3375, `DamageModifier` = 3 WHERE (entry = 39118);
-- General Twinbraid SAI
SET @ENTRY := 39118;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,0,10,6000,8000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,-1,0,9,0,100,0,0,5,8000,8000,11,78828,0,0,0,0,0,0,0,0,0,0,0,0,0,"Tempête de lames");

UPDATE `creature_template` SET `HealthModifier` = 2, `DamageModifier` = 2.5 WHERE (entry = 6132);
-- Razorfen Servitor SAI
SET @ENTRY := 6132;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,75,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Razorfen Servitor - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,2,0,50,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   ");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 7895 ;
UPDATE `creature_template` SET `HealthModifier` = 3 WHERE (entry = 7895);
-- Ambassador Bloodrage SAI
SET @ENTRY := 7895;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,8050,0,0,0,0,0,2,0,0,0,0,0,0,0,"Horion de flammes   "),
(@ENTRY,0,15,0,0,0,100,0,2000,2000,3500,3500,11,29722,0,0,0,0,0,2,0,0,0,0,0,0,0,"Incinérer");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 7873);
-- Razorfen Battleguard SAI
SET @ENTRY := 7873;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,13,0,100,0,7000,12000,0,0,11,11430,0,0,0,0,0,2,0,0,0,0,0,0,0,"Heurtoir"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3500,4500,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse    ");

UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE (entry = 7872);
-- Death's Head Cultist SAI
SET @ENTRY := 7872;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,4500,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de l'ombre"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,11433,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mort et décomposition"),
(@ENTRY,0,4,0,9,0,100,2,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,2,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,10,0,9,0,100,2,0,40,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"mouvement off 0-40m");

UPDATE `creature_template` SET `HealthModifier` = 1.5 WHERE (entry = 7874);
-- Razorfen Thornweaver SAI
SET @ENTRY := 7874;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,7966,0,0,0,0,0,1,0,0,0,0,0,0,0,"Aura d’épines"),
(@ENTRY,0,1,0,2,0,100,1,0,40,5000,5000,11,11431,0,0,0,0,0,1,0,0,0,0,0,0,0,"Toucher guérisseur 0-40% Health"),
(@ENTRY,0,2,0,74,0,100,1,0,40,5000,5000,11,11431,0,0,0,0,0,7,0,0,0,0,0,0,0,"Toucher guérisseur 0-40% Health allier");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 12865 ;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117804, 12865, 1, 0, 0, 1, 0, 0, 0, 1, -4488.05, -2061, 75.953, 1.91305, 300, 0, 0, 6640, 2864, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `rank` = 1,`unit_flags` = 0, `HealthModifier` = 2 WHERE (entry = 12865);
-- Ambassador Malcin SAI
SET @ENTRY := 12865;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,8282,32,0,0,0,0,2,0,0,0,0,0,0,0,"Malédiction du sang"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3500,3500,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de l'ombre 0-40 m"),
(@ENTRY,0,4,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ambassador Malcin - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,6,0,9,0,100,0,35,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ambassador Malcin - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14427 ;
UPDATE `creature_template` SET `HealthModifier` = 3.5, `DamageModifier` = 3 WHERE (entry = 14427);
-- Gibblesnik SAI
SET @ENTRY := 14427;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,12000,14000,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fracasser armure"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse");

UPDATE `creature_template` SET `faction` = 189, `npcflag` = 0 WHERE (entry = 48128);

-- Northwatch Siege Engineer SAI
SET @ENTRY := 38327;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Northwatch Siege Engineer - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,25000,32000,11,82830,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup défonçant"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   ");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 37086);
-- Hecklefang Scavenger SAI
SET @ENTRY := 37086;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,10,6000,8000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,10,0,9,0,75,0,0,5,10000,10000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brise-genou");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 2, `ArmorModifier` = 2, `DamageModifier` = 3.5,`speed_walk` = 0.001, `speed_run` = 0.001, `unit_flags` = 4, `mechanic_immune_mask` = 199089 WHERE (entry = 37548);
-- Grasping Overgrowth SAI
SET @ENTRY := 37548;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,21067,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de poison "),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,30010,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poigne de la mort sans visuel"),
(@ENTRY,0,20,25,6,0,100,0,0,0,0,0,1,0,0,0,0,0,0,9,37487,0,4,0,0,0,0,"L'attaque des plantes : fait parler  le refugier"),
(@ENTRY,0,25,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,9,37487,0,4,0,0,0,0,"L'attaque des plantes : despawn le refugier");

UPDATE `creature_template` SET `DamageModifier` = 3.25,`faction` = 1077, `unit_flags` = 0 WHERE (entry = 37216);
-- Honor's Stand Officer SAI
SET @ENTRY := 37216;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,75,1,0,0,0,0,11,22120,0,0,0,0,0,2,0,0,0,0,0,0,0,"Charge"),
(@ENTRY,0,1,0,0,0,100,0,3000,4000,120000,125000,11,80983,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de commandement"),
(@ENTRY,0,10,0,0,0,100,0,1500,1500,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `DamageModifier` = 3.25 WHERE (entry = 37161);
-- Honor's Stand Footman SAI
SET @ENTRY := 37161;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,3000,4000,25000,30000,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant"),
(@ENTRY,0,2,0,2,0,50,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Honor's Stand Footman - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,2,0,30,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 4096, `DamageModifier` = 3 WHERE (entry = 37170);
-- Hunter Hill Scout SAI
SET @ENTRY := 37170;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,75,1,0,0,0,0,11,22120,0,0,0,0,0,2,0,0,0,0,0,0,0,"Charge"),
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,6000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 37204);
-- Hunter Hill Brave SAI
SET @ENTRY := 37204;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,6000,11,40505,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement"),
(@ENTRY,0,10,0,9,0,100,0,8,40,4000,4000,11,42332,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer une arme");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 37159);
-- High Road Scout SAI
SET @ENTRY := 37159;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,1,5,35,3500,3500,11,38557,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse  ");

UPDATE `creature_template` SET `unit_class` = 2, `HealthModifier` = 3, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 38384);
-- Kona Thunderwalk SAI
SET @ENTRY := 38384;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,19030,0,0,0,0,0,1,0,0,0,0,0,0,0,"Forme d'ours"),
(@ENTRY,0,1,0,0,0,100,0,2000,4500,2500,2500,11,12161,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mutiler"),
(@ENTRY,0,2,0,0,0,100,0,2000,2000,25000,30000,11,15727,2,0,0,0,0,1,0,0,0,0,0,0,0,"Rugissement démoralisant");

REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (34848, 1, 1899, 0, 53285, 18019);
UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 34848);
-- Honor's Stand Sharpshooter SAI
SET @ENTRY := 34848;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement a distance"),
(@ENTRY,0,11,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,9,0,100,0,5,30,3000,3500,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"5m - 30m : Tir  ( arc 95826 )  ( fusil & arbalete 6660-item 53285 )"),
(@ENTRY,0,21,22,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme a distance"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement OFF"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Auto Attack"),
(@ENTRY,0,30,31,9,0,100,0,0,5,3000,3500,11,6603,64,0,0,0,0,1,0,0,0,0,0,0,0,"0m - 5m : Attaque auto"),
(@ENTRY,0,31,32,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,32,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement ON");

REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (37180, 1, 1899, 6078, 0, 18019);
UPDATE `creature_template` SET `ArmorModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 37180);
-- Honor's Stand Guard SAI
SET @ENTRY := 37180;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,0,0,100,0,3000,4000,12000,15000,11,12170,0,0,0,0,0,2,0,0,0,0,0,0,0,"Revanche"),
(@ENTRY,0,16,0,2,0,100,0,0,50,12000,13000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maîtrise du blocage at 50% HP"),
(@ENTRY,0,17,0,0,0,100,0,2000,2000,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

-- Honor's Stand Peasant SAI
SET @ENTRY := 34855;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,75,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Honor's Stand Peasant - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,2,0,30,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,75,0,100,0,0,15000079,3,5000,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,"emote miner ");

-- Stonetalon Prisoner SAI
SET @ENTRY := 37167;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,11,41535,0,0,0,0,0,1,0,0,0,0,0,0,0,"enchainé");

UPDATE `creature_template` SET `lootid` = 37170 WHERE (entry = 38385);
-- Walpole's Bodyguard SAI
SET @ENTRY := 38385;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,100,0,0,50,12000,13000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,"Walpole's Bodyguard - Between 0-50% Health - Cast 'Shield Block'"),
(@ENTRY,0,2,0,0,0,100,0,3000,4000,12000,15000,11,12170,0,0,0,0,0,2,0,0,0,0,0,0,0,"Walpole's Bodyguard - In Combat - Cast 'Revenge'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `lootid` = 37170, `HealthModifier` = 2.5, `DamageModifier` = 2.5 WHERE (entry = 38378);
-- Commander Walpole SAI
SET @ENTRY := 38378;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,9,0,100,0,0,8,6000,8000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117912, 3393, 1, 0, 0, 1, 0, 0, 0, 1, -2090.59, -3652.29, 96.2444, 0.570814, 300, 0, 0, 2188, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `HealthModifier` = 2.5, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 3393);
-- Captain Fairmount SAI
SET @ENTRY := 3393;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,9128,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,1,0,2,0,100,1,0,30,2000,2000,11,19134,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cri effrayant 0-30% Health"),
(@ENTRY,0,2,0,13,0,100,0,5000,5000,0,0,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0,"Volée de coups"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(299440, 38873, 1, 4709, 4848, 1, 0, 0, 0, 1, -1899.42, -2806.11, 90.5115, 3.38547, 240, 0, 0, 1, 0, 0, 4227, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 4227 WHERE (entry = 38873);
REPLACE INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`, `option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`, `option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(8259, 0, 'What do you have for sale, Oronok?', 'Qu''avez-vous à vendre, Oronok?', 'Was habt Ihr zu verkaufen, Oronok?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8259, 1, 'I am ready to hear your story, Oronok.', 'Je suis prêt à entendre votre histoire, Oronok.', 'Ich bin bereit für Eure Geschichte, Oronok.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

UPDATE `creature_template` SET `speed_walk` = 0.001, `speed_run` = 0.001, `unit_flags` = 4, `mechanic_immune_mask` = 196785 WHERE (entry = 38942);
-- Merciless Jungle Vine SAI
SET @ENTRY := 38942;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,5,40,10000,10000,11,30010,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poigne de la mort sans visuel");

UPDATE `creature_template` SET `lootid` = 38940, `HealthModifier` = 5 WHERE (entry = 38941);
-- Three-Tooth SAI
SET @ENTRY := 38941;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9739,64,0,0,0,0,2,0,0,0,0,0,0,0,"Colère"),
(@ENTRY,0,1,0,9,0,100,0,5,30,9000,12000,11,12747,1,0,0,0,0,2,0,0,0,0,0,0,0,"Sarments 5-30m"),
(@ENTRY,0,2,0,0,0,100,0,2000,5000,35000,36000,11,73136,0,0,0,0,0,2,0,0,0,0,0,0,0,"Invocation de vigne qui perce le sol"),
(@ENTRY,0,4,0,9,0,100,0,40,100,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

-- Karl SAI
SET @ENTRY := 39024;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,1,0,100,0,0,0,10000,20000,11,70185,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pris de vertige"),
(@ENTRY,0,15,0,0,0,100,0,0,0,3500,3500,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

UPDATE `creature_template` SET `faction` = 103, `DamageModifier` = 2 WHERE (entry = 37206);
-- Plains Prowler SAI
SET @ENTRY := 37206;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,5000,5000,11,24331,32,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,15,0,4,0,30,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante");













/****************************************************************************************/
/* 				QUETES              																								 */
/****************************************************************************************/

/****************************************************************************************/
/* Dites-leur que Koko vous envoie 25765 */
DELETE FROM `creature_queststarter` WHERE (quest = 25765) AND (id IN (41229));

/****************************************************************************************/
/* Repoussez l'abordage ! 24934 */ gossip 65530
UPDATE `creature_template` SET `gossip_menu_id` = 65530, `npcflag` = 3, `AIName` = 'SmartAI' WHERE (entry = 38619);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(65530, 0, 0, "Pouvez vous me faire téléporter sur le pont de la Marée noire ?", 0, 1, 1, 0, 0, 0, 0, '', 0);
-- Admiral Aubrey SAI
SET @ENTRY := 38619;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,65530,0,0,0,62,1,0,0,0,0,0,2,0,0,0,-2162.084717,-4084.346924,22.193214,1.1944,"Repoussez l'abordage ! 24934 : TP la Marée noire");

/****************************************************************************************/
/* Servir les canons 24939  */
DELETE FROM `creature` WHERE `creature`.`guid` = 21096794;
REPLACE INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (267290, 24939, 0, 0, 38747, 20, 0, 0, 'Rageroar Rowboat Destroyed', 20444);
UPDATE `quest_template_locale` SET `LogDescription` = 'Utilisez une Batterie côtière de Guet-du-Nord pour éliminer 20 Grunt Hurlerag.', `QuestDescription` = 'Nous avons le matériel, mais pas la main-d’œuvre, $n. Armez l’une des bombardes sur le rivage et éliminez les Grunt Hurlerag !' WHERE `quest_template_locale`.`ID` = 24939 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `quest_objectives_locale` SET `Description` = 'Grunt Hurlerag' WHERE `quest_objectives_locale`.`ID` = 267290 AND `quest_objectives_locale`.`locale` = 'frFR';

#------ Invoqueur de Grunt Hurlerag
REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000216, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Servir les canons 24939", '', " Invoqueur de Grunt Hurlerage 38747", '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131078, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);
-- Servir les canons 24939 SAI
SET @ENTRY := 15000216;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,60,0,100,0,0,0,5000,5000,12,38747,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Servir les canons 24939 :  Invoque de Grunt Hurlerag");

#------ Grunt Hurlerag
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(38747, 0, 0, 0, 0, 0, 31138, 31139, 31140, 31141, 'Grunt Hurlerage', '', '', '', 0, 30, 31, 0, 0, 85, 0, 1, 0.89999997615814, 1, 0, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 38658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 3, 0, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);
-- Grunt Hurlerage SAI
SET @ENTRY := 38747;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,69,0,0,0,0,0,0,1,1,1,1,-2012.36,-3761.06,0.70086,0,"Servir les canons 24939 : bouge vers le canon"),
(@ENTRY,0,15,0,11,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif");

#------ CANON
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(38754, 0, 0, 0, 0, 0, 21788, 0, 0, 0, 'Batterie côtière de Guet-du-Nord', '', '', 'vehichleCursor', 0, 28, 28, 0, 0, 1077, 50331648, 0.0010000000474975, 0.0010000000474975, 1, 0, 0, 2000, 2000, 1, 1, 2, 16908292, 2048, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72741, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 38754;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (38754, 65030, 1, 1); 
-- Batterie côtière de Guet-du-Nord SAI
SET @ENTRY := 38754;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,12,15000216,2,60000,0,0,0,8,0,0,0,-1966.92,-3865.42,-2,0,"Servir les canons 24939 : Invoqueur de Grunt Hurlerag 1"),
(@ENTRY,0,15,0,27,0,100,0,0,0,0,0,12,15000216,2,60000,0,0,0,8,0,0,0,-1869.25,-3849.7,-2,0,"Servir les canons 24939 : Invoqueur de Grunt Hurlerag 2"),
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,9,15000216,0,225,0,0,0,0,"Servir les canons 24939 : Desinvoque  Invoqueur de Grunt Hurlerag 2");

/****************************************************************************************/
/* Retour au combat 24944 */
-- Wounded Defender SAI
SET @ENTRY := 38805;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,72925,0,15000,15000,33,38805,0,0,0,0,0,7,0,0,0,0,0,0,0,"Retour au combat 24944 : credit");

/****************************************************************************************/
/* Volée de mitraille 24941 */
UPDATE `gameobject_loot_template` SET `MinCount` = '1' WHERE `gameobject_loot_template`.`Entry` = 27894 AND `gameobject_loot_template`.`Item` = 51957;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21047064, 202320, 1, 0, 0, 1, 0, 0, -2056.91, -3704.58, 21.7593, 4.3018, 0, 0, 0.836407, -0.54811, 300, 0, 1, 0),
(21047063, 202320, 1, 0, 0, 1, 0, 0, -2019.81, -3676.61, 22.4123, 5.70373, 0, 0, 0.28569, -0.958322, 300, 0, 1, 0),
(21047062, 202320, 1, 0, 0, 1, 0, 0, -2006.17, -3628.5, 23.6456, 2.36383, 0, 0, 0.925333, 0.379154, 300, 0, 1, 0),
(21047061, 202320, 1, 0, 0, 1, 0, 0, -1958.25, -3611.02, 21.344, 0.109735, 0, 0, 0.0548398, 0.998495, 300, 0, 1, 0),
(21047060, 202320, 1, 0, 0, 1, 0, 0, -1980.81, -3616.79, 21.7593, 0.598644, 0, 0, 0.294873, 0.955537, 300, 0, 1, 0),
(21047059, 202320, 1, 0, 0, 1, 0, 0, -1992.35, -3598.68, 21.7832, 2.37364, 0, 0, 0.927183, 0.374608, 300, 0, 1, 0),
(21047058, 202320, 1, 0, 0, 1, 0, 0, -2013.55, -3558.6, 22.9512, 0.789102, 0, 0, 0.384394, 0.923169, 300, 0, 1, 0);

/****************************************************************************************/
/* Lever le siège 24948 */
UPDATE `quest_template_locale` SET `LogDescription` = 'Utilisez le lance flamme de Paxton pour brûler 3 Catapultes hurlerage et 2 Lance-lames hurlerage.', `QuestDescription` = 'Nous n’arriverons jamais à tenir les murs de la forteresse tant que Hurlerage et ses acolytes utiliseront leur artillerie. Je veux que vous vous frayez un chemin à travers ce ravin et que vous neutralisiez son artillerie.$b$bLes orcs enduisent leur machinerie avec du goudron de houille, ce qui la rend inflammable. Prenez mon lance flamme et mettez le feu à toutes les catapultes que vous verrez au nord de Guet-du-Nord.$b$bEnsuite, réduisez en cendres les gros lance-lames, dans le camp de base de Hurlerage ! Ces engins ont déjà tué assez de nos hommes.' WHERE `quest_template_locale`.`ID` = 24948 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `quest_template` SET `StartItem` = 55152 WHERE (ID = 24948);
-- FULL `quest_objectives` of QuestID 24948
DELETE FROM `quest_objectives` WHERE (QuestID = 24948);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(267000, 24948, 0, 0, 38818, 3, 0, 0, 'Rageroar Catapults Burned', 20444),
(267001, 24948, 0, 1, 38820, 2, 0, 0, 'Rageroar Blade Thrower Burned', 20444),
(267002, 24948, 1, 2, 55152, 1, 0, 0, '', 20444);

UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE (entry = 38818);
-- Rageroar Catapult SAI
SET @ENTRY := 38818;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,8,0,100,0,65308,0,3000,3000,33,38818,0,0,0,0,0,17,0,15000,0,0,0,0,0,"Lever le siège 24948 : Credit"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,12,15000066,2,20000,0,0,0,1,0,0,0,0,0,0,0,"Lever le siège 24948 : Visuel flamme");

UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE (entry = 38820);
UPDATE `creature_template` SET `flags_extra` = 128 WHERE (entry = 38820);
-- Rageroar Blade Thrower SAI
SET @ENTRY := 38820;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,8,0,100,0,65308,0,3000,3000,33,38820,0,0,0,0,0,17,0,15,0,0,0,0,0,"Lever le siège 24948 : Credit"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,12,15000066,2,20000,0,0,0,9,38820,0,35,0,0,0,0,"Lever le siège 24948 : Visuel flamme");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117909, 38820, 1, 0, 0, 1, 0, 0, 11686, 0, -1656.75, -3640.48, 93.5339, 5.12217, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117908, 38820, 1, 0, 0, 1, 0, 0, 11686, 0, -1657.47, -3629.69, 95.6622, 4.48404, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117907, 38820, 1, 0, 0, 1, 0, 0, 11686, 0, -1654.1, -3623.08, 93.9347, 1.48578, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117906, 38820, 1, 0, 0, 1, 0, 0, 11686, 0, -1647.75, -3634.13, 90.8246, 3.68882, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117905, 38820, 1, 0, 0, 1, 0, 0, 11686, 0, -1638.13, -3633.9, 87.4032, 2.00218, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117902, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1605.01, -3696.27, 90.2793, 0.258965, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117901, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1606.37, -3688.82, 91.343, 5.53684, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117900, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1607.18, -3695.47, 95.9077, 4.33714, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117899, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1600.62, -3703.91, 91.0482, 3.43983, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117898, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1593.59, -3692.65, 86.0741, 3.27882, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117897, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1588.71, -3696.61, 85.3975, 2.84489, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117896, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1581.37, -3694.37, 84.7517, 1.6825, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117895, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1582.51, -3684.34, 84.9929, 3.35932, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117894, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1590.61, -3686.82, 85.1242, 4.6945, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117893, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1666.45, -3643.76, 77.5134, 0.692894, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117892, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1663.46, -3626.77, 85.7732, 4.83587, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117891, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1659.76, -3641.98, 77.5129, 3.16887, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117890, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1653.26, -3635.51, 83.9285, 1.635, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117889, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1650.6, -3638.05, 80.7291, 3.28864, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117888, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1648.84, -3629.26, 80.368, 3.38092, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117887, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1640.01, -3626.96, 80.4516, 3.56549, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21117886, 38820, 1, 0, 0, 1, 0, 0, 0, 0, -1638.99, -3637.54, 80.0879, 6.24174, 300, 3, 0, 160, 0, 2, 0, 0, 0, 0),
(302028, 38820, 1, 4709, 4709, 1, 0, 0, 0, 0, -1659.46, -3634.57, 81.2737, 0, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(302026, 38820, 1, 4709, 4709, 1, 0, 0, 0, 0, -1600.43, -3696.74, 85.3955, 0, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* Les gars de Teegan 25000 */
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117946, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1819.87, -3040.27, 92.635, 2.6855, 300, 15, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117945, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1802.63, -3011.88, 86.3276, 5.71125, 300, 15, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117944, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1809.6, -2956.94, 87.1143, 1.05188, 300, 25, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117943, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1831.03, -3005.26, 88.2956, 1.75481, 300, 25, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117942, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1888.86, -3117.42, 119.227, 2.3203, 300, 5, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117941, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1838.54, -3189.75, 82.3001, 1.09115, 300, 15, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117940, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1818.55, -3292.58, 101.866, 1.98454, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117939, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1794.57, -3352.72, 100.55, 3.91662, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117938, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1782.76, -3319.96, 91.7014, 5.05937, 300, 15, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117937, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1807.36, -3274.05, 92.5423, 5.54632, 300, 15, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117936, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1845.44, -3247.7, 82.6686, 5.09668, 300, 15, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117935, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2064.84, -3155.15, 117.545, 5.7839, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117933, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2038.67, -3141.79, 116.089, 3.12925, 300, 15, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117931, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1963.33, -3161.95, 92.1139, 1.05384, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117930, 37084, 1, 0, 0, 1, 0, 0, 0, 0, -1985.57, -3164.15, 92.139, 5.46778, 300, 0, 0, 4196, 0, 0, 0, 0, 0, 0),
(21117929, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2007.05, -3252.58, 95.1034, 5.0417, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117928, 37084, 1, 0, 0, 1, 0, 0, 0, 0, -2024.7, -3193.89, 91.6171, 3.19994, 300, 0, 0, 3800, 0, 0, 0, 0, 0, 0),
(21117927, 37084, 1, 0, 0, 1, 0, 0, 0, 0, -2012.86, -3208.56, 91.4525, 4.30343, 300, 0, 0, 3800, 0, 0, 0, 0, 0, 0),
(21117926, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2061.09, -3219.26, 93.5216, 6.2571, 300, 0, 0, 3800, 0, 0, 0, 0, 0, 0),
(21117925, 37084, 1, 0, 0, 1, 0, 0, 0, 0, -2036.42, -3216.99, 91.6881, 1.38567, 300, 0, 0, 3800, 0, 0, 0, 0, 0, 0),
(21117924, 37084, 1, 0, 0, 1, 0, 0, 0, 0, -2038.76, -3258.58, 91.7341, 0.991011, 300, 0, 0, 3800, 0, 0, 0, 0, 0, 0),
(21117921, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2030.11, -3258.57, 91.9288, 3.90877, 300, 0, 0, 3800, 0, 0, 0, 0, 0, 0),
(21117920, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2039.19, -3244.8, 92.019, 3.68689, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117919, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2022, -3231.76, 92.0998, 5.13006, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117918, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -2029.1, -3198.01, 91.7639, 1.45832, 300, 5, 0, 3712, 0, 1, 0, 0, 0, 0),
(21117917, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1996.03, -3186.51, 91.6293, 3.83808, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117916, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1952.26, -3184.77, 92.6682, 1.55649, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21117915, 37083, 1, 0, 0, 1, 0, 0, 0, 0, -1921.29, -3169.79, 99.0837, 2.87007, 300, 15, 0, 3800, 0, 1, 0, 0, 0, 0);

/****************************************************************************************/
/* Le grand démembrement 25027 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 25022 WHERE (ID = 25027);

/****************************************************************************************/
/* Au front ! 25034 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 25022 WHERE (ID = 25034);

/****************************************************************************************/
/* Mauvaise com' 25022 */
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(38872, 0, 0, "Aidez-moi!  ... s'il vous plaît", 12, 0, 0, 1, 500, 0, 0, 0, "Mauvaise com' 25022 0"),
(38872, 1, 0, "Ah merci! ... inutile de dire que ... les négociations ne se sont pas déroulées comme prévu", 12, 0, 0, 1, 500, 0, 0, 0, "Mauvaise com' 25022 1");
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21112655, 38872, 1, 0, 0, 1, 0, 0, 0, 0, -2101.64, -2581.43, 93.3427, 3.85181, 5, 0, 0, 2562, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 131074 WHERE (entry = 38872);
-- Ambassador Gaines SAI
SET @ENTRY := 38872;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,11,170010,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel enchainé assis"),
(@ENTRY,0,15,20,64,0,100,0,0,0,0,0,33,38872,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mauvaise com' 25022 : Credit"),
(@ENTRY,0,20,25,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mauvaise com' 25022 : blabla1"),
(@ENTRY,0,5,0,10,0,100,0,1,15,5000,10000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"blabla 0"),
(@ENTRY,0,25,30,61,0,100,0,0,0,0,0,46,40,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mauvaise com' 25022 : avance"),
(@ENTRY,0,30,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mauvaise com' 25022 : despawn"),
(@ENTRY,0,35,20,64,0,100,0,0,0,0,0,28,170010,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mauvaise com' 25022 : retire chaine");

/****************************************************************************************/
/* Délimiter notre territoire 25045 (A2) - 24546 (H2) */

DELETE FROM `quest_objectives` WHERE (QuestID = 25045);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(255736, 25045, 0, 0, 39029, 5, 0, 0, 'Hill Captured', 20444),
(255737, 25045, 0, 1, 39030, 10, 0, 0, 'Hill Defended', 20444);
DELETE FROM `quest_objectives` WHERE (QuestID = 24546);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(255083, 24546, 0, 0, 37667, 5, 0, 0, 'Point Captured', 20444),
(255084, 24546, 0, 1, 37668, 10, 0, 0, 'Point Defended', 20444);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21047113, 15000022, 1, 0, 0, 1, 0, 0, -2109.92, -2054.89, 94.0874, 4.01979, 0, 0, 0.905135, -0.425124, 300, 0, 1, 0),
(21047112, 15000022, 1, 0, 0, 1, 0, 0, -2152.94, -2124.32, 91.7535, 1.64985, 0, 0, 0.734498, 0.678611, 300, 0, 1, 0);

#------A2
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000217, 0, 0, 0, 0, 0, 29352, 0, 0, 0, 'Trigger Colline capturée', '', 'Délimiter notre territoire 25045 (A2)', '', 0, 33, 33, 0, 0, 11, 0, 0.001, 0.001, 1, 0, 0, 2000, 2000, 1, 1, 1, 131076, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 128, '', 20173);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117957, 15000217, 1, 0, 0, 1, 0, 0, 11686, 0, -2132.25, -2081.95, 99.2977, 1.66163, 1, 0, 0, 80, 0, 0, 0, 33685510, 0, 0);
-- Trigger Colline capturée SAI
SET @ENTRY := 15000217;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,10,0,100,0,1,10,15000,15000,33,37667,0,0,0,0,0,7,0,0,0,0,0,0,0,"Délimiter notre territoire 25045 (A2) : credit capture"),
(@ENTRY,0,25,0,60,0,100,0,0,0,45000,60000,70,0,0,0,0,0,0,9,39030,0,50,0,0,0,0,"Délimiter notre territoire 25045 (A2) : respawn garde");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(39030, 0, 0, 0, 0, '', 30722, 30723, 30724, 30726, 'Grunt de la Désolation', '', '', '', 0, 32, 33, 0, 0, 125, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 37706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 1, 3, 1, 0, 0, 1, 0, 0, '', 20173);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (39030, 1, 11763, 2052, 0, 18019);
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE (entry = 39030);
-- Grunt de la Désolation SAI
SET @ENTRY := 39030;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,1,0,100,0,5,40,20000,60000,69,0,0,0,0,0,0,1,0,0,0,-2131.2065,-2086.4248,99.1316,0,"Avance vers la colline"),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre");


#------H2
DELETE FROM `creature` WHERE `creature`.`guid` = 299709;
DELETE FROM `creature` WHERE `creature`.`guid` = 299709;
DELETE FROM `creature` WHERE `creature`.`guid` = 299711;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21047132, 192227, 1, 0, 0, 1, 0, 0, -2097.42, -1940.24, 92.8921, 4.52789, 6.5861e-44, 0, 0.769239, -0.638961, 300, 255, 1, 0),
(21047129, 201781, 1, 0, 0, 1, 0, 0, -2089.62, -1890.02, 97.0271, 1.71419, 0, 0, 0.755946, 0.654635, 300, 0, 1, 0),
(21047135, 15000022, 1, 0, 0, 1, 0, 0, -2123.77, -1891.99, 91.6821, 4.92647, 0, 0, 0.627514, -0.778605, 300, 0, 1, 0),
(21047134, 15000022, 1, 0, 0, 1, 0, 0, -2106.57, -1941.69, 95.8629, 4.92844, 0, 0, 0.626749, -0.779221, 300, 0, 1, 0),
(21047133, 15000022, 1, 0, 0, 1, 0, 0, -2054.46, -1861.35, 91.6668, 3.87797, 0, 0, 0.932981, -0.359925, 300, 0, 1, 0);

REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000218, 0, 0, 0, 0, 0, 29352, 0, 0, 0, 'Trigger Colline capturée', '', 'Délimiter notre territoire  24546 (H2)', '', 0, 33, 33, 0, 0, 85, 0, 0.001, 0.001, 1, 0, 0, 2000, 2000, 1, 1, 1, 131076, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21117975, 15000218, 1, 0, 0, 1, 0, 0, 11686, 0, -2089.22, -1891.4, 97.0126, 3.34782, 300, 0, 0, 22900, 0, 0, 0, 33685508, 0, 0);
-- Trigger Colline capturée SAI
SET @ENTRY := 15000218;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,10,0,100,0,1,10,15000,15000,33,37667,0,0,0,0,0,7,0,0,0,0,0,0,0,"Délimiter notre territoire  24546 (H2) : credit capture"),
(@ENTRY,0,25,0,60,0,100,0,0,0,45000,60000,70,0,0,0,0,0,0,9,37668,0,50,0,0,0,0,"Délimiter notre territoire  24546 (H2) : respawn garde");

-- FULL `creature_template` of entry 37668
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(37668, 0, 0, 0, 0, 0, 30698, 30699, 30700, 30701, 'Reconnaissance de Guet-du-Nord', '', '', '', 0, 32, 33, 0, 0, 1077, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 37585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 1, 3, 1, 0, 0, 1, 0, 0, '', 20173);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (37668, 1, 1899, 6078, 0, 18019);
UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE (entry = 37668);
UPDATE `creature_template_locale` SET `Name` = 'Reconnaissance de Guet-du-Nord' WHERE `creature_template_locale`.`entry` = 37668 AND `creature_template_locale`.`locale` = 'frFR';
-- Reconnaissance de Guet-du-Nord SAI
SET @ENTRY := 37668;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,1,0,100,0,0,0,20000,60000,69,0,0,0,0,0,0,1,0,0,0,-2089.31,-1892.22,96.9948,0,"Avance vers la colline"),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre");




/****************************************************************************************/
/* Jetez-les aux fers 25057 */
SET NAMES utf8;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(65530, 0, 0, "vous êtes en état d'arrestation", 0, 1, 1, 0, 0, 0, 0, '', 0);

/****************************************************************************************/
/* La revendication de la Balafre 25081 (A2) - 24618 (H2) */
UPDATE `gameobject_template` SET `type` = 1, `flags` = 32, `size` = 1.25, `Data0` = 0, `Data2` = 0, `Data3` = 0, `Data14` = 0 WHERE (entry = 201877);

REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000219, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Drapeau capturé", '', '', '', 0, 1, 1, 0, 0, 11, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 6, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (15000079, 0, 0, 33554432, 1, 0, NULL);    
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 15000079);     

DELETE FROM `quest_objectives` WHERE (QuestID = 25081) AND (ID IN (259939));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (259939, 25081, 0, 1, 15000219, 1, 0, 0, '', 20444);
DELETE FROM `quest_objectives` WHERE (QuestID = 24618);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(266351, 24618, 0, 1, 15000219, 1, 0, 0, '', 20444),
(266350, 24618, 0, 0, 37923, 10, 0, 0, '', 20444);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118012, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3244.27, -2003.4, 101.033, 1.52466, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118011, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3244.45, -2001.45, 100.382, 5.03539, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118010, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3244.16, -2001.55, 89.729, 3.35268, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118009, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3246.53, -2002.77, 100.168, 0.138431, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118008, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3245, -2003.16, 92.5203, 1.04949, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118005, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3244.65, -2002.39, 105.54, 3.13668, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118004, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3243.8, -2002.45, 103.314, 3.05618, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118003, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3246.48, -2002.27, 102.916, 6.15262, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118002, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3242.45, -2002.04, 100.401, 3.14847, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118001, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3243.83, -2002.37, 97.3833, 3.10135, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21118000, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3243.2, -2003.35, 92.878, 2.19226, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21117999, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3245.67, -2003.18, 87.944, 0.660733, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0);

-- Battlescar Flagpole SAI
SET @ENTRY := 201877;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,10,15,70,0,100,0,2,0,0,0,33,15000219,0,0,0,0,0,7,0,0,0,0,0,0,0," La revendication de la Balafre 25081 (A2) - 24618 (H2) : credit "),
(@ENTRY,1,15,16,61,0,100,0,0,0,0,0,12,15000065,2,20000,0,0,0,9,15000079,0,20,0,0,0,0," La revendication de la Balafre 25081 (A2) - 24618 (H2) : Visuel flamme"),
(@ENTRY,1,16,0,61,0,100,0,0,0,0,0,32,0,0,0,0,0,0,1,15000079,0,20,0,0,0,0," La revendication de la Balafre 25081 (A2) - 24618 (H2) : etat initial");

DELETE FROM `creature` WHERE `creature`.`guid` = 298890;
DELETE FROM `creature` WHERE `creature`.`guid` = 299042;
DELETE FROM `creature` WHERE `creature`.`guid` = 298909;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118018, 37923, 1, 0, 0, 1, 0, 0, 0, 1, -3251.02, -2047.03, 93.0304, 0.949358, 300, 10, 0, 4732, 0, 1, 0, 0, 0, 0),
(21118017, 37923, 1, 0, 0, 1, 0, 0, 0, 1, -3253.84, -2022.35, 87.5995, 1.4147, 300, 0, 0, 4732, 0, 0, 0, 0, 0, 0),
(21118016, 37923, 1, 0, 0, 1, 0, 0, 0, 1, -3225.43, -2021.51, 89.9608, 1.22032, 300, 0, 0, 4580, 0, 0, 0, 0, 0, 0),
(21118015, 37922, 1, 0, 0, 1, 0, 0, 0, 1, -3269.03, -1996.12, 88.4327, 5.77562, 300, 10, 0, 4732, 0, 1, 0, 0, 0, 0);

/****************************************************************************************/
/* … et enterrez le reste 25183 */

DELETE FROM `creature` WHERE `creature`.`guid` = 298753;
DELETE FROM `creature` WHERE `creature`.`guid` = 298703;
DELETE FROM `creature` WHERE `creature`.`guid` = 298749;

UPDATE `gameobject_template` SET `type` = 5, `size` = 2, `Data2` = 0 WHERE (entry = 202597);

REPLACEINTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `unkInt32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(202596, 10, 5791, 'Frazzlecraz Explosives', 'Interact', '', '', 0, 0, 0.5, 0, 0, 0, 30000, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', -18019);
-- Frazzlecraz Explosives SAI
SET @ENTRY := 202596;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,10,11,70,0,100,0,2,0,0,0,33,39315,0,0,0,0,0,7,0,0,0,-5519.81,693.753,375.138,4.96641,"… et enterrez le reste 25183 : credit"),
(@ENTRY,1,11,12,61,0,100,0,0,0,0,0,11,49762,0,0,0,0,0,7,0,5,0,0,0,0,0,"… et enterrez le reste 25183 : visuel");

UPDATE `gameobject` SET `animprogress` = '0', `state` = '1' WHERE `gameobject`.`id` = 202596;

-- Big Nasty Plunger SAI
SET @ENTRY := 202598;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,10,0,20,0,100,0,25183,0,0,0,11,60860,0,0,0,0,0,9,38821,0,25,0,0,0,0,"… et enterrez le reste 25183 : visuel explosion");

/****************************************************************************************/
/* Le dernier vol de Marley 25120 */
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118203, 39188, 1, 0, 0, 1, 0, 0, 0, 1, -4076.62, -2288.26, 124.488, 5.16461, 300, 0, 0, 2740, 0, 0, 0, 0, 0, 0),
(21118209, 15000064, 1, 0, 0, 1, 0, 0, 0, 0, -4080.8, -2290.56, 124.738, 2.71075, 300, 0, 0, 15974, 0, 0, 0, 0, 0, 0),
(21118206, 39179, 1, 0, 0, 1, 0, 0, 0, 0, -4081.09, -2290.37, 124.741, 2.34554, 300, 0, 0, 2490, 1067, 0, 0, 570426116, 32, 0);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39188, 0, 0, 0, 0, 0, 31261); # Feindre la mort permanent (Immobilisé)


UPDATE `creature_template` SET `gossip_menu_id` = 65529, `npcflag` = 3 WHERE (entry = 39155);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(65529, 0, 0, "En route pour la citadelle de Bael Modan", 0, 1, 1, 0, 0, 0, 0, '', 0);
-- Marley Twinbraid SAI
SET @ENTRY := 39155;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,62,0,100,0,65529,0,0,0,12,39179,2,120000,0,1,1,8,1,1,1,-4174.1547,-2133.5449,84.6736,0,"Invoc machine volante"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"fermer gossip menu");

SET @NAME := "Machine volante de Doublenattes";
SET @SUBNAME :="" ;
SET @LEVEL := 35;			
SET @ENTRY := 39179 ;  
SET @FACTION := 11;	
SET @WP := 11043808;	
SET @WPID := 19;		
SET @VITESSE :=2;	
SET @TAILLE :=0.75;		
SET @MODELID :=22878;	
SET @VEHICLEID := 292 ; 	
DELETE FROM `creature_template` WHERE (entry = @ENTRY);

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @MODELID, 0, 0, 0, @NAME, '', @SUBNAME, 'vehichleCursor', 0, @LEVEL, @LEVEL, 0, 0, @FACTION, 50331648, @VITESSE, @VITESSE, @TAILLE, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2048, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @VEHICLEID, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
-- Machine volante de Doublenattes SAI
SET @ENTRY := 39179;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043808,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager"),
(@ENTRY,0,15,0,40,0,100,0,19,11043808,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Despawn forcé en fin de wp"),
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,25,0,27,0,100,0,0,0,0,0,33,39187,0,0,0,0,0,23,0,0,0,0,0,0,0,"Le dernier vol de Marley 25120 : credit");

DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043808 ; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043808, 1, -4174.07, -2132.71, 89.7281, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 2, -4169.18, -2110.62, 97.8139, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 3, -4137.51, -2092.37, 108.044, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 4, -4098.66, -2104.1, 115.282, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 5, -4058.7, -2124.61, 125.554, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 6, -4036.47, -2156.11, 130.475, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 7, -4044.99, -2186.3, 139.392, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 8, -4088.04, -2214.26, 149.367, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 9, -4121.69, -2240.65, 147.529, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 10, -4177.3, -2246.33, 147.863, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 11, -4209.06, -2183.64, 165.822, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 12, -4186.53, -2140.79, 165.256, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 13, -4137.92, -2130.84, 186.63, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 14, -4091.76, -2144.67, 180.12, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 15, -4070.58, -2189.72, 178.789, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 16, -4067.82, -2242.41, 180.698, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 17, -4067.66, -2274.43, 150.742, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 18, -4067.63, -2288.63, 131.301, "Taride du sud - Machine volante de Doublenattes"),
(11043808, 19, -4070.97, -2292.39, 125.835, "Taride du sud - Machine volante de Doublenattes");

/****************************************************************************************/
/* Au secours de Bael'dun 25153 - Phase 170 */
DELETE FROM `creature_queststarter` WHERE (quest = 25153) AND (id IN (39218, 5847));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5847, 25153);
DELETE FROM `creature_questender` WHERE (quest = 25153) AND (id IN (39218, 5847));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (5847, 25153);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21097073, 5847, 1, 0, 0, 1, 0, 0, 0, 1, -4120.43, -2281.93, 125.029, 1.63746, 14400, 0, 0, 4980, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_area` WHERE  `spell_area`.`area` = 4872  AND `spell_area`.`quest_start` = 25153 ; 
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 4872, 25153, 0, 0, 0, 2, 1, 10, 65);	# Phase 170
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 4872, 25153, 0, 0, 0, 2, 1, 10, 65);	

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(39219, 0, 0, 0, 0, 0, 46771, 0, 0, 0, 'Eboulement', '', '', '', 0, 1, 1, 4, 0, 103, 0, 0.001, 0.001, 0.25, 0, 0, 0, 0, 1, 1, 1, 131076, 32768, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);
UPDATE `creature_template_locale` SET `Name` = 'Survivant coincé sous les décombres' WHERE `creature_template_locale`.`entry` = 39219 AND `creature_template_locale`.`locale` = 'frFR';

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000220, 0, 0, 0, 0, 0, 36493, 0, 0, 0, 'Valve', '', '', 'Interact', 0, 1, 1, 0, 0, 35, 1, 1, 1, 1, 0, 0, 2000, 2000, 1, 1, 1, 131078, 34816, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (15000220, 0, 0, 33554432, 1, 0, NULL);   
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 15000220);  
SET @ENTRY := 15000220;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,64,0,100,0,0,0,0,0,41,500,0,0,0,0,0,9,15000221,0,5,0,0,0,0,"Eteindre flame"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"fermer gossip menu");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000221, 0, 0, 0, 0, 0, 23767, 11686, 0, 0, 'Flame x3-Degat', '', '', '', 0, 40, 40, 0, 0, 103, 0, 0.001, 0.001, 3, 0, 0, 2000, 2000, 1, 1, 1, 33554438, 34816, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 20173);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (15000221, 0, 0, 0, 1, 0, '102045');
SET @ENTRY := 15000221;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,60,0,100,0,0,0,5000,5000,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Passif"),
(@ENTRY,0,15,0,60,0,100,0,0,0,2000,2000,11,108853,0,0,0,0,0,17,0,1,0,0,0,0,0,"Trait de feu");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118202, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4054.41, -2364.14, 135.855, 4.87792, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118201, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4093.29, -2375.43, 135.855, 2.39207, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118200, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4083.51, -2399, 135.856, 4.26727, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118199, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4071.32, -2418.76, 135.856, 0.479692, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118198, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4049.84, -2410.45, 135.853, 3.64092, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118197, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4038.76, -2396.57, 135.856, 4.16945, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118196, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4038.58, -2407.35, 126.131, 1.02684, 300, 10, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118195, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4057.25, -2389.54, 126.13, 3.42658, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118194, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4074.36, -2372.32, 126.13, 0.132652, 300, 10, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118193, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4104.77, -2357.68, 127.52, 1.56726, 300, 5, 0, 3712, 0, 1, 0, 0, 0, 0),
(21118192, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4093.4, -2372.11, 126.13, 3.3405, 300, 5, 0, 3712, 0, 1, 0, 0, 0, 0),
(21118191, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4086.73, -2390.91, 124.742, 1.41587, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118190, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4093.63, -2393.69, 121.693, 5.86603, 300, 3, 0, 3712, 0, 1, 0, 0, 0, 0),
(21118189, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4085.04, -2389.29, 118.076, 4.69138, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118188, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4069.13, -2391.21, 118.076, 3.8785, 300, 0, 0, 3468, 0, 0, 0, 0, 0, 0),
(21118187, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4082.44, -2364.45, 108.909, 4.29027, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118186, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4071.34, -2364.06, 108.909, 1.82271, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118185, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4059.83, -2385.55, 118.076, 2.7004, 300, 5, 0, 3712, 0, 1, 0, 0, 0, 0),
(21118184, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4051.24, -2370.25, 118.076, 4.4106, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118183, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4045.74, -2376.62, 124.742, 2.52171, 300, 5, 0, 3712, 0, 1, 0, 0, 0, 0),
(21118182, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4051.98, -2353.97, 126.131, 3.19322, 300, 0, 0, 3712, 0, 1, 0, 0, 0, 0),
(21118181, 34911, 1, 0, 0, 1, 170, 0, 0, 0, -4056.04, -2340.29, 126.937, 3.02826, 300, 5, 0, 3468, 0, 1, 0, 0, 0, 0),
(21118178, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4093.48, -2374.53, 135.855, 5.26666, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118177, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4093.48, -2374.53, 135.855, 5.26666, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118176, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4056.99, -2354.78, 135.856, 4.86218, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118175, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4056.99, -2354.78, 135.856, 4.86218, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118174, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4050.7, -2402.66, 126.13, 2.33517, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118173, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4050.7, -2402.66, 126.13, 2.33517, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118172, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4032.37, -2395.24, 135.854, 4.31829, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118171, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4032.37, -2395.24, 135.854, 4.31829, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118170, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4054.53, -2408.54, 135.854, 5.20579, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118169, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4054.53, -2408.54, 135.854, 5.20579, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118168, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4073.85, -2417.48, 135.856, 6.04813, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118167, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4073.85, -2417.48, 135.856, 6.04813, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118166, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4067.46, -2419.25, 126.132, 5.78502, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118165, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4067.46, -2419.25, 126.132, 5.78502, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118164, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4075.36, -2380.6, 126.131, 1.26309, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118163, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4075.36, -2380.6, 126.131, 1.26309, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118162, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4083.44, -2395.22, 124.742, 1.85803, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118161, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4083.44, -2395.22, 124.742, 1.85803, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118160, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4092.97, -2398.47, 121.132, 1.52423, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118159, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4092.97, -2398.47, 121.132, 1.52423, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118158, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4091.68, -2385.8, 118.077, 6.22484, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118157, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4091.68, -2385.8, 118.077, 6.22484, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118156, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4070.42, -2378.34, 110.298, 1.86784, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118155, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4070.42, -2378.34, 110.298, 1.86784, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118154, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4078.15, -2359.26, 108.909, 5.10171, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118153, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4078.15, -2359.26, 108.909, 5.10171, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118152, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4048.38, -2366.68, 118.076, 4.11604, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118151, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4048.38, -2366.68, 118.076, 4.11604, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118150, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4041.46, -2379.41, 125.298, 2.02098, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118149, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4041.46, -2379.41, 125.298, 2.02098, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118147, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4062.09, -2341.28, 127.24, 4.73845, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118146, 39219, 1, 0, 0, 1, 170, 0, 0, 0, -4063.21, -2328.47, 127.519, 4.22794, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0),
(21118145, 39218, 1, 0, 0, 1, 170, 0, 0, 0, -4063.21, -2328.47, 127.519, 4.22794, 300, 0, 0, 2486, 0, 0, 0, 0, 0, 0),
(21118144, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4076.83, -2343.32, 126.597, 5.97153, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118143, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4089.62, -2349.73, 126.764, 4.34575, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118142, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4099.93, -2357.82, 127.422, 4.35753, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118141, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4048.1, -2389.74, 127.301, 0.605291, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118140, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4053.12, -2380.11, 127.431, 1.39069, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118139, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4041.88, -2405.92, 126.13, 6.14038, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118138, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4047.51, -2407.86, 126.131, 2.09951, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118137, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4046.66, -2415.51, 126.839, 4.33201, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118136, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4041.41, -2409.98, 126.13, 3.57999, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118135, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4031.6, -2402.78, 127.109, 0.589588, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118134, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4037.19, -2401.19, 127.605, 1.61453, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118133, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4061.93, -2350.51, 135.855, 2.51381, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118132, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4051.88, -2352.74, 136.294, 0.495333, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118131, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4048.95, -2363.67, 135.857, 1.78142, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118130, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4051.3, -2368.73, 135.857, 2.18198, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118129, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4053.73, -2369.63, 135.857, 2.95756, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118128, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4051.61, -2375.35, 135.857, 0.463918, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118127, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4047.95, -2362.95, 135.857, 1.21122, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118126, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4044.82, -2365.33, 137.363, 0.551487, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118125, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4051.93, -2379.05, 136.696, 2.7133, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118124, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4040.38, -2375.41, 137.576, 0.685007, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118123, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4038.1, -2379.75, 136.07, 0.655554, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118122, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4039.42, -2391.24, 135.855, 2.04964, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118121, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4030.79, -2404.85, 136.195, 5.73315, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118120, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4042.59, -2402.52, 136.653, 3.49673, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118119, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4047.37, -2398.36, 135.854, 1.6157, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118118, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4041.14, -2406.96, 135.854, 0.559343, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118117, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4054.03, -2418.17, 136.751, 5.50931, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118116, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4045.1, -2413.72, 136.381, 5.30707, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118115, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4058.86, -2400.87, 136.927, 2.65243, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118114, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4052.52, -2396.52, 136.655, 1.23871, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118113, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4058.07, -2405.47, 138.598, 1.81009, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118112, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4067.21, -2407.55, 135.853, 2.69956, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118111, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4068.71, -2416.98, 135.856, 5.14804, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118110, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4064.27, -2417.29, 135.853, 3.71272, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118109, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4096.75, -2369.4, 135.854, 1.90827, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118108, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4089.42, -2370.52, 135.854, 0.292316, 5, 5, 0, 2948, 0, 1, 0, 0, 0, 0),
(21118107, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4094.65, -2385.02, 137.144, 3.62633, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118106, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4085.57, -2376.57, 136.597, 1.33689, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118105, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4099.14, -2375.54, 135.855, 3.63811, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118104, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4081.02, -2391.07, 135.855, 3.39856, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118103, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4088.38, -2384.68, 135.855, 1.94754, 5, 5, 0, 2948, 0, 1, 0, 0, 0, 0),
(21118102, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4091.64, -2389.77, 135.855, 3.42801, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118101, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4076.51, -2398.51, 135.855, 1.30744, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118100, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4088.35, -2398.21, 136.709, 3.71075, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118099, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4085.01, -2404.98, 135.856, 4.13879, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118098, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4071.82, -2422.34, 135.855, 5.10483, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118097, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4076.01, -2425.85, 131.731, 2.04767, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118096, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4074.89, -2430.86, 132.028, 1.46647, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118095, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4076.05, -2424.35, 132.65, 4.73674, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118094, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4070.58, -2423.8, 127.037, 4.24678, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118093, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4073.42, -2423.1, 126.793, 4.23304, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118092, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4071.49, -2417.44, 126.212, 2.11639, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118091, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4054.95, -2419.18, 126.454, 5.85685, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118090, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4058.8, -2405.61, 126.131, 0.66537, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118089, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4066.59, -2411.1, 126.408, 0.527924, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118088, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4065.49, -2407.43, 127.341, 5.98055, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118087, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4065.33, -2402.52, 126.13, 3.97582, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118086, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4067.24, -2399.41, 126.13, 2.99015, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118085, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4066.28, -2393.42, 126.251, 3.12366, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118084, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4067.5, -2386.25, 126.131, 4.49615, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118083, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4074.28, -2387.01, 126.131, 4.75729, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118082, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4066.69, -2365.12, 126.131, 5.44452, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118081, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4063.99, -2377.78, 126.131, 0.952037, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118080, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4067.68, -2373.36, 126.131, 0.0586468, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118079, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4080.28, -2373, 126.131, 4.58058, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118078, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4061.45, -2360.64, 126.13, 2.97051, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118077, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4054.13, -2366.49, 126.303, 3.86195, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118076, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4050.07, -2360.54, 125.254, 2.06339, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118075, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4037.74, -2381.97, 125.299, 6.15531, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118074, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4044.82, -2385.5, 126.84, 4.74748, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118073, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4048.95, -2370.91, 125.633, 5.16179, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118072, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4050.25, -2379.12, 118.871, 4.24287, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118071, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4045.37, -2370.15, 118.839, 5.84312, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118070, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4044.41, -2365.91, 119.344, 0.396384, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118069, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4054.66, -2370.52, 118.076, 0.451363, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118068, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4054.89, -2365.86, 118.214, 5.22462, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118066, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4084.97, -2383.5, 118.077, 3.7029, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118065, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4083.16, -2379.77, 119.486, 2.6328, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118064, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4075.66, -2395.85, 119.312, 4.32337, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118063, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4058.95, -2368.49, 118.567, 1.15232, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118062, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4054.83, -2373.49, 118.076, 0.486691, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118061, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4067.03, -2379.05, 110.953, 1.85466, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118060, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4067.98, -2385.33, 111.226, 4.77497, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118059, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4064.11, -2383.46, 111.316, 5.76653, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118058, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4079.95, -2372.31, 109.791, 3.69897, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118057, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4065.8, -2364.49, 109.12, 0.946152, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118056, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4071.72, -2352.24, 110.152, 2.08891, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118055, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4065.84, -2358.38, 111.54, 0.520072, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118054, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4066.99, -2356.53, 111.194, 0.429752, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118053, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4086.85, -2366.02, 111.089, 3.59491, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118052, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4085.82, -2367.85, 111.073, 3.65578, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118051, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4087.33, -2359.74, 109.601, 1.94165, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118050, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4087.28, -2358.03, 111.382, 2.85663, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118049, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4080.72, -2353.79, 109.071, 1.97698, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118048, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4082.1, -2386.36, 118.077, 0.467056, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118047, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4090.61, -2395.76, 121.132, 0.549519, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118046, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4093.32, -2376.81, 126.131, 3.58705, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118045, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4095.53, -2380.15, 126.131, 5.22028, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118044, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4102.86, -2356.34, 127.52, 2.00407, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118043, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4105.48, -2357.54, 127.52, 2.00407, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118042, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4108.47, -2358.93, 127.52, 1.99033, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118041, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4095.66, -2349.33, 127.52, 1.97855, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118040, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4089.81, -2370.14, 126.131, 3.63573, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118039, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4060.83, -2356.66, 126.131, 3.63573, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118038, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4050.63, -2359.28, 126.131, 5.2242, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118037, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4054.22, -2339.74, 128.723, 3.35691, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118036, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4058.88, -2348.46, 126.131, 5.06909, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118035, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4056.05, -2347.44, 126.131, 5.06909, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118034, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4053.23, -2346.41, 126.131, 5.02785, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118033, 15000220, 1, 0, 0, 1, 170, 0, 0, 0, -4076.4, -2332.95, 129.241, 5.11424, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118032, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4071.02, -2334.42, 127.519, 0.443082, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0),
(21118029, 15000221, 1, 0, 0, 1, 170, 0, 0, 0, -4100.06, -2347.65, 127.52, 3.66125, 5, 0, 0, 2948, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* Il nous faut de la bière ! 25151 - Phase 170*/
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21047154, 202567, 1, 0, 0, 1, 170, 0, -4085.86, -2404.89, 125.999, 2.04905, 0, 0, 0.854468, 0.519504, 300, 0, 1, 0),
(21047153, 202567, 1, 0, 0, 1, 170, 0, -4045.85, -2382.98, 126.756, 1.9666, 0, 0, 0.83233, 0.55428, 300, 0, 1, 0);

DELETE FROM `spell_area` WHERE  `spell_area`.`area` = 4872  AND `spell_area`.`quest_start` = 25151 ; 
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 4872, 25151, 0, 0, 0, 2, 1, 10, 65);	# Phase 170
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 4872, 25151, 0, 0, 0, 2, 1, 10, 65);	
/****************************************************************************************/
/* Passage en force 24862 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 0 WHERE (ID = 24862); 
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118277, 37170, 1, 0, 0, 1, 0, 0, 0, 1, -272.109, -948.743, 13.9587, 5.75751, 300, 0, 0, 3800, 0, 0, 0, 0, 0, 0),
(21118276, 37170, 1, 0, 0, 1, 0, 0, 0, 1, -216.687, -967.496, 14.4224, 3.26779, 300, 5, 0, 4196, 0, 1, 0, 0, 0, 0),
(21118275, 37170, 1, 0, 0, 1, 0, 0, 0, 1, -330.737, -973.13, 22.7873, 2.29194, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21118274, 37170, 1, 0, 0, 1, 0, 0, 0, 1, -155.375, -1024.06, 26.3463, 5.01334, 300, 10, 0, 4196, 0, 1, 0, 0, 0, 0),
(21118273, 37170, 1, 0, 0, 1, 0, 0, 0, 1, -155.571, -1012.18, 22.2352, 0.1478, 300, 10, 0, 3800, 0, 1, 0, 0, 0, 0),
(21118272, 37170, 1, 0, 0, 1, 0, 0, 0, 1, -207.835, -1011.75, 20.3624, 3.5093, 300, 5, 0, 3800, 0, 1, 0, 0, 0, 0),
(21118271, 37170, 1, 0, 0, 1, 0, 0, 0, 1, -213.177, -995.25, 16.7375, 5.63577, 300, 5, 0, 4196, 0, 1, 0, 0, 0, 0);
/****************************************************************************************/
/* Évaluer la destruction 25191 */
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 25191);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 28551);
DELETE FROM `creature_questender` WHERE (quest = 25191) AND (id IN (38383));

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000222, 0, 0, 0, 0, 0, 22720, 0, 0, 0, 'Machine volante', "Navette pour Fort de Guet-du-Nord", '', 'vehichleCursor', 0, 28, 28, 0, 0, 11, 50331648, 3, 3, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2048, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);

SET @ENTRY := 15000222 ; 
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,15,0,40,0,100,0,@WPID,@WP,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Despawn forcé en fin de wp"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,@WP,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");

DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043809; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043809, 1, -359.057, -1534.66, 91.7319,"Évaluer la destruction 25191"),
(11043809, 2, -346.584, -1547.94, 131.063,"Évaluer la destruction 25191"),
(11043809, 3, -309.11, -1614.34, 158.395,"Évaluer la destruction 25191"),
(11043809, 4, -307.627, -1641.23, 156.276,"Évaluer la destruction 25191"),
(11043809, 5, -325.802, -1656.58, 149.041,"Évaluer la destruction 25191"),
(11043809, 6, -383.206, -1661.54, 136.636,"Évaluer la destruction 25191"),
(11043809, 7, -441.002, -1681.8, 112.134,"Évaluer la destruction 25191"),
(11043809, 8, -496.248, -1719.38, 81.7555,"Évaluer la destruction 25191"),
(11043809, 9, -546.862, -1749.25, 64.1197,"Évaluer la destruction 25191"),
(11043809, 10, -619.229, -1755.38, 55.8821,"Évaluer la destruction 25191"),
(11043809, 11, -663.025, -1775.16, 64.2593,"Évaluer la destruction 25191"),
(11043809, 12, -716.493, -1806.79, 93.7142,"Évaluer la destruction 25191"),
(11043809, 13, -775.387, -1826.86, 103.594,"Évaluer la destruction 25191"),
(11043809, 14, -878.985, -1845.87, 123.257,"Évaluer la destruction 25191"),
(11043809, 15, -971.003, -1875.15, 119.956,"Évaluer la destruction 25191"),
(11043809, 16, -1067.44, -1935.52, 118.245,"Évaluer la destruction 25191"),
(11043809, 17, -1128.36, -2004.56, 116.953,"Évaluer la destruction 25191"),
(11043809, 18, -1179.11, -2108.14, 127.285,"Évaluer la destruction 25191"),
(11043809, 19, -1224.09, -2219.87, 147.992,"Évaluer la destruction 25191"),
(11043809, 20, -1286.18, -2385.16, 170.931,"Évaluer la destruction 25191"),
(11043809, 21, -1380.67, -2523.28, 167.12,"Évaluer la destruction 25191"),
(11043809, 22, -1443.47, -2589.27, 167.768,"Évaluer la destruction 25191"),
(11043809, 23, -1547.6, -2647.88, 148.843,"Évaluer la destruction 25191"),
(11043809, 24, -1648.55, -2731.69, 149.543,"Évaluer la destruction 25191"),
(11043809, 25, -1700.6, -2801.01, 153.61,"Évaluer la destruction 25191"),
(11043809, 26, -1735.25, -2979.4, 112.408,"Évaluer la destruction 25191"),
(11043809, 27, -1757.06, -3055.54, 102.977,"Évaluer la destruction 25191"),
(11043809, 28, -1759.23, -3131.05, 104.15,"Évaluer la destruction 25191"),
(11043809, 29, -1721.17, -3267.72, 103.519,"Évaluer la destruction 25191"),
(11043809, 30, -1721.59, -3341.32, 97.2982,"Évaluer la destruction 25191"),
(11043809, 31, -1746.49, -3424.81, 120.06,"Évaluer la destruction 25191"),
(11043809, 32, -1791.23, -3508.8, 139.818,"Évaluer la destruction 25191"),
(11043809, 33, -1840.86, -3581.36, 133.593,"Évaluer la destruction 25191"),
(11043809, 34, -1929.67, -3667.96, 119.853,"Évaluer la destruction 25191"),
(11043809, 35, -2130.86, -3814.56, 121.762,"Évaluer la destruction 25191"),
(11043809, 36, -2201.07, -3820.4, 119.108,"Évaluer la destruction 25191"),
(11043809, 37, -2248.57, -3795.65, 119.945,"Évaluer la destruction 25191"),
(11043809, 38, -2264.98, -3759.51, 117.882,"Évaluer la destruction 25191"),
(11043809, 39, -2244.1, -3716.78, 113.521,"Évaluer la destruction 25191"),
(11043809, 40, -2223, -3722.54, 102.447,"Évaluer la destruction 25191"),
(11043809, 41, -2216.87, -3725.24, 91.4159,"Évaluer la destruction 25191");

/****************************************************************************************/
/* Dévorés vivants 25002 */
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118285, 38878, 1, 0, 0, 1, 0, 0, 0, 1, -1869.24, -3212.83, 84.9194, 3.91849, 300, 0, 0, 3712, 0, 0, 0, 0, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21047200, 202405, 1, 0, 0, 1, 0, 0, -2012.69, -3235.94, 92.6588, 1.39933, 0, 0, 0.643963, 0.765057, 300, 0, 1, 0),
(21047199, 202405, 1, 0, 0, 1, 0, 0, -2041.28, -3257.49, 92.0115, 3.94206, 0, 0, 0.92097, -0.389633, 300, 0, 1, 0),
(21047198, 202405, 1, 0, 0, 1, 0, 0, -2034.22, -3265.35, 91.9079, 4.37796, 0, 0, 0.814934, -0.579554, 300, 0, 1, 0),
(21047197, 202405, 1, 0, 0, 1, 0, 0, -2014.21, -3213.41, 91.327, 5.23796, 0, 0, 0.499144, -0.866519, 300, 0, 1, 0),
(21047196, 202405, 1, 0, 0, 1, 0, 0, -2026.21, -3192.09, 91.6197, 2.3045, 0, 0, 0.913681, 0.406432, 300, 0, 1, 0),
(21047195, 202405, 1, 0, 0, 1, 0, 0, -1996.86, -3164.92, 93.2836, 3.65734, 0, 0, 0.966934, -0.255027, 300, 0, 1, 0),
(21047194, 202405, 1, 0, 0, 1, 0, 0, -1979.34, -3191.11, 92.0528, 3.59255, 0, 0, 0.974687, -0.223574, 300, 0, 1, 0),
(21047193, 202405, 1, 0, 0, 1, 0, 0, -1953.59, -3178.33, 92.627, 4.10699, 0, 0, 0.885746, -0.46417, 300, 0, 1, 0),
(21047192, 202405, 1, 0, 0, 1, 0, 0, -1926.32, -3191.98, 91.0521, 3.74767, 0, 0, 0.954434, -0.298421, 300, 0, 1, 0),
(21047191, 202405, 1, 0, 0, 1, 0, 0, -1869.44, -3229.69, 84.2473, 1.95696, 0, 0, 0.82965, 0.558284, 300, 0, 1, 0);
/****************************************************************************************/
/* Qui a fait ça ? 25163 - Phase 170*/
DELETE FROM `creature_questender` WHERE (quest = 25163) AND (id IN (39220));
DELETE FROM `spell_area` WHERE  `spell_area`.`area` = 4872  AND `spell_area`.`quest_start` = 25163 ; 
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 4872, 25163, 0, 0, 0, 2, 1, 10, 65);	# Phase 170
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 4872, 25163, 0, 0, 0, 2, 1, 10, 65);	
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21096808, 38152, 1, 0, 0, 1, 170, 0, 0, 0, -4062.19, -2344.42, 126.729, 2.47462, 300, 0, 0, 3048, 0, 0, 0, 0, 64, 0),
(21118287, 39220, 1, 0, 0, 1, 0, 0, 0, 1, -4108.23, -2314.87, 124.967, 1.07077, 300, 0, 0, 2616, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39220, 0, 0, 8, 1, 0, 104015);
UPDATE `creature_template` SET `unit_flags` = 131074 WHERE (entry = 39220);

/****************************************************************************************/
/* Le sang des Tarides 24606 */
UPDATE `quest_template_locale` SET `LogDescription` = 'Collectez 1 Bijoux joyau de sang sur des Hurans tranchecrins.' WHERE `quest_template_locale`.`ID` = 24606 AND `quest_template_locale`.`locale` = 'frFR';

REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(37560, 49932, 0, 100, 0, 1, 0, 1, 1, NULL),
(37660, 49932, 0, 100, 0, 1, 0, 1, 1, NULL),
(37661, 49932, 0, 100, 0, 1, 0, 1, 1, NULL);
DELETE FROM `quest_objectives` WHERE (QuestID = 24606) AND (ID IN (265619));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(265619, 24606, 1, 0, 49934, 1, 0, 0, '', 20444);
UPDATE `creature_loot_template` SET `Chance` = '30' WHERE  `creature_loot_template`.`Item` = 49934;

/****************************************************************************************/
/* Nettoyez la Haute-route 24504 */
DELETE FROM `creature_queststarter` WHERE (quest = 24504) AND (id IN (37137));
UPDATE `quest_template` SET `RewardNextQuest` = 24504 WHERE (ID = 26069);
UPDATE `quest_template_addon` SET `NextQuestID` = 24504 WHERE (ID = 26069);

/****************************************************************************************/
/* Quetes obsolètes */
DELETE FROM `creature_queststarter` WHERE `quest` = 882;
DELETE FROM `creature_questender` WHERE `quest` = 882;
DELETE FROM `creature_queststarter` WHERE `quest` = 883;
DELETE FROM `creature_questender` WHERE `quest` = 883;
DELETE FROM `creature_queststarter` WHERE `quest` = 884;
DELETE FROM `creature_questender` WHERE `quest` = 884;
DELETE FROM `creature_queststarter` WHERE `quest` = 885;
DELETE FROM `creature_questender` WHERE `quest` = 885;
DELETE FROM `creature_queststarter` WHERE `quest` = 904;
DELETE FROM `creature_questender` WHERE `quest` = 904;
DELETE FROM `creature_queststarter` WHERE `quest` = 907;
DELETE FROM `creature_questender` WHERE `quest` = 907;
DELETE FROM `creature_queststarter` WHERE `quest` = 913;
DELETE FROM `creature_questender` WHERE `quest` = 913;
DELETE FROM `creature_queststarter` WHERE `quest` = 3261;
DELETE FROM `creature_questender` WHERE `quest` = 3261;


/****************************************************************************************/
/* Briseur de siège 24569 */
DELETE FROM `quest_objectives` WHERE (QuestID = 24569);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (267157, 24569, 2, 0, 201792, 10, 0, 0, 'Siege Engine Destroyed', 20444);
UPDATE `quest_template` SET `StartItem` = 0 WHERE (ID = 24569);
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 0 WHERE (ID = 24569);
UPDATE `quest_template_locale` SET `LogDescription` = 'Détruisez 10 Engins de siège de Guet-du-Nord aux Portes de Mulgore.', `QuestDescription` = '$n, vous avez fait vos preuves sur les champs du Sang, mais l’Alliance menace encore nos amis taurens.$b$BLes engins de siège, au-delà des portes de Mulgore, sont comme une lance pointée vers notre cœur. Je veux que vous alliez aux portes, au sud d’ici, et que vous neutralisiez ces machines de siège.' WHERE `quest_template_locale`.`ID` = 24569 AND `quest_template_locale`.`locale` = 'frFR';

UPDATE `gameobject_template` SET `IconName` = 'Attack', `flags` = 0, `size` = 1.25, `Data5` = 1, `Data6` = 120 WHERE (entry = 201792);
/****************************************************************************************/
/* Inspection du fort de la désolation 24577 */
UPDATE `quest_template_locale` SET `LogDescription` = 'Pénétrez dans le Fort de la Désolation et informez Gar’dul que Garde-sanglante va arriver.', `QuestDescription` = 'Grâce à vous, la menace à court terme a été levée, mais mon travail dans les Tarides ne fait que commencer.$b$bLe Séjour de l’honneur a été capturé et Taurajo a été mis à sac, tout ça alors que le seigneur de guerre Gar’dul avait le commandement de la région. Le chef de guerre m’a envoyé pour réparer ses erreurs.$b$bJ’aimerais que vous vous rendiez avant moi au fort de la Désolation, au sud. Dites à Gar’dul qu’il va devoir rendre des comptes.', `QuestCompletionLog` = 'Pénétrez dans le Fort de la Désolation et informez Gar’dul que Garde-sanglante arrive.' WHERE `quest_template_locale`.`ID` = 24577 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `gossip_menu_option` SET `option_id` = '1', `npc_option_npcflag` = '1' WHERE `gossip_menu_option`.`menu_id` = 10935 AND `gossip_menu_option`.`id` = 0;
UPDATE `locales_gossip_menu_option` SET `option_text_loc2` = 'Je suis ici au nom du grand seigneur de guerre "Garde-sanglante" , qui veut que vous sachiez qu''il arrivera sous peu.' WHERE `locales_gossip_menu_option`.`menu_id` = 10935 AND `locales_gossip_menu_option`.`id` = 0;
-- Warlord Gar'dul SAI
SET @ENTRY := 37811;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,9,0,100,0,0,10,10000,14000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,20,25,62,0,100,0,10935,0,0,0,33,37816,0,0,0,0,0,7,0,0,0,0,0,0,0,"Inspection du fort de la désolation 24577 : Credit"),
(@ENTRY,0,25,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Inspection du fort de la désolation 24577 : fermer gossip");

/****************************************************************************************/
/* La relève de la Gar'dul 24591 */
DELETE FROM `creature_questender` WHERE (quest = 24591) AND (id IN (37811));
UPDATE `creature_template` SET `unit_flags` = 131074, `flags_extra` = 128 WHERE (entry = 37866);
-- Bloodhilt's Area Trigger and Carry Bunny SAI
SET @ENTRY := 37866;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,10,0,100,0,1,10,30000,30000,33,37843,0,0,0,0,0,7,0,0,0,0,0,0,0,"La relève de la Gar'dul 24591 : Credit 1"),
(@ENTRY,0,15,20,61,0,100,0,0,15,3000,3000,1,0,0,0,0,0,0,9,37837,0,20,0,0,0,0,"La relève de la Gar'dul 24591 : blabla"),
(@ENTRY,0,20,0,61,0,100,0,0,15,3000,3000,33,37811,0,0,0,0,0,7,0,0,0,0,0,0,0,"La relève de la Gar'dul 24591 : Credit 2");

REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (21118350, 0, 0, 0, 1, 0, '29266'); # Mort
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118357, 67334, 1, 0, 0, 1, 0, 0, 0, 1, -3219.47, -1649.82, 131.234, 4.78693, 300, 0, 0, 25288, 0, 0, 0, 0, 0, 0),
(21118356, 67334, 1, 0, 0, 1, 0, 0, 0, 1, -3210.68, -1666.3, 131.004, 3.08065, 300, 0, 0, 25288, 0, 0, 0, 0, 0, 0),
(21118355, 67334, 1, 0, 0, 1, 0, 0, 0, 1, -3219.98, -1674.45, 131.003, 1.73762, 300, 0, 0, 25288, 0, 0, 0, 0, 0, 0),
(21118354, 67334, 1, 0, 0, 1, 0, 0, 0, 1, -3230.65, -1662.32, 131.003, 6.09462, 300, 0, 0, 25288, 0, 0, 0, 0, 0, 0),
(21118350, 37811, 1, 0, 0, 1, 0, 0, 0, 1, -3218.11, -1664.91, 130.953, 0.920809, 300, 0, 0, 5726, 0, 0, 0, 570556422, 32, 0),
(21118349, 37837, 1, 0, 0, 1, 0, 0, 0, 1, -3220.64, -1662.19, 130.949, 5.65872, 300, 0, 0, 8844, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(37837, 0, 0, "Je ne tolère aucun échec ... La victoire ou la mort !", 12, 0, 0, 1, 500, 0, 0, 0, "La relève de la Gar'dul 24591");

/****************************************************************************************/
/* Vermine silithide 24654 */

UPDATE `gameobject_template` SET `size` = 1,`displayId` = 346, `Data3` = 0 WHERE (entry = 201943);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21047217, 201943, 1, 0, 0, 1, 0, 0, -3138.41, -1779.14, 96.4641, 5.48004, 0, 0, 0.390867, -0.920447, 300, 0, 1, 0),
(21047218, 201943, 1, 0, 0, 1, 0, 0, -3103.97, -1723.47, 94.9682, 1.52162, 0, 0, 0.689509, 0.724277, 300, 0, 1, 0),
(21047219, 201943, 1, 0, 0, 1, 0, 0, -3090.49, -1682.82, 93.7223, 4.33335, 0, 0, 0.827657, -0.561235, 300, 0, 1, 0),
(21047235, 201943, 1, 0, 0, 1, 0, 0, -3277.32, -1850.57, 96.4855, 2.65456, 0, 0, 0.970496, 0.241117, 300, 0, 1, 0),
(21047236, 201943, 1, 0, 0, 1, 0, 0, -3216.36, -1852.84, 96.5497, 0.233571, 0, 0, 0.11652, 0.993188, 300, 0, 1, 0);

UPDATE `creature` SET `zoneId` = '0', `areaId` = '0' WHERE `creature`.`id` = 38055;
-- Silithid Mound Bunny SAI
SET @ENTRY := 38055;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,71030,0,30000,30000,12,3252,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Vermine silithide 24654 : invoc Grouillant silithide");
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118367, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3273.92, -1852.61, 96.1581, 3.07278, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118364, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3094.35, -1686.73, 98.8951, 4.4433, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118363, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3110.94, -1728.81, 94.0088, 1.33313, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118362, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3147.38, -1785.23, 95.8459, 1.26833, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(21118360, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3104.11, -1681.75, 93.4656, 5.24442, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(299054, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3124.18, -2174.15, 104.72, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(299053, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3108.77, -2187.94, 102.912, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(299052, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3141.29, -2172.42, 105.415, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(299051, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3126.91, -2185.94, 102.978, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(299026, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3192.46, -2220.29, 101.203, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(299025, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3172.76, -2213.14, 99.9466, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(299024, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3183.92, -2235.41, 102.975, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(299022, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3173.69, -2224.49, 103.163, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298893, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3212.33, -1857.43, 96.0998, 2.77237, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298892, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3223.59, -1859.1, 95.2098, 0.237495, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298891, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3220.4, -1846.63, 95.7526, 2.44346, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298874, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3137.73, -1788.11, 96.777, 1.73173, 240, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(298873, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3122.46, -1782.85, 96.6389, 4.00741, 240, 3, 0, 160, 0, 2, 0, 0, 0, 0),
(298872, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3147.97, -1776.45, 95.4146, 0.109882, 240, 3, 0, 160, 0, 2, 0, 0, 0, 0),
(298871, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3124.07, -1773.02, 95.2333, 5.02647, 240, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(298865, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3078.7, -1683.21, 92.3694, 5.39167, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298864, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3103.4, -1714.06, 94.6511, 4.17824, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298862, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3113.7, -1716.34, 95.6261, 2.97855, 240, 3, 0, 160, 0, 2, 0, 0, 0, 0),
(298861, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3089.51, -1694.44, 93.7081, 2.86073, 240, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(298860, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3100.69, -1728.67, 93.5388, 4.91848, 240, 0, 0, 160, 0, 0, 0, 0, 0, 0),
(298820, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3280.1, -1840.82, 95.7186, 6.20652, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(298819, 38055, 1, 0, 0, 1, 0, 0, 0, 0, -3282.28, -1858.6, 95.3397, 2.04588, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* Cauchemar ailé 24631 */

DELETE FROM `spell_linked_spell` WHERE `spell_linked_spell`.`spell_trigger` = 70885 ;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (70885,50231, 1, "Stitch :  Cauchemar ailé 24631"); 
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118375, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3079.49, -2075.74, 132.744, 0.58502, 300, 25, 0, 4580, 0, 1, 0, 134250496, 0, 0),
(21118374, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3130.37, -2097.97, 127.997, 0.143234, 300, 25, 0, 4580, 0, 1, 0, 134250496, 0, 0),
(21118373, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3221.5, -1988.29, 116.592, 0.333694, 300, 25, 0, 4732, 0, 1, 0, 134250496, 0, 0),
(21118371, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3316.76, -2042.54, 139.132, 0.840276, 300, 25, 0, 4580, 0, 1, 0, 134250496, 0, 0),
(21118370, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3245.45, -2037.22, 107.564, 2.83126, 300, 25, 0, 4732, 0, 1, 0, 134250496, 0, 0),
(21117767, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3165.74, -2308.37, 146.794, 2.52164, 300, 25, 0, 4580, 0, 1, 0, 134250496, 0, 0),
(21117766, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3102.98, -2257.77, 153.182, 5.20377, 300, 25, 0, 4732, 0, 1, 0, 134250496, 0, 0),
(299073, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3178.5, -2036.98, 121.395, 2.75861, 240, 25, 0, 4732, 0, 1, 0, 134774784, 0, 0),
(299066, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3122.06, -2046.97, 138.469, 5.4368, 240, 15, 0, 4732, 0, 1, 0, 134250496, 0, 0),
(299063, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3143.01, -1995.48, 135.877, 6.05253, 240, 25, 0, 4732, 0, 1, 0, 134250496, 0, 0),
(299061, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3119.49, -2047.53, 146.317, 4.34341, 240, 15, 0, 4580, 0, 1, 0, 134250496, 0, 0),
(299037, 37977, 1, 0, 0, 1, 0, 0, 0, 1, -3211.36, -2072.09, 169.728, 0.667387, 240, 25, 0, 4732, 0, 1, 0, 134250496, 0, 0);

/****************************************************************************************/
/* Le boucher de Taurajo 24637 */
UPDATE `locales_gossip_menu_option` SET `option_text_loc2` = 'Je suis prêt, Karthog ... Pour la horde!' WHERE `locales_gossip_menu_option`.`menu_id` = 10960 AND `locales_gossip_menu_option`.`id` = 0;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(10960, 0, 0, 'I am ready, Karthog. For the Horde!', 0, 1, 1, 0, 0, 0, 0, '', 0);

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38018, 0, 2404, 0, 0, 0, NULL);

UPDATE `creature_template` SET `unit_flags` = 134217728, `HealthModifier` = 3, `DamageModifier` = 3 WHERE (entry = 38018);
-- General Hawthorne SAI
SET @ENTRY := 38018;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,9,0,100,0,0,5,5000,5000,11,772,32,0,0,0,0,5,0,0,0,0,0,0,0,"Pourfendre"),
(@ENTRY,0,20,0,6,0,100,0,0,0,0,0,41,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn"),
(@ENTRY,0,25,0,11,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defensif");

-- Karthog SAI
SET @ENTRY := 38015;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,9,0,50,0,0,10,6000,6000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre"),
(@ENTRY,0,20,0,62,0,100,0,10960,0,0,0,12,38018,3,120000,0,0,0,8,0,0,0,-2658.27,-2184.25,95.79,3.1670,"Spawn Général Hawthorne"),
(@ENTRY,0,25,0,62,0,100,0,10960,0,0,0,12,37923,3,120000,0,0,0,8,0,0,0,-2652.0383,-2184.1372,95.785065,3.1670,"Spawn garde 1"),
(@ENTRY,0,30,0,62,0,100,0,10960,0,0,0,12,37923,3,120000,0,0,0,8,0,0,0,-2646.6755,-2184.0324,95.7850,3.1670,"Spawn garde 2"),
(@ENTRY,0,35,0,62,0,100,0,10960,0,0,0,12,37923,3,120000,0,0,0,8,0,0,0,-2641.7219,-2183.9355,95.7850,3.1670,"Spawn garde 3"),
(@ENTRY,0,40,0,62,0,100,0,10960,0,0,0,12,37923,3,120000,1,0,0,8,0,0,0,-2677.0361,-2185.4655,95.785637,3.1670,"Spawn garde 4"),
(@ENTRY,0,45,50,62,0,100,0,10960,0,0,0,12,37923,3,120000,1,0,0,8,0,0,0,-2672.30,-2184.0104,95.784508,3.1670,"Spawn garde 5"),
(@ENTRY,0,50,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"fermer gossip");

/****************************************************************************************/
/* Le Moissonneur 897 */
UPDATE `quest_template` SET `QuestLevel` = 32, `MinLevel` = 32 WHERE (ID = 897);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21097048, 3253, 1, 0, 0, 1, 0, 0, 0, 0, -3073.61, -1673.09, 92.2144, 4.06435, 14400, 10, 0, 6507, 0, 1, 0, 0, 0, 0),
(298855, 37557, 1, 0, 0, 1, 0, 0, 0, 0, -3108.29, -1748.14, 92.8832, 3.03744, 240, 15, 0, 3436, 963, 1, 0, 0, 0, 0);


/****************************************************************************************/
/* Prévenir les proches 25292 */
DELETE FROM `creature_questender` WHERE (quest = 25292) AND (id IN (39697));
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (25292, 0, 0, -3086, -2838, 20253);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `VerifiedBuild`) VALUES
(25292, 0, 0, -1, 0, 0, 1, 141, 0, 0, 1, 0, 0, 0, 20253);

/****************************************************************************************/
/* Sabotage ! 24747 - Phase 170 */
DELETE FROM `creature` WHERE `creature`.`guid` = 298516;
DELETE FROM `creature` WHERE `creature`.`guid` = 21118174;
DELETE FROM `creature` WHERE `creature`.`guid` = 21118173;
DELETE FROM `creature` WHERE `creature`.`guid` = 21118089;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(298515, 3376, 1, 0, 0, 1, 0, 0, 0, 1, -4105.64, -2310.25, 124.914, 1.3361, 240, 5, 0, 2414, 0, 1, 0, 0, 0, 0),
(298518, 3377, 1, 0, 0, 1, 0, 0, 0, 1, -4092.19, -2311.35, 125.241, 1.94085, 240, 0, 0, 2414, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 131074, `unit_flags2` = 34816,`IconName` = 'inspect' WHERE (entry = 38190);
-- Dwarven Artillery Shell SAI
SET @ENTRY := 38190;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,64,0,100,0,0,0,0,0,33,38250,0,0,0,0,0,7,0,0,0,0,0,0,0,"Sabotage ! 24747 : Credit Artillery Shell Sabotaged"),
(@ENTRY,0,15,0,64,0,100,0,0,0,0,0,86,70889,0,7,0,0,0,1,0,0,0,0,0,0,0,"Sabotage ! 24747 : Phase 170"),
(@ENTRY,0,16,0,64,0,100,0,0,0,0,0,11,64753,0,7,0,0,0,7,0,0,0,0,0,0,0,"Sabotage ! 24747 : visuel explosion"),
(@ENTRY,0,17,0,64,0,100,0,0,0,0,0,75,70889,0,7,0,0,0,7,0,0,0,0,0,0,0,"Sabotage ! 24747 : Phase 170");

UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 131074, `unit_flags2` = 34816,`IconName` = 'inspect' WHERE (entry = 38109);
-- Dwarven Artillery Shell SAI
SET @ENTRY := 38109;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,64,0,100,0,0,0,0,0,33,38250,0,0,0,0,0,7,0,0,0,0,0,0,0,"Sabotage ! 24747 : Credit Artillery Shell Sabotaged"),
(@ENTRY,0,15,0,64,0,100,0,0,0,0,0,86,70889,0,7,0,0,0,1,0,0,0,0,0,0,0,"Sabotage ! 24747 : Phase 170"),
(@ENTRY,0,16,0,64,0,100,0,0,0,0,0,11,64753,0,7,0,0,0,7,0,0,0,0,0,0,0,"Sabotage ! 24747 : visuel explosion"),
(@ENTRY,0,17,0,64,0,100,0,0,0,0,0,75,70889,0,7,0,0,0,7,0,0,0,0,0,0,0,"Sabotage ! 24747 : Phase 170");

REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000223, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Sabotage ! 24747", "Retire Phase 170", '', '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 6, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);
-- Sabotage ! 24747 SAI
SET @ENTRY := 15000223;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,60,0,100,0,0,0,2000,2000,33,38251,0,0,0,0,0,17,0,15,0,0,0,0,0,"Sabotage ! 24747 : credit"),
(@ENTRY,0,15,0,61,0,100,0,0,0,2000,2000,28,70889,0,0,0,0,0,17,0,15,0,0,0,0,0,"Sabotage ! 24747 : retire Phase 170");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118379, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4087.06, -2339.99, 126.13, 5.12406, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118378, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4086.45, -2341.21, 126.131, 1.97855, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21118382, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4077.41, -2272.51, 122.868, 4.43619, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118383, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4090.04, -2279.91, 124.42, 3.76664, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118384, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4099.33, -2282.94, 122.491, 3.91586, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118385, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4108.99, -2290.23, 124.743, 2.10356, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118386, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4120.34, -2295.03, 125.189, 5.43954, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118387, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4124.75, -2307.31, 127.414, 1.12181, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118388, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4124.44, -2319.32, 128.723, 4.72482, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118389, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4122.93, -2330.02, 128.792, 0.593629, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118390, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4068.59, -2277.04, 121.475, 3.96692, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118391, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4058.69, -2288.53, 121.868, 3.67239, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118392, 15000223, 1, 0, 0, 1, 170, 0, 11686, 0, -4057.8, -2302.75, 126.096, 3.03229, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118395, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4060.28, -2286.93, 121.697, 4.69564, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118396, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4057.33, -2300.81, 125.796, 4.54642, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118397, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4070.39, -2275.89, 121.996, 1.56191, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118398, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4079.72, -2272.6, 123.138, 3.30353, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118399, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4088.81, -2279.18, 124.61, 3.86116, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118400, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4099.04, -2283.39, 122.492, 3.278, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118401, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4108.82, -2290.8, 125.063, 2.25109, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118402, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4121.49, -2296.93, 125.214, 0.774544, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118403, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4123.71, -2308.3, 128.197, 4.05358, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118404, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4123.69, -2320.64, 128.778, 4.73688, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0),
(21118405, 15000223, 1, 0, 0, 1, 0, 0, 11686, 0, -4122.59, -2330.98, 128.799, 4.79971, 300, 0, 0, 80, 0, 0, 0, 33554438, 0, 0);

/****************************************************************************************/
/* La requête de Mahka 24633 */
DELETE FROM `creature_questender` WHERE (quest = 24633);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (37847, 24633);

/****************************************************************************************/
/* Inquiétude au sujet de Mankrik 24604 */
UPDATE `quest_offer_reward` SET `RewardText` = 'C''est Mahka qui vous envoie, ?$B$BLa colère de Mankrik retombe un court instant.;$B$B Sa me réconforte, mais rien ne me consolera vraiment tant que je n''aurai pas assouvi ma vengeance.' WHERE `quest_offer_reward`.`ID` = 24604;

/****************************************************************************************/
