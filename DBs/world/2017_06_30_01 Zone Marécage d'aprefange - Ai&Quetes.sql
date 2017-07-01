/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.0				AI & Quetes    Marécage d'aprefange																				 		 			    */
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 
/****************************************************************************************/
/* 				Divers                                                                                                         					*/
/****************************************************************************************/
DELETE FROM `spell_script_names` WHERE `spell_script_names`.`spell_id` = 42492 AND `spell_script_names`.`ScriptName` = 'spell_energize_aoe';

UPDATE `gameobject_template` SET `Data1` = 207475 WHERE (entry = 207475);
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('207475', '13137', '0', '9', '0', '1', '0', '1', '1', NULL),
('207475', '3827', '0', '100', '0', '1', '0', '1', '1', NULL),
('207475', '13045', '0', '9', '0', '1', '0', '1', '1', NULL),
('207475', '2877', '0', '10', '0', '1', '0', '1', '1', NULL),
('207475', '1716', '0', '10', '0', '1', '0', '1', '1', NULL),
('207475', '13093', '0', '3', '0', '1', '0', '1', '1', NULL),
('207475', '3020', '0', '3', '0', '1', '0', '1', '1', NULL),
('207475', '13084', '0', '3', '0', '1', '0', '1', '1', NULL),
('207475', '13093', '0', '3', '0', '1', '0', '1', '1', NULL),
('207475', '13145', '0', '3', '0', '1', '0', '1', '1', NULL),
('207475', '8006', '0', '3', '0', '1', '0', '1', '1', NULL),
('207475', '13124', '0', '3', '0', '1', '0', '1', '1', NULL),
('207475', '13119', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '13048', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '13121', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '13119', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '9395', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '13017', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '12974', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '6052', '0', '75', '0', '1', '0', '1', '1', NULL),
('207475', '1710', '0', '75', '0', '1', '0', '1', '1', NULL),
('207475', '6050', '0', '50', '0', '1', '0', '1', '1', NULL),
('207475', '2951', '0', '2', '0', '1', '0', '1', '1', NULL),
('207475', '13020', '0', '2', '0', '1', '0', '1', '1', NULL);



#---Portail
DELETE FROM `creature_template` WHERE (entry = 15000210);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000210, 0, 0, 0, 0, 0, 26502, 0, 0, 0, 'Marécage d\'aprefange (H2)', '', '', '', 0, 85, 85, 0, 0, 35, 16777220, 1, 0.14285999536514, 0.75, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 10, 1, 1, 1, 1, 1, 1, 0, 0, 1, 2296625, 2, '', 15595);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070985, 15000210, 1, 0, 0, 1, 0, 0, 0, 0, 1591.79, -4334.17, 21.2079, 3.69443, 300, 0, 0, 159740, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* Un vol pour Theramore 26702 (A2-Cabestan)  -  wp 11043805 - 16227 */

UPDATE `quest_template_locale` SET `QuestDescription` = 'Écoutez, c''est vrai que je n''aime pas particulièrement l''Alliance… mais bon, je ne vous hais pas vraiment non plus.$b$bVotre argent est aussi bon que celui d''un autre. Et quelquefois, même meilleur.$b$bJeyne m''a laissé quelques pièces pour régler vos frais de voyage. Je pense que la personne que vous cherchez en Âprefange se nomme Calia Hastings. Et le meilleur moyen de se rendre là-bas est de parler à notre maître des dirigeable , Elglib Balon. Il vous conduira à elle, si vous voulez. Et ce sera un vol gratuit, grâce à votre amie.' WHERE `quest_template_locale`.`ID` = 26702 AND `quest_template_locale`.`locale` = 'frFR';

SET @GOSSIP :=65064 ;
SET @ENTRY := 15000196; 
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
SET @ENTRY := 15000197 ; # WP 11043799
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

DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043799 OR `waypoints`.`entry` = 11043805 ; 
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
ALTER TABLE `waypoints` ORDER BY `entry`,`pointid`;

#Archmage Celindra (Portal trainer Dalaran)
REPLACE INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(96786, 3561, 5100, 904, 0, 17),
(96786, 3562, 5100, 904, 0, 17),
(96786, 3565, 16500, 904, 0, 42),
(96786, 10059, 5100, 904, 0, 17),
(96786, 11416, 16500, 904, 0, 42),
(96786, 11419, 16500, 904, 0, 42),
(96786, 32266, 5100, 904, 0, 17),
(96786, 32271, 16500, 904, 0, 42),
(96786, 35715, 81000, 904, 0, 62),
(96786, 35717, 105000, 904, 0, 66),
(96786, 49359, 22500, 904, 0, 52),
(96786, 49360, 22500, 904, 0, 52),
(96786, 53140, 150000, 904, 0, 71),
(96786, 53142, 168000, 904, 0, 74),
(96786, 80256, 282000, 904, 0, 100),
(96786, 88342, 282000, 904, 0, 85),
(96786, 88345, 282000, 904, 0, 85),
(96786, 132620, 282000, 904, 0, 100),
(96786, 132621, 282000, 904, 0, 90),
(96786, 176246, 282000, 904, 0, 100),
(96786, 176248, 282000, 904, 0, 92),
(96786, 187329, 282000, 904, 0, 100);


/****************************************************************************************/


/****************************************************************************************/
/* 				AI & Mobs                                                                                                   				*/
/****************************************************************************************/

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (4834, 0, 0, 0, 0, 0, NULL );

UPDATE `creature_template` SET `faction` = 188 WHERE (entry = 23741); # non agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4382); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4385); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23679); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23590); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23589); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23591); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 11591); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4346); # agressif
UPDATE `creature_template` SET `faction` = 150 WHERE (entry = 5086); 
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23554); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4389); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23714); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23592); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23593); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23714); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23595); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23594); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4347); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4348); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4394); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 4393); # agressif
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 23620); # agressif
UPDATE `creature_template` SET `faction` = 1883 WHERE (entry = 23620); # agressif
UPDATE `creature_template` SET `faction` = 1077 WHERE (entry = 23723); # Theramore



UPDATE `creature_loot_template` SET `Chance` = '10' WHERE  `creature_loot_template`.`Item` = 33086;

UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 23969);

UPDATE `creature_template` SET `faction` = 103,`speed_walk` = 0.8, `speed_run` = 0.8, `DamageModifier` = 2.5 WHERE (entry = 23555);
UPDATE `creature_template` SET `modelid1` = 10045, `modelid2` = 0, `IconName` = '', `scale` = 3, `unit_flags` = 768 WHERE (entry = 23585);

#---
 -- Zeppelin Power Core SAI
SET @ENTRY := 23832;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,1,0,100,0,0,5000,90000,120000,11,97960,0,0,0,0,0,1,0,0,0,0,0,0,0,"grosse aura avec eclair sur la tete");

 UPDATE `creature_template` SET `unit_flags` = 512, `type_flags` = 4096 WHERE (entry = 10036);
-- Brackenwall Enforcer SAI
SET @ENTRY := 10036;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,22,75,0,100,0,0,39138,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,23,75,0,100,0,0,23594,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,22,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,55,0,0,0,25,0,0,0,6000,6000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de tonnerre  "),
(@ENTRY,0,90,0,10,0,100,0,1,5,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");
 
UPDATE `creature_template` SET `faction` = 1077,`unit_flags` = 512, `type_flags` = 4096 WHERE (entry = 39138);
-- Theramore Highway Guard SAI
SET @ENTRY := 39138;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,22,75,0,100,0,0,10036,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,23,75,0,100,0,0,23594,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,22,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,55,0,0,0,25,0,0,0,6000,6000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de tonnerre  "),
(@ENTRY,0,90,0,10,0,100,0,1,5,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");

UPDATE `creature_template` SET `unit_flags` = 512, `type_flags` = 4096 WHERE (entry = 23594);
-- Grimtotem Destroyer SAI
SET @ENTRY := 23594;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,60,75,0,100,0,0,10036,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,65,75,0,100,0,0,39138,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,22,70,75,0,100,0,0,5184,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,50,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,55,0,0,0,25,0,0,0,6000,6000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de tonnerre  "),
(@ENTRY,0,60,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,65,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,70,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,90,0,10,0,100,0,1,10,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur");

UPDATE `creature_template` SET `speed_run` = 1,`ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 4382);
-- Withervine Creeper SAI
SET @ENTRY := 4382;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,15,21000,25000,11,43130,0,0,0,0,0,2,0,0,0,0,0,0,0,"Withervine Creeper - Within 0-15 Range - Cast 'Creeping Vines'"),
(@ENTRY,0,10,0,9,0,100,0,0,10,6000,10000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");

UPDATE `creature_template` SET `speed_run` = 1,`ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 4385);
-- Withervine Rager SAI
SET @ENTRY := 4385;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,5,10,2,0,100,1,0,25,3000,3000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Withervine Rager - Between 0-25% Health - Cast 'Enrage' (No Repeat)"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut"),
(@ENTRY,0,15,0,9,0,100,0,0,10,6000,10000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");


UPDATE `creature_template` SET `faction` = 1077,`unit_flags` = 0, `type_flags` = 4096 WHERE (entry =5184);
-- Theramore Sentry SAI
SET @ENTRY := 5184;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,20,8000,11000,11,6533,0,0,0,0,0,2,0,0,0,0,0,0,0,"Filet 0-20 m"),
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shoot"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,20,22,75,0,100,0,0,23594,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,21,23,75,0,100,0,0,10036,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,90,0,10,0,100,0,1,5,3000,3000,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mode agressif si joueur"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"ce tourne vers le mob adverse");
 
UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14231 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `faction` = 103, `scale` = 1.25, `HealthModifier` = 4, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 14231);
-- Drogoth the Roamer SAI
SET @ENTRY := 14231;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,10,6000,12000,11,81146,0,0,0,0,0,1,0,0,0,0,0,0,0,"Choc martial"),
(@ENTRY,0,10,0,0,0,100,0,0,5000,10000,15000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut");

-- Deserter Agitator SAI
SET @ENTRY := 23602;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deserter Agitator - On Reset - Set Faction 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,1,0,50,0,0,1,30000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deserter Agitator - Out of Combat - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,3,62,0,100,0,8762,0,0,0,11,42203,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deserter Agitator - On Gossip Option 0 Selected - Cast 'Discovered'"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deserter Agitator - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,4,5,8,0,100,0,42219,0,3500,3500,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deserter Agitator - On Spellhit 'Discovered (Sub)' - Set Orientation Invoker"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deserter Agitator - On Spellhit 'Discovered (Sub)' - Say Line 1"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,87,@ENTRY*100+00,@ENTRY*100+01,0,0,0,0,1,0,0,0,0,0,0,0,"Deserter Agitator - On Spellhit 'Discovered (Sub)' - Run Random Script"),
(@ENTRY,0,1000,0,75,0,80,0,0,4979,5,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 4896   ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

 SET @ENTRY := 6732   ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

  -- Medic Tamberlyn SAI
SET @ENTRY := 5199;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,14,0,100,0,1000,40,15000,18000,11,7162,0,0,0,0,0,7,0,0,0,0,0,0,0,"Medic Tamberlyn - Friendly At 1000 Health - Cast 'First Aid'"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 4924;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,14,0,100,0,1000,40,15000,18000,11,7162,0,0,0,0,0,7,0,0,0,0,0,0,0,"Medic Tamberlyn - Friendly At 1000 Health - Cast 'First Aid'"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");
 
-- Medic Helaina SAI
SET @ENTRY := 5200;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,14,0,100,0,1000,40,15000,18000,11,7162,0,0,0,0,0,7,0,0,0,0,0,0,0,"Medic Helaina - Friendly At 1000 Health - Cast 'First Aid'"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 5095;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 5090;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 5096;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 4965;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

-- Lady Jaina Proudmoore SAI
SET @ENTRY := 4968;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,20692,64,0,0,0,0,2,0,0,0,0,0,0,0,"Lady Jaina Proudmoore - In Combat - Cast 'Fireball'"),
(@ENTRY,0,1,0,0,0,100,0,4000,5000,45000,55000,11,20681,1,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Jaina Proudmoore - In Combat - Cast 'Summon Water Elementals'"),
(@ENTRY,0,2,0,0,0,100,0,5000,9000,15000,17000,11,20679,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lady Jaina Proudmoore - In Combat - Cast 'Fire Blast'"),
(@ENTRY,0,3,0,0,0,100,0,8000,12000,25000,28000,11,20680,1,0,0,0,0,4,0,0,0,0,0,0,0,"Lady Jaina Proudmoore - In Combat - Cast 'Blizzard'"),
(@ENTRY,0,4,0,2,0,100,0,0,50,14000,21000,11,20682,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lady Jaina Proudmoore - Between 0-50% Health - Cast 'Teleport'"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,10,0,0,0,100,0,4000,5000,45000,55000,11,20681,1,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Summon Water Elementals"),
(@ENTRY,0,11,0,0,0,100,0,5000,9000,15000,17000,11,20679,1,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Fire Blast"),
(@ENTRY,0,12,0,0,0,100,0,8000,12000,25000,28000,11,20680,1,0,0,0,0,4,0,0,0,0,0,0,0,"Cast Blizzard"),
(@ENTRY,0,13,0,2,0,100,0,0,50,14000,21000,11,20682,1,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Teleport at 50% HP"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 24006;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

-- Scorchscale Drake SAI
SET @ENTRY := 23687;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,12000,14000,11,13374,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de feu"),
(@ENTRY,0,1,0,9,0,100,0,0,5,8000,12000,11,8873,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de flammes"),
(@ENTRY,0,10,0,1,0,100,0,0,0,6000,10000,11,8873,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hors combat crache des flames");

UPDATE `creature_template` SET `InhabitType` = 1 WHERE (entry = 23637);
-- Deserter Lieutenant SAI
SET @ENTRY := 23637;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,13,0,100,0,10000,15000,0,0,11,11972,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de bouclier"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `InhabitType` = 1 WHERE (entry = 5057);
-- Theramore Deserter SAI
SET @ENTRY := 5057;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,30,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theramore Deserter - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,2,0,30,1,0,15,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,7000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse");

UPDATE `creature_template` SET `InhabitType` = 1,`faction` = 103 WHERE (entry = 23941);
-- Gavis Greyshield SAI
SET @ENTRY := 23941;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,8,0,100,0,0,0,10000,10000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre    ");

UPDATE `creature_loot_template` SET `Chance` = '75' WHERE `creature_loot_template`.`Entry` = 4388 AND `creature_loot_template`.`Item` = 33126;
-- Young Murk Thresher SAI
SET @ENTRY := 4388;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,9,0,100,0,0,5,5000,5000,11,69203,32,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure vicieuse");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 4403);
-- Muckshell Pincer SAI
SET @ENTRY := 4403;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,4000,6000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `faction` = 103, `scale` = 1.5, `HealthModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 23928);
-- Lurking Shark SAI
SET @ENTRY := 23928;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,5000,11,69203,32,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure vicieuse"),
(@ENTRY,0,15,0,0,0,100,0,0,0,6000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,20,0,25,0,100,0,0,0,0,0,81,0,3,0,0,0,0,1,0,0,0,0,0,0,0,"nager");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 4393);
-- Acidic Swamp Ooze SAI
SET @ENTRY := 4393;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,17000,21000,11,73135,0,0,0,0,0,2,0,0,0,0,0,0,0,"Acidic Swamp Ooze - In Combat - Cast 'Old Friends: Quest Accept & Bind'"),
(@ENTRY,0,1,0,6,0,100,1,0,0,0,0,11,43135,2,0,0,0,0,2,0,0,0,0,0,0,0,"Limon bouillonnant "),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,79607,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclaboussure de venin");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 4394);
-- Bubbling Swamp Ooze SAI
SET @ENTRY := 4394;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,17000,21000,11,73135,0,0,0,0,0,2,0,0,0,0,0,0,0,"Acidic Swamp Ooze - In Combat - Cast 'Old Friends: Quest Accept & Bind'"),
(@ENTRY,0,1,0,6,0,100,1,0,0,0,0,11,43135,2,0,0,0,0,2,0,0,0,0,0,0,0,"Limon bouillonnant "),
(@ENTRY,0,15,0,0,0,100,0,0,0,5000,5000,11,744,0,0,0,0,0,2,0,0,0,0,0,0,0,"poison");

UPDATE `creature_template` SET `HealthModifier` = 1.75,`ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 4397);
-- Mudrock Spikeshell SAI
SET @ENTRY := 4397;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,2000,4000,10000,12000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `HealthModifier` = 2, `DamageModifier` = 3 WHERE (entry = 23679);
-- Garn Mathers SAI
SET @ENTRY := 23679;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garn Mathers - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,2,0,100,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse  ");

-- Defias Rummager SAI
SET @ENTRY := 23589;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,38557,0,0,0,0,0,2,0,0,0,0,0,0,0,"Defias Rummager - On Aggro - Cast 'Throw' (No Repeat)"),
(@ENTRY,0,1,0,2,0,50,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Rummager - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,2,0,50,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse");

-- Defias Conjuror SAI
SET @ENTRY := 23590;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Conjuror - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,"Armure de givre"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3400,4700,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boule de feu"),
(@ENTRY,0,4,0,9,0,100,0,40,100,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `scale` = 0.5 WHERE (entry = 4414);
-- Darkfang Venomspitter SAI
SET @ENTRY := 4414;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,12000,12500,11,7951,0,0,0,0,0,2,0,0,0,0,0,0,0,"Crachat toxique");

UPDATE `creature_template` SET `scale` = 0.75, `ArmorModifier` = 2 WHERE (entry = 4401);
-- Muckshell Clacker SAI
SET @ENTRY := 4401;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,10000,15000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déchirure du tendon"),
(@ENTRY,0,1,0,2,0,50,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Muckshell Clacker - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `speed_walk` = 0.9, `speed_run` = 0.9, `scale` = 0.75 WHERE (entry = 4341);
-- Drywallow Crocolisk SAI
SET @ENTRY := 4341;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,75,0,0,5,14000,14000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déchirure du tendon"),
(@ENTRY,0,10,0,0,0,100,0,0,0,6000,8000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `ArmorModifier` = 2 WHERE (entry = 4404);
-- Muckshell Scrabbler SAI
SET @ENTRY := 4404;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair"),
(@ENTRY,0,1,0,2,0,50,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Muckshell Scrabbler - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,10,0,0,0,75,0,0,0,4000,6000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `modelid1` = 37738, `scale` = 0.25, `DamageModifier` = 2 WHERE (entry = 4415);
-- Giant Darkfang Spider SAI
SET @ENTRY := 4415;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,5000,16000,21000,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `ArmorModifier` = 1 WHERE (entry = 44390);
-- Spiny Rock Crab SAI
SET @ENTRY := 44390;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,15000,15000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déchirure du tendon"),
(@ENTRY,0,10,0,0,0,100,0,0,0,6000,10000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `KillCredit1` = 23861 WHERE (entry = 23554);
-- Risen Spirit SAI
SET @ENTRY := 23554;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,43127,2,0,0,0,0,2,0,0,0,0,0,0,0,"Présence immatérielle"),
(@ENTRY,0,1,0,6,0,100,1,0,0,0,0,12,23861,2,15000,0,0,0,1,0,0,0,0,0,0,0,"Qui hante la Colline des sorcières ? 27188 : Invoc Apparition"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

UPDATE `creature_template` SET `KillCredit1` = 23861 WHERE (entry = 23555);
SET @ENTRY := 23555;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,2,0,100,0,0,40,10000,10000,11,37933,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dévoreur de chair 0-40% Health"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Husk - Between 0-40% Health - Say Line 0"),
(@ENTRY,0,5,0,6,0,100,0,0,0,0,0,12,23861,2,15000,0,0,0,1,0,0,0,0,0,0,0,"Qui hante la Colline des sorcières ? 27188 : Invoc Apparition"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

-- Mirefin Murloc SAI
SET @ENTRY := 4359;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mirefin Murloc - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,1,0,100,1,3000,5000,3000,3000,11,8656,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mirefin Murloc - Out of Combat - Cast 'Summon Crawler' (No Repeat)"),
(@ENTRY,0,4,5,9,0,100,0,10,30,4000,5000,11,10277,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Throw"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Throw Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Range");

-- Razorspine SAI
SET @ENTRY := 23841;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,5000,46,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"avance en combat"),
(@ENTRY,0,15,0,0,0,100,1,0,0,3000,3000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `npcflag` = 3202 WHERE (entry = 39144);

-- Bloodfen Raptor SAI
SET @ENTRY := 4351;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,0,0,4000,6000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,1,0,2,0,100,1,0,20,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodfen Raptor - Between 0-20% Health - Say Line 0 (Phase 1) (No Repeat)"),
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante");

-- Grimtotem Breaker SAI
SET @ENTRY := 23592;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,13,0,100,0,10000,10000,0,0,11,43108,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brise os"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,4,0,50,0,0,0,0,0,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0,"charge");

DELETE FROM `creature_template_addon` WHERE `creature_template_addon`.`entry` = 23593;

UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 26111);

UPDATE `creature_loot_template` SET `Chance` = '50' WHERE  `creature_loot_template`.`Item` = 33061;

-- Darkfang Creeper SAI
SET @ENTRY := 4412;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,50,0,2000,4000,22000,24000,11,7992,0,0,0,0,0,2,0,0,0,0,0,0,0,"Darkfang Creeper - In Combat - Cast 'Slowing Poison'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,5000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

-- Mottled Drywallow Crocolisk SAI
SET @ENTRY := 4344;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,3500,11,90171,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure de la dent ébréchée");

UPDATE `creature_template` SET `DamageModifier` = 2.75 WHERE (entry = 4345);
-- Drywallow Daggermaw SAI
SET @ENTRY := 4345;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,3000,45000,50000,11,6016,0,0,0,0,0,2,0,0,0,0,0,0,0,"Perce-armure"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `DamageModifier` = 2.5 WHERE (entry = 4329);
-- Firemane Scout SAI
SET @ENTRY := 4329;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bouclier de feu"),
(@ENTRY,0,1,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `HealthModifier` = 1.75, `ManaModifier` = 2 WHERE (entry = 4331);
-- Firemane Ash Tail SAI
SET @ENTRY := 4331;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement visible"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : Movement ON"),
(@ENTRY,0,12,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,4,0,100,0,5,30,3000,3500,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agro -  Movement OFF"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Bouclier de feu"),
(@ENTRY,0,30,31,9,0,100,0,35,100,3000,3500,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"35m - 100m : Evade"),
(@ENTRY,0,31,0,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,40,0,0,0,100,0,1000,1000,4000,4000,11,20793,0,0,0,0,0,2,0,0,0,0,0,0,0,"Combat - Boule de feu"),
(@ENTRY,0,45,0,9,0,100,0,0,10,6000,8000,11,11969,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nova de feu");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 4841 AND `creature_loot_template`.`Chance` <98 ;
DELETE FROM `creature_equip_template` WHERE `creature_equip_template`.`CreatureID` = 4841 ;
UPDATE `creature_template` SET `rank` = 1, `unit_flags` = 0, `HealthModifier` = 2, `DamageModifier` = 3 WHERE (entry = 4841);
-- Deadmire SAI
SET @ENTRY := 4841;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,5000,5000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre"),
(@ENTRY,0,1,0,9,0,100,0,0,5,20000,20000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déchirure du tendon"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `modelid1` = 949, `scale` = 0.9, `DamageModifier` = 2.5 WHERE (entry = 4356);
-- Bloodfen Razormaw SAI
SET @ENTRY := 4356;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,25000,27000,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bloodfen Razormaw - In Combat - Cast 'Infected Wound'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

UPDATE `creature_template` SET `scale` = 1.1, `DamageModifier` = 2.5 WHERE (entry = 4357);
-- Bloodfen Lashtail SAI
SET @ENTRY := 4357;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,18000,24000,11,6607,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fouet"),
(@ENTRY,0,10,0,9,0,100,0,0,5,15000,15000,11,33126,0,0,0,0,0,2,0,0,0,0,0,0,0,"Désarmé"),
(@ENTRY,0,15,0,4,0,50,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante");

-- Firemane Scalebane SAI
SET @ENTRY := 4328;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,13600,14500,11,11971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fracasser armure"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bouclier de feu"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   ");

-- Smolderwing SAI
SET @ENTRY := 23789;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,9000,15000,18000,11,42433,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de feu de Consumaile"),
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn"),
(@ENTRY,0,15,0,0,0,100,0,0,6000,6000,15000,11,8873,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de flammes");

-- Theramore Infiltrator SAI
SET @ENTRY := 4834;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,50,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theramore Infiltrator - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,11,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theramore Infiltrator - On Respawn - Cast 'Sneak' (No Repeat)"),
(@ENTRY,0,2,0,7,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theramore Infiltrator - On Evade - Cast 'Sneak' (No Repeat)"),
(@ENTRY,0,3,0,0,0,100,1,0,0,3000,6000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,10,0,0,0,50,0,5000,5000,5000,5000,46,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"avance en combat");

-- Darkmist Spider SAI
SET @ENTRY := 4376;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,18000,22000,11,69964,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poison"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `scale` = 1.25, `HealthModifier` = 3, `DamageModifier` = 3 WHERE (entry = 45227);
-- Darkmist Broodqueen SAI
SET @ENTRY := 45227;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,14000,15000,11,69964,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");


/****************************************************************************************/
/* 				QUETES              																								 */
/****************************************************************************************/
/* quête est marquée comme obsolète */
DELETE FROM `creature_questender` WHERE `quest` = 1281;
DELETE FROM `creature_questender` WHERE `quest` = 1220;
DELETE FROM `creature_questender` WHERE `quest` = 1283;
DELETE FROM `creature_queststarter` WHERE `quest` = 1282;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 1251;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 1323;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 1443;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 11201;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 27309;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 1263;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 1268;
DELETE FROM `creature_questender` WHERE `creature_questender`.`id` = 4926 AND `creature_questender`.`quest` = 1272;

DELETE FROM `creature_questender` WHERE `quest` = 1252;
DELETE FROM `creature_queststarter` WHERE `quest` = 1252;


DELETE FROM `gameobject_queststarter` WHERE  `gameobject_queststarter`.`quest` = 1268;
DELETE FROM `gameobject_queststarter` WHERE  `gameobject_queststarter`.`quest` = 1252;
DELETE FROM `gameobject_queststarter` WHERE  `gameobject_queststarter`.`quest` = 1251;
DELETE FROM `gameobject_queststarter` WHERE  `gameobject_queststarter`.`quest` = 1253;
DELETE FROM `gameobject_queststarter` WHERE  `gameobject_queststarter`.`quest` = 1284;
DELETE FROM `gameobject_queststarter` WHERE  `gameobject_queststarter`.`quest` = 1238;

/* ------ Suites de quête ------*/
UPDATE `quest_template_addon` SET `PrevQuestID` = 27254 WHERE (ID = 27258);


/****************************************************************************************/
/* Rencontre au sommet 25478 */
DELETE FROM `quest_objectives` WHERE (QuestID = 25478) AND (ID IN (257320));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(257320, 25478, 0, 0, 39897, 0, 0, 0, 'Wind Rider to Westreach Summit', 20444);

/****************************************************************************************/
/* Justice est faite ! 11206 */
DELETE FROM `creature_queststarter` WHERE (quest = 11206) AND (id IN (6546));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (6546, 11206);
UPDATE `quest_template_locale` SET `LogTitle` = 'Justice est faite !' WHERE `quest_template_locale`.`ID` = 11206 AND `quest_template_locale`.`locale` = 'frFR';

/****************************************************************************************/
/* Retourner voir Krog 11204 */
UPDATE `quest_template_locale` SET `LogTitle` = 'Retourner voir Krog' WHERE `quest_template_locale`.`ID` = 11204 AND `quest_template_locale`.`locale` = 'frFR';
DELETE FROM `creature_queststarter` WHERE (quest = 11204) AND (id IN (4943));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4943, 11204);

/****************************************************************************************/
/* Plus qu'une coïncidence 11200 */
DELETE FROM `creature_queststarter` WHERE (quest = 11200) AND (id IN (4926));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4926, 11200);
UPDATE `quest_template_locale` SET `LogTitle` = 'Plus qu''une coïncidence' WHERE `quest_template_locale`.`ID` = 11200 AND `quest_template_locale`.`locale` = 'frFR';

/****************************************************************************************/
/* Questionner Reethe 1273 */
UPDATE `quest_template_locale` SET `LogTitle` = 'Questionner Reethe' WHERE `quest_template_locale`.`ID` = 1273 AND `quest_template_locale`.`locale` = 'frFR';
DELETE FROM `creature_queststarter` WHERE (quest = 1273) AND (id IN (4983));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4983, 1273);

/****************************************************************************************/
/* Ils l'appellent Jim le Souriant 1282 */
DELETE FROM `creature_queststarter` WHERE (quest = 1282) AND (id IN (4921));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4921, 1282);

/****************************************************************************************/
/* Discréditer les déserteurs 27212 */
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(8851, 4, 0, "Vous avez l’air de quelqu’un d’intelligent. Lisez donc un de nos pamphlets et réfléchissez-y, d’accord ?", 0, 1, 1, 0, 0, 0, 0, '', 0);
UPDATE `creature_template` SET `InhabitType` = 1 WHERE (entry = 4979);
-- Theramore Guard SAI
SET @ENTRY := 4979;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,1,8851,4,3000,3000,33,4979,0,0,0,0,0,7,0,0,0,0,0,0,0,"Discréditer les déserteurs 27212 : credit"),
(@ENTRY,0,15,0,62,0,100,0,8851,4,0,0,41,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Discréditer les déserteurs 27212 : fermer menu");

/****************************************************************************************/
/* Des traîtres sont parmi nous 27210 */
DELETE FROM `gossip_menu_option` WHERE `gossip_menu_option`.`menu_id` = 8762 ;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(8762, 1, 0, 'Votre propagande ne fonctionne pas sur moi. Jaillissez vos ordures traîtres ailleurs, traître !', 0, 1, 1, 0, 0, 0, 0, '', 0);
UPDATE `creature_template` SET `unit_flags` = 0 WHERE (entry = 23602);
-- Deserter Agitator SAI
SET @ENTRY := 23602;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,2,894,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deserter Agitator - On Reset - Set Faction 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,1,0,50,0,0,1,30000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deserter Agitator - Out of Combat - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,3,62,0,100,0,8762,1,0,0,5,15,42203,0,0,0,0,7,0,0,0,0,0,0,0,"Deserter Agitator - On Gossip Option 1 Selected - Cast 'Discovered'"),
(@ENTRY,0,3,10,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Des traîtres sont parmi nous 27210 : fermer gossip"),
(@ENTRY,0,4,5,8,0,100,0,42219,0,3500,3500,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deserter Agitator - On Spellhit 'Discovered (Sub)' - Set Orientation Invoker"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deserter Agitator - On Spellhit 'Discovered (Sub)' - Say Line 1"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,87,@ENTRY*100+00,@ENTRY*100+01,0,0,0,0,1,0,0,0,0,0,0,0,"Deserter Agitator - On Spellhit 'Discovered (Sub)' - Run Random Script"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,2,103,0,0,0,0,0,1,0,0,0,0,0,0,0,"Des traîtres sont parmi nous 27210 : faction agro"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Des traîtres sont parmi nous 27210 : agro joueur"),
(@ENTRY,0,1000,0,75,0,80,0,0,4979,5,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

/****************************************************************************************/
/* Le marché de Nat 27220 */
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071166, 23928, 1, 0, 0, 1, 0, 0, 0, 1, -4240.9, -3911.4, -5.01298, 3.99722, 300, 0, 0, 5332, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* Il faut tuer Tethyr ! 27222 */
UPDATE `quest_template_locale` SET `QuestDescription` = 'Monstre marin ou pas, nous n’allons pas risquer notre cargaison. J’ai ordonné à nos meilleurs tireurs de se préparer pour une confrontation avec ce Tethyr. Les artilleurs ont ajouté cinqs mortiers aux défenses du port.$B$BLa faim a poussé Tethyr a rentrer dans le port meme , heureusement pour nous il a peur de sortir de son élément , autant en profiter . Si Tethyr attaque effectivement, votre travail sera d’actionner les mortiers pour l’abattre avant qu’il ne tue tous les tireurs. Mais, à votre place, j’éviterais de rester trop longtemps au même endroit. L’utilisation des mortiers attirera sans doute son attention.' WHERE `quest_template_locale`.`ID` = 27222 AND `quest_template_locale`.`locale` = 'frFR';

-- DIFF `quest_objectives` of QuestID 27222
DELETE FROM `quest_objectives` WHERE (QuestID = 27222) AND (ID IN (15500013));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500013, 27222, 0, 0, 23899, 1, 0, 0, 'Protéger les docks de Theramore de Tethyr', 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071171, 23899, 1, 0, 0, 1, 0, 0, 0, 0, -3900.03, -4687.69, 0.0000780016, 0.81478, 60, 0, 0, 294800, 0, 0, 0, 0, 0, 0);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21025057, 186432, 1, 0, 0, 1, 0, 0, -3957.31, -4688.27, 6.81573, 5.50949, 0, 0, 0.377273, -0.926102, 300, 0, 1, 0),
(21025056, 186432, 1, 0, 0, 1, 0, 0, -3833.24, -4677.12, 9.08405, 2.56228, 0, 0, 0.958343, 0.285621, 300, 0, 1, 0),
(21025055, 186432, 1, 0, 0, 1, 0, 0, -3941.41, -4673.97, 8.47209, 5.56251, 0, 0, 0.352591, -0.935777, 300, 0, 1, 0),
(21025054, 186432, 1, 0, 0, 1, 0, 0, -3863.19, -4709.83, 8.50016, 2.4916, 0, 0, 0.947652, 0.319304, 300, 0, 1, 0);

UPDATE `creature_template` SET `scale` = 0.75, `unit_flags` = 557120, `unit_flags2` = 0, `HoverHeight` = 0, `HealthModifier` = 99, `DamageModifier` = 7 WHERE (entry = 23899);
DELETE FROM `waypoints` WHERE `waypoints`.`entry` = 11043799 OR `waypoints`.`entry` = 23899 ; 
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(23899, 1, -3893.34, -4681.75, 0.00106197, "Il faut tuer Tethyr ! 27222"),
(23899, 2, -3869.52, -4656.25, 0.000948491, "Il faut tuer Tethyr ! 27222"),
(23899, 3, -3856.34, -4679.21, 0.001952, "Il faut tuer Tethyr ! 27222"),
(23899, 4, -3891.73, -4712.88, 0.00124638, "Il faut tuer Tethyr ! 27222"),
(23899, 5, -3937.49, -4709.48, 0.00150175, "Il faut tuer Tethyr ! 27222"),
(23899, 6, -3928.38, -4683.65, 0.000918641, "Il faut tuer Tethyr ! 27222"),
(23899, 7, -3905.48, -4655.3, 0.00114706, "Il faut tuer Tethyr ! 27222"),
(23899, 8, -3899.09, -4749.1, 0.00194242, "Il faut tuer Tethyr ! 27222");

-- Tethyr SAI
SET @ENTRY := 23899;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,42578,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Just Summoned - Action list"),
(@ENTRY,0,1,0,40,0,100,1,8,23899,2000,2000,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - On data set - ActionList"),
(@ENTRY,0,1,2,40,0,100,0,1,23899,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Waypoint reached - Set home position"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,19,128,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Just Summoned - Remove unit flag"),
(@ENTRY,0,2,9,61,0,100,0,0,0,0,0,19,128,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Just Summoned - Remove unit flag"),
(@ENTRY,0,3,0,0,0,100,0,3000,3000,7000,7000,11,42584,0,0,0,0,0,5,0,0,0,0,0,0,0,"Tethyr - Occ - Cast"),
(@ENTRY,0,4,0,0,0,100,0,5000,5000,8000,8000,11,42574,0,0,0,0,0,5,0,0,0,0,0,0,0,"Tethyr - Occ - Cast"),
(@ENTRY,0,5,0,8,0,100,0,42578,0,3500,3500,11,36662,2,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Spell Hist - Cast"),
(@ENTRY,0,6,7,6,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,31075,23905,0,0,0,0,0,"Tethyr - On Death - Set Data"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,11,23900,80,0,0,0,0,0,"Tethyr - On Death - Set Data"),
(@ENTRY,0,8,0,54,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - On Just Summoned - Set Active ON"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - On wp reached - Set Active OFF");

-- Actionlist SAI
SET @ENTRY := 2389900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,2000,2000,53,1,23899,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Action list - Start wp"),
(@ENTRY,9,1,0,0,0,100,0,0,0,2000,2000,102,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Action list - REGEN HEALTH OFF"),
(@ENTRY,9,2,0,0,0,100,0,0,0,2000,2000,18,128,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Action list - Add unit flag");

-- Actionlist SAI
SET @ENTRY := 2389901;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,3,0,0,0,100,0,0,0,2000,2000,6,11198,0,0,0,0,0,18,90,0,0,0,0,0,0,"Tethyr - Action list - Quest Failed"),
(@ENTRY,9,4,0,0,0,100,0,0,0,2000,2000,41,250,0,0,0,0,0,11,23900,80,0,0,0,0,0,"Tethyr - Action list - Despawn"),
(@ENTRY,9,5,0,0,0,100,0,0,0,2000,2000,45,0,2,0,0,0,0,10,31075,23905,0,0,0,0,0,"Tethyr - Action list - Set Data"),
(@ENTRY,9,6,0,0,0,100,0,0,0,2000,2000,41,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - Action list - Despawn");


/****************************************************************************************/
/*  Soupe de Rochefange aux insectes 1204 */
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4397, 5883, 0, 100, 1, 1, 0, 1, 1, NULL);

/****************************************************************************************/
/* Qui hante la Colline des sorcières ? 27188 */
UPDATE `creature_template` SET `KillCredit1` = 23861 WHERE (entry = 23554);
UPDATE `creature_template` SET `KillCredit1` = 23861 WHERE (entry = 23555);

REPLACE INTO `locales_creature_text` (`entry`, `groupid`, `id`, `text_loc1`, `text_loc2`, `text_loc3`, `text_loc4`, `text_loc5`, `text_loc6`, `text_loc7`, `text_loc8`) VALUES
(23861, 0, 0, 'Go away,whoever you are!Witch Hill is mine...mine!', 'Allez-vous en , qui que vous soyez ! ... la sorcière des colline  est à moi ... à moi !', NULL, NULL, NULL, NULL, NULL, NULL),
(23861, 0, 1, 'Why have you come here,outsider?You will only find pain!Our fate will be yours...', 'Pourquoi êtes-vous venu ici étranger ? Vous ne trouverez pas que ...', NULL, NULL, NULL, NULL, NULL, NULL),
(23861, 0, 2, 'It is too late for Jarl...its hold is too strong...', 'Il est trop tard pour Jarl ... sa force est trop forte .....', NULL, NULL, NULL, NULL, NULL, NULL),
(23861, 0, 3, 'The darkness...the corruption...they came too quickly for anyone to know...', 'L''obscurité ... la corruption ... ils sont venus trop vite pour que quelqu''un puisse réagir ...', NULL, NULL, NULL, NULL, NULL, NULL),
(23861, 0, 4, 'The manor...someone else...will soon be consumed...', 'Le manoir ... quelqu''un d''autre ... sera bientôt dévoré ...', NULL, NULL, NULL, NULL, NULL, NULL),
(23861, 0, 5, 'The darkness will consume all...all the living...', ' L''obscurité consommera tout ... tous les vivants ...', NULL, NULL, NULL, NULL, NULL, NULL),
(23861, 0, 6, 'It was... terrible... the demon...', 'C''était ... terrible ... Un démon ...', NULL, NULL, NULL, NULL, NULL, NULL),
(23861, 0, 7, 'It is too late for Jarl... its hold is too strong...', 'Il est trop tard ...', NULL, NULL, NULL, NULL, NULL, NULL);

/****************************************************************************************/
/* Renn McBranchie 27235 */
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071213, 23569, 1, 0, 0, 1, 0, 0, 0, 0, -2639.89, -4345.22, -7.36125, 5.53772, 300, 0, 0, 5332, 1142, 0, 0, 0, 0, 0);

/****************************************************************************************/
/* Équipement de plongée d’occasion 27236 */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21025074, 186273, 1, 0, 0, 1, 0, 0, -2670.78, -4214.57, 0.757031, 0.436556, 0, 0, 0.216549, 0.976272, 300, 0, 1, 0),
(21025073, 186272, 1, 0, 0, 1, 0, 0, -2691.7, -4279.73, 3.60659, 4.86227, 0, 0, 0.652179, -0.758065, 300, 0, 1, 0);

/****************************************************************************************/
/*  Nettoyer la Colline des sorcières 27190 */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21025075, 186424, 1, 0, 0, 1, 0, 0, -2967.7, -3871.63, 31.0044, 2.16052, 0, 0, 0.88208, 0.4711, 300, 0, 1, 0);

/****************************************************************************************/
/* Survoler l’île d’Alcaz 27239  Cassa Cramoissaile tué*/
DELETE FROM `gossip_menu_option` WHERE `gossip_menu_option`.`menu_id` = 8782 AND `gossip_menu_option`.`id` = 0;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(8782, 1, 0, 'Lady Jaina told me to speak to you about using a gryphon to survey Alcaz Island.', 0, 1, 1, 0, 0, 0, 0, '', 0);
REPLACE INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`, `option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`, `option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(8782, 1, 'Lady Jaina told me to speak to you about using a gryphon to survey Alcaz Island.', ' Lady Jaina m''a dit de vous parler de l''utilisation d''un gryphon pour enquêter sur l''île Alcaz.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Cassa Crimsonwing SAI
SET @ENTRY := 23704;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,8782,1,0,0,86,42295,0,7,0,0,0,1,0,0,0,0,0,0,0,"Cassa Crimsonwing - On Gossip Option 0 Selected - Cast Spell 42295"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cassa Crimsonwing - On Linked Actions - Close Gossip"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,23704,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cassa Crimsonwing - On Linked Actions - credit");

/****************************************************************************************/
/* Rasez le poste de Navrecorne ! 27429 (a2) - 27296 (h2) */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21025093, 186310, 1, 0, 0, 1, 0, 0, -3641.36, -3422.53, 37.197, 0.178265, 0, 0, 0.0890143, 0.99603, 300, 0, 1, 0),
(21025092, 186310, 1, 0, 0, 1, 0, 0, -3700.14, -3468, 37.2846, 4.0817, 0, 0, 0.891545, -0.452933, 300, 0, 1, 0),
(21025091, 186310, 1, 0, 0, 1, 0, 0, -3664.74, -3453.65, 37.2215, 5.47578, 0, 0, 0.392826, -0.919613, 300, 0, 1, 0);

-- North Tent SAI
SET @ENTRY := 23751;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,10,8,0,100,0,42356,0,3500,3500,33,23751,0,0,0,0,0,7,0,0,0,0,0,0,0,"North Tent - On Spellhit 'Burn Direhorn Post' - Quest Credit 'Raze Direhorn Post!'"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,12,15000065,2,20000,0,0,0,9,15000079,0,15,0,0,0,0,"Rasez le poste de Navrecorne ! 27429 (a2) - 27296 (h2) : visuel flammes");

-- North Tent SAI
SET @ENTRY := 23752;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,10,8,0,100,0,42356,0,3500,3500,33,23752,0,0,0,0,0,7,0,0,0,0,0,0,0,"North Tent - On Spellhit 'Burn Direhorn Post' - Quest Credit 'Raze Direhorn Post!'"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,12,15000065,2,20000,0,0,0,9,15000079,0,15,0,0,0,0,"Rasez le poste de Navrecorne ! 27429 (a2) - 27296 (h2) : visuel flammes");

-- North Tent SAI
SET @ENTRY := 23753;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,10,8,0,100,0,42356,0,3500,3500,33,23753,0,0,0,0,0,7,0,0,0,0,0,0,0,"North Tent - On Spellhit 'Burn Direhorn Post' - Quest Credit 'Raze Direhorn Post!'"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,12,15000065,2,20000,0,0,0,9,15000079,0,15,0,0,0,0,"Rasez le poste de Navrecorne ! 27429 (a2) - 27296 (h2) : visuel flammes");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21071247, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3700.87, -3465.38, 37.285, 1.76083, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071246, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3701.91, -3473.5, 37.2812, 3.91086, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071245, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3704.47, -3472.69, 42.3588, 4.77283, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071244, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3703.74, -3466.32, 43.7173, 1.93951, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071243, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3699.58, -3472.31, 43.6929, 1.63713, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071242, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3690.4, -3465.14, 45.5154, 1.10306, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071241, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3697.6, -3465.25, 50.0819, 5.82134, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071240, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3698.38, -3457.93, 48.2192, 0.0270638, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071239, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3697.48, -3453.31, 44.2593, 4.94562, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071238, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3687.72, -3458.14, 48.0535, 4.24858, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071237, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3657.09, -3453.37, 43.4912, 3.41802, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071236, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3666.06, -3453.16, 53.441, 5.56216, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071235, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3669.56, -3460.04, 43.0506, 6.04322, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071234, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3667.96, -3453.4, 47.1536, 6.04518, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071233, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3666.11, -3448.12, 44.4576, 6.13551, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071232, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3663.79, -3458.75, 37.2159, 5.50915, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071231, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3658.01, -3454.4, 37.2099, 6.02162, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071230, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3636.58, -3424.17, 37.1977, 5.72317, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071229, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3634.28, -3419.49, 37.2398, 4.95152, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071228, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3651.49, -3420.26, 44.8693, 2.49127, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071227, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3653.14, -3425.38, 44.97, 6.10213, 300, 3, 0, 160, 0, 2, 0, 33685510, 0, 0),
(21071226, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3646.8, -3418.37, 44.2035, 1.37011, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071225, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3648.07, -3428.3, 44.0531, 2.66995, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071224, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3641.47, -3427.11, 42.861, 3.93247, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071223, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3633.8, -3425.08, 40.0147, 2.65228, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071222, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3637.1, -3416.87, 41.9534, 3.39644, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071221, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3648.87, -3417.97, 38.2874, 5.49738, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0),
(21071220, 15000079, 1, 0, 0, 1, 0, 0, 11686, 0, -3648.8, -3427.31, 37.7862, 1.13449, 300, 0, 0, 160, 0, 0, 0, 33685510, 0, 0);


/****************************************************************************************/
/* Lâcher de raptors 27243 */
UPDATE `quest_template_addon` SET `PrevQuestID` = 27242 WHERE (ID = 27243);

/****************************************************************************************/
/* L'arme des Totems-Sinistres 27336 */
-- DIFF `quest_objectives` of QuestID 27336
DELETE FROM `quest_objectives` WHERE (QuestID = 27336) AND (ID IN (266488));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(266488, 27336, 0, 0, 4344, 10, 0, 0, 'Totem Tests Performed', 20444);
UPDATE `creature_template` SET `minlevel` = 38, `maxlevel` = 38, `speed_walk` = 0.001, `speed_run` = 0.001, `HealthModifier` = 0.1 WHERE (entry = 23811);
-- Captured Totem SAI
SET @ENTRY := 23811;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3000,3000,11,421,0,0,0,0,0,9,4344,0,10,0,0,0,0,"L'arme des Totems-Sinistres 27336 : chaine d'eclair"),
(@ENTRY,0,15,0,11,0,100,0,0,0,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn 15s");

/****************************************************************************************/
/* Prévention de la corrosion 27347 */
UPDATE `creature_template` SET `KillCredit1` = 23797 WHERE (entry = 4393);
UPDATE `creature_template` SET `KillCredit1` = 23797 WHERE (entry = 4394);

/****************************************************************************************/
/* Enfin la paix 27291 */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21025110, 186324, 1, 0, 0, 1, 0, 0, -3533.72, -4316.98, 7.03211, 5.52289, 0, 0, 0.371058, -0.92861, 300, 0, 1, 0);

-- Jimmy Hyal SAI
SET @ENTRY := 23769;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,10000,10000,2000,2000,84,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jimmy Hyal - Out of Combat - Say Line 1"),
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"autodespawn 15s");

-- Lynn Hyal SAI
SET @ENTRY := 23768;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,2000,2000,84,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lynn Hyal - Out of Combat - Say Line 1"),
(@ENTRY,0,1,0,1,0,100,1,2000,2000,2000,2000,84,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lynn Hyal - Out of Combat - Say Line 2"),
(@ENTRY,0,2,0,1,0,100,1,5000,5000,2000,2000,84,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lynn Hyal - Out of Combat - Say Line 3"),
(@ENTRY,0,3,0,1,0,100,1,8000,8000,2000,2000,84,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lynn Hyal - Out of Combat - Say Line 4"),
(@ENTRY,0,4,0,1,0,100,1,12000,12000,2000,2000,84,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lynn Hyal - Out of Combat - Say Line 5"),
(@ENTRY,0,5,0,1,0,100,1,12000,12000,2000,2000,33,23768,0,0,0,0,0,18,5,0,0,0,0,0,0,"Lynn Hyal - Out of Combat - Quest Credit 'Peace at Last'"),
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"autodespawn 15s");

/****************************************************************************************/
/* Les esprits du bastion Cognepierre 27410 */
-- Table `gameobject_template`
UPDATE `gameobject_template` SET `type` = 10, `size` = 0.4, `Data0` = 1736, `Data1` = 27410, `Data3` = 0, `Data4` = 1, `Data10` = 42421, `Data12` = 0 WHERE (entry = 186332);
UPDATE `creature_template` SET `faction` = 103, `DamageModifier` = 3.5,`HealthModifier` = 2, `mechanic_immune_mask` = 8456240 WHERE (entry = 23786);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('23786', '0', '0', '0', '0', '0', '119053');
-- Stonemaul Spirit SAI
SET @ENTRY := 23786;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,50,0,0,3000,10000,10000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut"),
(@ENTRY,0,15,0,0,0,25,0,0,0,3000,6000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse    ");

/****************************************************************************************/
/* Un défi au Vol noir 27411 */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21025143, 186336, 1, 0, 0, 1, 0, 0, -4706.62, -3726.18, 54.6398, 3.79402, 0, 0, 0.947262, -0.320461, 300, 0, 1, 0);

/****************************************************************************************/
/* Voyage à la Nouvelle-Thalanaar 25479 */
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES ('11372', '2', '0', 'Aller a la nouvelle-Thalanaar ( A2 )', '0', '1', '1', '0', '0', '0', '0', NULL, '0');
-- Dyslix Silvergrub SAI
SET @ENTRY := 40358;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,11372,1,0,0,62,1,0,0,0,0,0,7,0,0,0,-4301.25,-919.717,80.9199,3.5047,"TP Sommet Occidental (H2)"),
(@ENTRY,0,15,0,62,0,100,0,11372,2,0,0,62,1,0,0,0,0,0,7,0,0,0,-4425.787598,-702.672485,0.884663,2.25,"TP a la nouvelle-Thalanaar (A2)");

DELETE FROM `quest_objectives` WHERE (QuestID = 25479) AND (ID IN (253318));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(253318, 25479, 0, 0, 39897, 0, 0, 0, 'Hippogryph to New Thalanaar', 20444);

/****************************************************************************************/
/* Prévenir les proches 25292 */
DELETE FROM `creature_queststarter` WHERE (quest = 25292) AND (id IN (39144));


/****************************************************************************************/
/* Défier le seigneur Mok'Morokk 27418 */

DELETE FROM `quest_objectives` WHERE (QuestID = 27418) AND (ID IN (15500015));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(15500015, 27418, 0, 0, 4500, 1, 0, 0, "Battre le Seigneur Mok'Morokk en duel", 0);

UPDATE `creature_template` SET `unit_flags` = 512 WHERE (entry = 4500);
-- Rothin's Spell Bunny SAI
SET @ENTRY := 4500;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,19,0,100,0,27418,0,0,0,2,103,0,0,0,0,0,1,0,0,0,0,0,0,0,"Défier le seigneur Mok'Morokk 27418 : faction agressive"),
(@ENTRY,0,15,0,25,0,100,0,27418,0,0,0,2,29,0,0,0,0,0,1,0,0,0,0,0,0,0,"Défier le seigneur Mok'Morokk 27418 : faction amicale"),
(@ENTRY,0,25,0,9,0,100,0,0,5,15000,15000,11,6749,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grand balayage"),
(@ENTRY,0,30,35,2,0,100,0,1,25,3000,3000,33,4500,0,0,0,0,0,2,0,0,0,0,0,0,0,"Défier le seigneur Mok'Morokk 27418 : Credit"),
(@ENTRY,0,35,0,61,0,100,0,0,0,0,0,24,29,0,0,0,0,0,2,0,0,0,0,0,0,0,"Défier le seigneur Mok'Morokk 27418 : evade si 25% pv"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Défier le seigneur Mok'Morokk 27418 : attaque joueur");

/****************************************************************************************/
/*  L'identification de la portée 27414 */
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4323, 5840, 0, 75, 1, 1, 0, 1, 1, NULL),
(4324, 5840, 0, 75, 1, 1, 0, 1, 1, NULL),
(4323, 5841, 0, 75, 1, 1, 0, 1, 1, NULL),
(4324, 5841, 0, 75, 1, 1, 0, 1, 1, NULL);

/****************************************************************************************/
/* Le Bouclier noir 27256 */
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4376, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4378, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4379, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4380, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4411, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4412, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4413, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4414, 5959, 0, 50, 1, 1, 0, 1, 1, NULL),
(4415, 5959, 0, 50, 1, 1, 0, 1, 1, NULL);

