SET NAMES utf8;

# suppression des anciens TP
DELETE FROM `world`.`creature` WHERE `creature`.`guid` = 21070343;
DELETE FROM `world`.`creature` WHERE `creature`.`guid` = 21070336;
DELETE FROM `world`.`creature` WHERE `creature`.`guid` = 21070337;
DELETE FROM `world`.`creature` WHERE `creature`.`guid` = 21070332;
DELETE FROM `world`.`creature` WHERE `creature`.`guid` = 21070335;

#-------------------------------------------------------------------------------------------------------
# 15000187		Elglib Balon - Location de Dirigeable - 1000 pointes Péniche de course
#-------------------------------------------------------------------------------------------------------
SET @GOSSIP :=65058 ;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000187, 0, 0, 0, 0, 0, 31317, 29472, 7217, 7993, 'Elglib Balon', '', 'Location de Dirigeable', 'Speak', @GOSSIP, 100, 100, 0, 0, 2159, 1, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 3, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);
-- Elglib Balon SAI
SET @ENTRY := 15000187;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,65058,0,0,0,12,15000188,2,600000,0,0,0,8,0,0,0,-6087.308105,-3909.460938,22.896477,0.364494,"1000 pointes Péniche de course -> Gadgetzan ( Tanaris )"),
(@ENTRY,0,15,0,62,0,100,0,65058,1,0,0,12,15000189,2,600000,0,0,0,8,0,0,0,-6087.308105,-3909.460938,22.896477,0.364494,"1000 pointes Péniche de course -> Poste de Librevent"),
(@ENTRY,0,20,0,62,0,100,0,65058,2,0,0,12,15000190,2,600000,0,0,0,8,0,0,0,-6087.308105,-3909.460938,22.896477,0.364494,"1000 pointes Péniche de course -> Haut Perchoir");
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(@GOSSIP, 0, 0, "Aller a Gadgetzan ( Tanaris )", 0, 1, 1, 0, 0, 0, 0, '', 0),
(@GOSSIP, 1, 0, "Aller au Poste de Librevent", 0, 1, 1, 0, 0, 0, 0, '', 0),
(@GOSSIP, 2, 0, "Aller au Haut Perchoir", 0, 1, 1, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070481, 15000187, 1, 0, 0, 1, 0, 0, 0, 0, -6075.39, -3905.12, 21.8984, 4.6718, 300, 0, 0, 122886, 0, 0, 0, 0, 0, 0);

-- FULL `creature_template` of entry 15000188
DELETE FROM `creature_template` WHERE (entry = 15000188);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000188, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour Gadgetzan ( Tanaris )', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 4, 4, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);

SET @ENTRY := 15000188 ; # WP 11043793
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043793,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");

#------
SET @ENTRY := 15000189 ;  # WP 11043794
-- FULL `creature_template` of entry 15000189
DELETE FROM `creature_template` WHERE (entry = 15000189);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000189, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour le Poste de Librevent', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 5, 5, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);

DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043794,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");
#------
SET @ENTRY := 15000190 ;  # WP 11043795
-- FULL `creature_template` of entry 15000190
DELETE FROM `creature_template` WHERE (entry = 15000190);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000190, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour le Haut Perchoir', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 5, 5, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043795,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager"),
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager");

#----------------
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000188);
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000189);
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000190);
DELETE FROM `world`.`waypoints` WHERE `waypoints`.`entry` = 11043795 OR `waypoints`.`entry` = 11043794 OR `waypoints`.`entry` = 11043793; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043795, 24, -4984.27, -1011.88, 1.01512, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 23, -4984.36, -1011.94, 9.70775, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 22, -4961.62, -1028.71, 16.2639, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 21, -4922.4, -1091.21, 23.2805, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 20, -4887.51, -1149.71, 34.5312, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 19, -4881.15, -1208.11, 37.8215, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 18, -4933.67, -1289.03, 79.4757, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 17, -4971.79, -1381.08, 107.237, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 16, -5027.62, -1463.88, 122.906, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 15, -5128.11, -1666.3, 114.706, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 14, -5234.2, -1852.17, 113.191, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 13, -5387.49, -2091.66, 119.43, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 12, -5457.68, -2312.98, 137.359, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 11, -5490.82, -2496.51, 142.89, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 10, -5502.28, -2641.3, 135.746, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 9, -5542.28, -2953.1, 181.484, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 8, -5579.72, -3151.86, 205.086, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 7, -5658.58, -3364.27, 152.884, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 6, -5730.2, -3472.43, 134.545, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 5, -5858.05, -3633.48, 87.3168, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 4, -5960.57, -3753.64, 78.1451, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 3, -6067.02, -3885.8, 50.8342, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 2, -6086.87, -3911.21, 44.1842, "Dirigeable - 1000 pointes Péniche de course"),
(11043795, 1, -6086.87, -3911.21, 27.3491, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 18, -5677.23, -2481.94, 1.23371, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 17, -5677.09, -2481.88, 13.6496, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 16, -5702.22, -2503.34, 20.0667, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 15, -5709.95, -2532.81, 24.4593, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 14, -5695.01, -2589.49, 59.2189, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 13, -5601.37, -2725.66, 103.099, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 12, -5542, -2840.69, 98.3902, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 11, -5624.11, -3010.71, 97.5443, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 10, -5726.44, -3181.99, 111.124, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 9, -5803.21, -3321.3, 122.702, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 8, -5873.7, -3401.19, 122.973, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 7, -6002.01, -3494.88, 102.202, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 6, -6095.75, -3567.56, 94.1431, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 5, -6138.06, -3657.99, 74.8324, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 4, -6134.15, -3781.45, 70.9236, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 3, -6128.99, -3836.16, 59.393, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 2, -6114.09, -3892.17, 39.0513, "Dirigeable - 1000 pointes Péniche de course"),
(11043794, 1, -6090.6, -3910.98, 25.5549, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 15, -7200.55, -3761.67, 8.95124, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 14, -7200.58, -3761.66, 18.2383, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 13, -7176.4, -3793.69, 20.038, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 12, -7151.7, -3822.58, 22.5811, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 11, -7102.45, -3820.89, 26.1376, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 10, -7010.36, -3806.71, 74.3326, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 9, -6951.03, -3790.47, 105.273, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 8, -6911.85, -3777.97, 92.4084, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 7, -6807.17, -3771.26, 90.317, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 6, -6655.09, -3796.44, 84.8334, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 5, -6397.96, -3802.07, 66.3203, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 4, -6239.85, -3854.41, 45.2822, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 3, -6141.36, -3889.66, 52.3934, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 2, -6109.19, -3905.7, 37.4112, "Dirigeable - 1000 pointes Péniche de course"),
(11043793, 1, -6087.77, -3910.7, 25.5501, "Dirigeable - 1000 pointes Péniche de course");


#-------------------------------------------------------------------------------------------------------
# 15000191		Elglib Balon - Location de Dirigeable - 1000 pointes Poste de Librevent
#-------------------------------------------------------------------------------------------------------
SET @GOSSIP :=65059 ;
SET @ENTRY := 15000191;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31317, 29472, 7217, 7993, 'Elglib Balon', '', 'Location de Dirigeable', 'Speak', @GOSSIP, 100, 100, 0, 0, 2159, 1, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 3, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070488, 15000191, 1, 0, 0, 1, 0, 0, 0, 0, -5669.2, -2483.8, 3.06244, 2.11782, 300, 0, 0, 122886, 0, 0, 0, 0, 0, 0);
-- Elglib Balon SAI
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,65059,0,0,0,12,15000192,2,600000,0,0,0,8,0,0,0,-5675.97,-2473.21,2.62922,5.0375,"1000 pointes Poste de Librevent -> Péniche de course"),
(@ENTRY,0,15,0,62,0,100,0,65058,1,0,0,12,15000193,2,600000,0,0,0,8,0,0,0,-5675.97,-2473.21,2.62922,5.0375,"1000 pointes Poste de Librevent -> Haut Perchoir");


REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(@GOSSIP, 0, 0, "Aller sur la Péniche de course", 0, 1, 1, 0, 0, 0, 0, '', 0),
(@GOSSIP, 1, 0, "Aller au Haut Perchoir", 0, 1, 1, 0, 0, 0, 0, '', 0);

SET @ENTRY := 15000192 ; # WP 11043796
DELETE FROM `creature_template` WHERE (entry = @ENTRY);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour la Péniche de course', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 4, 4, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043796,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");

SET @ENTRY := 15000193 ; # WP 11043797
DELETE FROM `creature_template` WHERE (entry = @ENTRY);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour le Haut Perchoir', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 4, 4, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043797,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");

UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000192);
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000193);
DELETE FROM `world`.`waypoints` WHERE  `waypoints`.`entry` = 11043796 OR `waypoints`.`entry` = 11043797; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043796, 1, -5675.97, -2473.21, 5.05922, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 2, -5667.74, -2468.93, 23.1824, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 3, -5628.71, -2443.01, 53.8245, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 4, -5555.99, -2380.36, 112.035, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 5, -5484.55, -2365.1, 131.809, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 6, -5425.92, -2438.72, 140.371, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 7, -5396.89, -2515.93, 134.91, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 8, -5376.7, -2675.61, 145.443, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 9, -5392.77, -2838.42, 127.316, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 10, -5447.91, -2954.43, 119.071, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 11, -5507.12, -3074.27, 149.501, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 12, -5565.68, -3200.13, 144.133, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 13, -5648.72, -3367.2, 120.687, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 14, -5761.94, -3512.17, 86.6307, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 15, -5883.24, -3695.65, 53.7847, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 16, -6014.03, -3863.61, 35.3176, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 17, -6047.56, -3899.43, 34.639, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 18, -6064.98, -3908.49, 31.1813, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043796, 19, -6064.98, -3908.49, 21.7027, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 1, -5672.82, -2471.19, 10.6581, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 2, -5661.33, -2461.4, 28.7377, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 3, -5617.61, -2430.38, 65.4314, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 4, -5588.95, -2388.63, 121.032, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 5, -5504.88, -2321.04, 106.201, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 6, -5461.25, -2270.02, 100.755, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 7, -5417.37, -2218.92, 92.3655, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 8, -5378.55, -2156.6, 60.7086, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 9, -5314.72, -2056.04, 41.2543, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 10, -5274.79, -1973.54, 32.4853, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 11, -5204.12, -1763.57, 57.2513, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 12, -5154.64, -1645.98, 53.4467, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 13, -5066.25, -1530.72, 52.8433, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 14, -5068.16, -1452.49, 65.3739, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 15, -5085.33, -1387.31, 76.358, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 16, -5124.28, -1286.04, 97.36, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 17, -5167.13, -1214.69, 114.625, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 18, -5173.74, -1181.67, 113.566, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 19, -5148.44, -1106.87, 109.988, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 20, -5086.35, -1003.23, 98.9311, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 21, -5059.27, -966.786, 91.8819, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 22, -5004.1, -949.569, 80.2956, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 23, -4979.14, -988.523, 41.0419, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 24, -4975.1, -1000.98, 19.6698, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 25, -4981.29, -1012.91, 6.38016, "Dirigeable - 1000 pointes Poste de Librevent"),
(11043797, 26, -4981.2, -1012.91, 0.562059, "Dirigeable - 1000 pointes Poste de Librevent");


#-------------------------------------------------------------------------------------------------------
# 15000194		Elglib Balon - Location de Dirigeable - 1000 pointes Haut Perchoir
#-------------------------------------------------------------------------------------------------------
SET @GOSSIP :=65060 ;
SET @ENTRY := 15000194;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31317, 29472, 7217, 7993, 'Elglib Balon', '', 'Location de Dirigeable', 'Speak', @GOSSIP, 100, 100, 0, 0, 2159, 1, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 3, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);

-- Elglib Balon SAI
SET @ENTRY := 15000194;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,65060,0,0,0,12,15000195,2,600000,0,0,0,8,0,0,0,-4984.7,-1011.23,3.01632,2.4536,"1000 pointes Haut Perchoir -> Poste de Librevent");


REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(@GOSSIP, 0, 0, "Aller au Poste de Librevent", 0, 1, 1, 0, 0, 0, 0, '', 0);

SET @ENTRY := 15000195 ; # WP 11043798
DELETE FROM `creature_template` WHERE (entry = @ENTRY);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour la Péniche de course', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 4, 4, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043798,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");

UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000195);
DELETE FROM `world`.`waypoints` WHERE  `waypoints`.`entry` = 11043798 ; 
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000195);
DELETE FROM `world`.`waypoints` WHERE `waypoints`.`entry` = 11043798 ; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043798, 1, -4982.12, -1012.95, 6.59886,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 2, -4978.77, -1004.31, 28.22,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 3, -4982.04, -976.781, 51.7706,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 4, -4974.62, -954.45, 76.1784,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 5, -4995.23, -944.058, 94.3111,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 6, -5027.55, -937.234, 90.9384,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 7, -5063.95, -974.355, 96.105,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 8, -5089.15, -1017.98, 107.489,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 9, -5156.94, -1120.11, 110.966,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 10, -5175.17, -1182.14, 130.511,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 11, -5164.8, -1256.71, 114.024,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 12, -5228.99, -1393.75, 96.2112,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 13, -5347.47, -1612.14, 55.3301,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 14, -5427.84, -1731.29, 46.7858,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 15, -5442.29, -1761.59, 52.9859,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 16, -5469.08, -1835.11, 78.6232,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 17, -5525.28, -1946.22, 95.4248,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 18, -5596.35, -2136.47, 89.9169,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 19, -5647.41, -2254.07, 121.153,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 20, -5706.22, -2355.01, 103.982,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 21, -5718.15, -2412.12, 59.5837,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 22, -5695.53, -2457.82, 33.2619,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 23, -5679.34, -2471.56, 22.2743,"Dirigeable - 1000 pointes Haut Perchoir"),
(11043798, 24, -5675.84, -2471.35, 1.52524,"Dirigeable - 1000 pointes Haut Perchoir");

ALTER TABLE `waypoints` ORDER BY `entry`;