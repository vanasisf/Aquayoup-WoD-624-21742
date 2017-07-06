#**************************************************************************************** Tanaris ****************************************************************************************

#-------------------------------------------------------------------------------------------------------
# 15000196		Elglib Balon - Location de Dirigeable - Gadgetzan Tanaris ( Gossip 65061 )
#-------------------------------------------------------------------------------------------------------
SET @GOSSIP :=65061 ;
SET @ENTRY := 15000196;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31317, 29472, 7217, 7993, 'Elglib Balon', '', 'Location de Dirigeable', 'Speak', @GOSSIP, 100, 100, 0, 0, 2159, 1, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 3, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,@GOSSIP,0,0,0,12,@ENTRY+1,2,600000,0,0,0,8,0,0,0,-7080.166016,-3899.628174,11.239285,5.0370,"Gadgetzan vers Camp de recrutement Cognedune"),
(@ENTRY,0,15,0,62,0,100,0,@GOSSIP,1,0,0,12,@ENTRY+2,2,600000,0,0,0,8,0,0,0,-7080.166016,-3899.628174,11.239285,5.0370,"Gadgetzan vers survol de Tanaris");

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(@GOSSIP, 0, 0, "Aller au Camp de recrutement Cognedune", 0, 1, 1, 0, 0, 0, 0, '', 0),
(@GOSSIP, 1, 0, "Survol de Tanaris", 0, 1, 1, 0, 0, 0, 0, '', 0);
UPDATE `creature_template` SET `faction` = 35 WHERE (entry = 15000196);
#------
SET @ENTRY := 15000197 ; # WP 11043799
DELETE FROM `creature_template` WHERE (entry = @ENTRY);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Gadgetzan vers Camp de recrutement Cognedune', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 4, 3, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043799,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");
UPDATE `creature_template` SET `faction` = 35 WHERE (entry = 15000197);
#------
SET @ENTRY := 15000198 ; # WP 11043800
DELETE FROM `creature_template` WHERE (entry = @ENTRY);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Gadgetzan vers survol de Tanaris', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 4, 3, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043800,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");

#-------------------------------------------------------------------------------------------------------
# 15000199		Elglib Balon - Location de Dirigeable - Camp de recrutement Cognedune ( Gossip 65062 )
#-------------------------------------------------------------------------------------------------------
SET @GOSSIP :=65062 ;
SET @ENTRY := 15000199;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31317, 29472, 7217, 7993, 'Elglib Balon', '', 'Location de Dirigeable', 'Speak', @GOSSIP, 100, 100, 0, 0, 2159, 1, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 3, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,@GOSSIP,0,0,0,12,@ENTRY+1,2,600000,0,0,0,8,0,0,0,-8298.466797,-3282.359375,26.478380,10.2487,"Camp de recrutement Cognedune vers Gadgetzan");

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(@GOSSIP, 0, 0, "Aller a Gadgetzan", 0, 1, 1, 0, 0, 0, 0, '', 0);
UPDATE `creature_template` SET `faction` = 35 WHERE (entry = 15000199);
#------
SET @ENTRY := 15000200 ; # WP 11043801
DELETE FROM `creature_template` WHERE (entry = @ENTRY);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour  Gadgetzane', 'vehichleCursor', 0, 45, 45, 0, 0, 35, 50331648, 4, 5, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043801,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");
UPDATE `creature_template` SET `faction` = 35 WHERE (entry = 15000200);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070515, 15000199, 1, 0, 0, 1, 0, 0, 0, 0, -8305.67, -3290.19, 24.4513, 1.32901, 300, 0, 0, 122886, 0, 0, 0, 0, 0, 0),
(21070512, 15000196, 1, 0, 0, 1, 0, 0, 0, 0, -7086.89, -3906.2, 11.1519, 1.76077, 300, 0, 0, 122886, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000197);
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000198);
UPDATE `creature_template` SET `unit_flags2` = 2048 WHERE (entry = 15000200);

DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043799 OR `waypoints`.`entry` = 11043800 OR `waypoints`.`entry` = 11043801; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043799, 1, -7080.17, -3899.63, 16.2243, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 2, -7080.17, -3899.63, 31.9813, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 3, -7091.95, -3869.5, 38.3589, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 4, -7119.63, -3798.27, 53.9053, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 5, -7226.15, -3723.68, 58.9782, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 6, -7515.93, -3457.57, 96.1308, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 7, -7684.8, -3309.69, 168.437, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 8, -7902.91, -3186.87, 137.518, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 9, -8106.15, -3182.01, 102.939, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 10, -8288.39, -3226.83, 62.6287, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043799, 11, -8296.17, -3262.54, 22.8446, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 1, -7081.05, -3899.44, 20.6517, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 2, -7041.29, -3890.76, 38.8257, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 3, -7030.85, -3815.57, 51.489, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 4, -7050.85, -3681.58, 65.6488, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 5, -7045.84, -3398.78, 58.6696, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 6, -6990.55, -3136.14, 53.6227, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 7, -6876.51, -2988.84, 64.2611, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 8, -6865.48, -2902.98, 59.6651, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 9, -6997.57, -2810.05, 47.6552, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 10, -7093.59, -2799.02, 62.492, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 11, -7180.5, -2824.4, 81.7916, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 12, -7343.95, -2810.81, 86.0351, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 13, -7624.82, -2743.56, 103.375, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 14, -7901.77, -2660.92, 91.7842, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 15, -8259.69, -2577.88, 93.1026, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 16, -8509.83, -2375.88, 95.9453, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 17, -8669.28, -2272.07, 98.6553, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 18, -8909.69, -2185.34, 107.991, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 19, -9050.44, -2207.11, 104.328, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 20, -9210.01, -2438.35, 96.2404, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 21, -9295.91, -2692.38, 82.1592, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 22, -9238.49, -2927.48, 92.6832, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 23, -9190.07, -3236.45, 84.6748, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 24, -9088.68, -3501.06, 89.306, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 25, -8974.58, -3766.38, 80.1514, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 26, -8720.16, -4045.82, 80.1415, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 27, -8565.04, -4155.18, 91.3776, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 28, -8349.35, -4326.83, 86.349, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 29, -8259.28, -4423.3, 73.9779, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 30, -8231.15, -4516.96, 76.5499, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 31, -8268.6, -4613.36, 85.38, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 32, -8352.17, -4707.8, 103.196, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 33, -8424.79, -4783.61, 90.1744, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 34, -8497.29, -4943.71, 47.2791, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 35, -8477.46, -5024.93, 44.2741, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 36, -8419.3, -5090.91, 45.5032, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 37, -8344.64, -5134.09, 55.3454, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 38, -8288.57, -5165.82, 73.6863, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 39, -8135.45, -5256.03, 51.0498, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 40, -8063.02, -5285.93, 40.6602, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 41, -7986.89, -5253.97, 45.0846, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 42, -7892.42, -5176.81, 49.0949, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 43, -7797.64, -5099.73, 57.6373, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 44, -7651.32, -5031.79, 33.938, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 45, -7531.06, -4976.86, 27.4174, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 46, -7332.76, -4887.91, 41.7566, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 47, -7191.86, -4862.98, 37.5421, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 48, -7042.41, -4831.88, 36.2357, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 49, -6917.77, -4789.87, 42.8897, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 50, -6786.45, -4742.08, 51.375, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 51, -6744.67, -4704.99, 80.4545, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 52, -6746.83, -4652.18, 102.101, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 53, -6815.57, -4544.79, 98.4137, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 54, -6881.42, -4413.04, 79.0843, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 55, -7009.28, -4179.59, 44.6924, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 56, -7067.78, -4076.18, 23.8452, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 57, -7075.02, -3973.12, 34.607, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 58, -7082.71, -3900.59, 35.4978, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 59, -7082.71, -3900.59, 22.2678, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043800, 60, -7079.69, -3897.28, 9.82656, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 1, -8297.3, -3281.07, 29.097, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 2, -8297.3, -3281.07, 43.7971, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 3, -8298.1, -3299.18, 51.4013, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 4, -8268.04, -3429.81, 63.3895, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 5, -8231.62, -3524.66, 69.8948, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 6, -8146.2, -3661.68, 88.704, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 7, -8076.09, -3725.07, 101.143, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 8, -7923.94, -3810.4, 85.2829, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 9, -7675.76, -3878.3, 66.0465, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 10, -7465.12, -3910.93, 52.2758, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 11, -7223.36, -3906.87, 47.4359, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 12, -7111.12, -3905.17, 38.2936, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 13, -7093.82, -3893.81, 19.5104, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)"),
(11043801, 14, -7093.82, -3893.81, 9.81082, "Dirigeable - Tanaris (Gadgetzan & Camp ... Cognedune)");




#**************************************************************************************** Cabestan pour Theramore ****************************************************************************************

SET @GOSSIP :=65064 ;
SET @ENTRY := 15000211; 
SET @faction := 11;					# neutre 35 - Alliance 11 - Horde 85 
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31317, 29472, 7217, 7993, 'Elglib Balon', '', 'Dirigeable pour Theramore', 'Speak', @GOSSIP, 100, 100, 0, 0, @faction, 1, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 3, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,@GOSSIP,0,0,0,12,@ENTRY+1,2,600000,0,0,0,8,0,0,0,-894.726685,-3766.032227,11.861821,2.9496,"Cabestan vers Theramore ");
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(@GOSSIP, 0, 0, "Aller a Theramore", 0, 1, 1, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071163, 15000196, 1, 0, 0, 1, 0, 0, 0, 0, -898.872, -3763.25, 11.8286, 6.13841, 300, 0, 0, 122886, 0, 0, 0, 0, 0, 0);

#------
SET @ENTRY := 15000212 ; # WP 11043799
DELETE FROM `creature_template` WHERE (entry = @ENTRY);
SET @faction := 11;					# neutre 35 - Alliance 11 - Horde 85 
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 31757, 0, 0, 0, 'Dirigeable', '', 'Navette pour Theramore', 'vehichleCursor', 0, 45, 45, 0, 0, @faction, 50331648, 3, 3, 0.75, 0, 0, 2000, 2000, 1, 1, 2, 16908290, 2112, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 344407931, 0, '', 20173);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, 65030, 1, 1); # Pour pouvoir le conduire
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, 43775);        #  Pour Voler , sinon rien
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,10,0,27,0,100,0,0,0,0,0,53,1,11043805,0,0,1000,0,1,0,0,0,0,0,0,0,"Demarre WP si passager");

DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043805  ; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(11043805, 1, -896.077, -3766.64, 17.1843, "Cabestan vers Theramore"),
(11043805, 2, -896.077, -3766.64, 33.3543, "Cabestan vers Theramore"),
(11043805, 3, -940.686, -3749.18, 48.0703, "Cabestan vers Theramore"),
(11043805, 4, -1033.17, -3752.57, 46.5711, "Cabestan vers Theramore"),
(11043805, 5, -1214.85, -3799.41, 78.6385, "Cabestan vers Theramore"),
(11043805, 6, -1335.02, -3801.94, 112.455, "Cabestan vers Theramore"),
(11043805, 7, -1449.83, -3792.06, 159.018, "Cabestan vers Theramore"),
(11043805, 8, -1672, -3798.72, 131.163, "Cabestan vers Theramore"),
(11043805, 9, -1921.77, -3854.61, 111.59, "Cabestan vers Theramore"),
(11043805, 10, -2108.29, -3895.57, 112.472, "Cabestan vers Theramore"),
(11043805, 11, -2316.49, -3904.02, 94.8944, "Cabestan vers Theramore"),
(11043805, 12, -2552.06, -3893.82, 84.0009, "Cabestan vers Theramore"),
(11043805, 13, -2659.46, -3876.81, 120.56, "Cabestan vers Theramore"),
(11043805, 14, -2826.79, -3905.31, 121.799, "Cabestan vers Theramore"),
(11043805, 15, -3008.57, -3953.28, 162.634, "Cabestan vers Theramore"),
(11043805, 16, -3319.19, -4086.59, 110.504, "Cabestan vers Theramore"),
(11043805, 17, -3482.98, -4155.75, 95.5003, "Cabestan vers Theramore"),
(11043805, 18, -3752.57, -4253.77, 67.8354, "Cabestan vers Theramore"),
(11043805, 19, -3875.5, -4312.99, 65.4504, "Cabestan vers Theramore"),
(11043805, 20, -3946.76, -4421.23, 45.2166, "Cabestan vers Theramore"),
(11043805, 21, -3954.98, -4499.69, 38.6397, "Cabestan vers Theramore"),
(11043805, 22, -3922.8, -4545.8, 30.4352, "Cabestan vers Theramore"),
(11043805, 23, -3889.44, -4564.31, 32.1627, "Cabestan vers Theramore"),
(11043805, 24, -3825.78, -4519.55, 22.0188, "Cabestan vers Theramore"),
(11043805, 25, -3825.72, -4519.54, 10.5601, "Cabestan vers Theramore");

DELETE FROM `creature` WHERE `creature`.`guid` = 21071163;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071275, 15000211, 1, 0, 0, 1, 0, 0, 0, 0, -899.12, -3761.72, 11.8306, 0.151702, 300, 0, 0, 122886, 0, 0, 0, 0, 0, 0);



#**************************************************************************************** 1000 Pointes ****************************************************************************************
SET @ENTRY := 15000191;
-- Elglib Balon SAI
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,65059,0,0,0,12,15000192,2,600000,0,0,0,8,0,0,0,-5675.97,-2473.21,2.62922,5.0375,"1000 pointes Poste de Librevent -> Péniche de course"),
(@ENTRY,0,15,0,62,0,100,0,65059,1,0,0,12,15000193,2,600000,0,0,0,8,0,0,0,-5675.97,-2473.21,2.62922,5.0375,"1000 pointes Poste de Librevent -> Haut Perchoir");

UPDATE `creature_template` SET `faction` = 35 WHERE (entry = 15000187); 
UPDATE `creature_template` SET `faction` = 35 WHERE (entry = 15000191); 
UPDATE `creature_template` SET `faction` = 35 WHERE (entry = 15000194); 






ALTER TABLE `waypoints` ORDER BY `entry`,`pointid`;
