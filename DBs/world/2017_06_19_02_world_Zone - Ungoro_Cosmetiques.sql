/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.0				AI & Quetes    																											 		 			    */
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 
/****************************************************************************************/
/* 				Divers 				*/
/****************************************************************************************/


REPLACE INTO `world`.`game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `ScriptName`) VALUES ('4885', '75', '0', '25', '75', '0', '25', '75', '0', '25', '75', '0', '25', '');

/****************************************************************************************/
/* 				AI & Mobs                                                                                                   				*/
/****************************************************************************************/
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 61318;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 9621;

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070766, 51525, 1, 0, 0, 1, 0, 0, 0, 1, -7488.53, -1484.78, -268.379, 0.806569, 300, 5, 0, 293562, 0, 1, 0, 0, 0, 0),
(21070765, 51525, 1, 0, 0, 1, 0, 0, 0, 1, -7526.16, -1487.26, -268.601, 2.7465, 300, 10, 0, 293562, 0, 1, 0, 0, 0, 0),
(21070764, 38270, 1, 0, 0, 1, 0, 0, 0, 1, -7461.43, -1503.26, -271.298, 3.31395, 300, 0, 0, 9336, 0, 0, 0, 0, 0, 0),
(21070763, 9997, 1, 0, 0, 1, 0, 0, 0, 1, -7513.46, -1503.84, -265.533, 0.0152783, 300, 0, 0, 2452, 2861, 0, 0, 0, 0, 0),
(21070762, 9117, 1, 0, 0, 1, 0, 0, 0, 1, -7506.15, -1496.2, -265.853, 2.04749, 300, 0, 0, 7930, 0, 0, 0, 0, 0, 0),
(21070761, 10977, 1, 0, 0, 1, 0, 0, 0, 1, -7509.71, -1496.24, -265.723, 1.31118, 300, 0, 0, 5980, 0, 0, 0, 0, 0, 0),
(21070760, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7343.53, -1248.58, -274.191, 2.67778, 300, 5, 0, 5742, 0, 1, 0, 0, 0, 0),
(21070759, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7165.24, -1139.57, -267.46, 4.83958, 300, 5, 0, 5742, 0, 1, 0, 0, 0, 0),
(21070758, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7034.13, -1360.16, -265.447, 1.96896, 300, 5, 0, 5980, 0, 1, 0, 0, 0, 0),
(21070757, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7062.09, -1442.75, -264.661, 4.50972, 300, 10, 0, 5980, 0, 1, 0, 0, 0, 0),
(21070756, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7166.61, -1504.87, -266.293, 5.19499, 300, 10, 0, 5742, 0, 1, 0, 0, 0, 0),
(21070755, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7043.97, -1218.79, -272.143, 1.00096, 300, 10, 0, 5742, 0, 1, 0, 0, 0, 0),
(21070754, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7052.42, -1231.49, -272.143, 5.03202, 300, 0, 0, 5980, 0, 1, 0, 0, 0, 0),
(21070753, 6521, 1, 0, 0, 1, 0, 0, 0, 0, -7081.68, -1175.9, -256.395, 3.28843, 300, 10, 0, 5742, 0, 1, 0, 0, 0, 0),
(21070767, 38240, 1, 0, 0, 1, 0, 0, 0, 0, -6537.52, -563.472, -265.437, 4.07778, 300, 0, 0, 9688, 0, 0, 0, 0, 0, 0),
(21070777, 38329, 1, 0, 0, 1, 0, 0, 0, 1, -7985.4, -855.095, -270.469, 5.02222, 300, 0, 0, 9688, 0, 0, 0, 134217728, 0, 0),
(21070774, 9167, 1, 0, 0, 1, 0, 0, 0, 0, -7233.63, -372.612, -252.925, 1.95525, 300, 15, 0, 6070, 0, 1, 0, 0, 0, 0),
(21070773, 9167, 1, 0, 0, 1, 0, 0, 0, 0, -7173.13, -361.341, -247.086, 0.861577, 300, 10, 0, 5742, 0, 1, 0, 0, 0, 0),
(21070772, 9167, 1, 0, 0, 1, 0, 0, 0, 0, -7197.3, -313.446, -216.533, 4.92013, 300, 15, 0, 5980, 0, 1, 0, 0, 0, 0),
(21070771, 38239, 1, 0, 0, 1, 0, 0, 0, 0, -7198.26, -346.024, -225.696, 5.00063, 300, 0, 0, 9688, 0, 0, 0, 0, 0, 0),
(21070770, 38238, 1, 0, 0, 1, 0, 0, 0, 0, -7331.67, -783.195, -273.414, 2.92717, 300, 0, 0, 9688, 0, 0, 0, 0, 0, 0),
(21070769, 38276, 1, 0, 0, 1, 0, 0, 0, 0, -6977.03, -1065.01, -268.218, 5.37369, 300, 0, 0, 9200, 0, 0, 0, 0, 0, 0),
(21070768, 38275, 1, 0, 0, 1, 0, 0, 0, 1, -6994.29, -1060.3, -266.752, 2.829, 300, 0, 0, 9200, 0, 0, 0, 0, 0, 0),
(21070767, 38240, 1, 0, 0, 1, 0, 0, 0, 0, -6537.52, -563.472, -265.437, 4.07778, 300, 0, 0, 9688, 0, 0, 0, 0, 0, 0),
(21070766, 51525, 1, 0, 0, 1, 0, 0, 0, 1, -7488.53, -1484.78, -268.379, 0.806569, 300, 5, 0, 293562, 0, 1, 0, 0, 0, 0),
(21070765, 51525, 1, 0, 0, 1, 0, 0, 0, 1, -7526.16, -1487.26, -268.601, 2.7465, 300, 5, 0, 293562, 0, 1, 0, 0, 0, 0),
(21070764, 38270, 1, 0, 0, 1, 0, 0, 0, 1, -7461.43, -1503.26, -271.298, 3.31395, 300, 0, 0, 9336, 0, 0, 0, 0, 0, 0);

-- J.D. Collie SAI
SET @ENTRY := 9117;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,4321,0,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"J.D. Collie - On Quest 'Making Sense of It' Taken - Run Script (Normal Dungeon)"),
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

-- Quixxil SAI
SET @ENTRY := 10977;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,17166,0,3500,3500,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Quixxil - On Spellhit 'Release Umi's Yeti' - Run Script"),
(@ENTRY,0,1,0,40,0,100,0,11,10977,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Quixxil - On Waypoint 11 Reached - Run Script"),
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 9270;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,30,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote 30/100");

SET @ENTRY := 9271;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,30,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote 30/100");

SET @ENTRY := 38276;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,30,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote 30/100");

SET @ENTRY := 38277;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,30,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote 30/100");

SET @ENTRY := 48113  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "),

UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 6500);

UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 6498);
UPDATE `creature` SET `spawndist`=25,`MovementType` = '1'  WHERE `creature`.`id` = 6498;

UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `creature`.`id` = 6501;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 6501);

UPDATE `creature_template` SET `faction` = 103, `DamageModifier` = 1.5 WHERE (entry = 6557);
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 6557;
-- Primal Ooze SAI
SET @ENTRY := 6557;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,16031,0,3500,3500,29,2,0,10290,1,0,0,9,10290,0,35,0,0,0,0,"Primal Ooze - On Spellhit 'Releasing Corrupt Ooze' - Set Event Phase 2"),
(@ENTRY,0,1,0,60,0,100,1,1500,1500,2000,2000,45,0,1,0,0,0,0,9,10290,0,35,0,0,0,0,"Primal Ooze - On Update - Set Data 0 1 (Phase 2) (No Repeat)");

UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE  `creature`.`id` = 9166;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 9162); # 9166

UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `creature`.`id` = 9162;
UPDATE `creature_template` SET `faction` = 48,`scale` = 0.75, `ArmorModifier` = 1, `DamageModifier` = 2 WHERE (entry = 9162);

UPDATE `creature_template` SET `scale` = 1.25 WHERE (entry = 6508);

UPDATE `creature_template` SET `scale` = 0.6 WHERE (entry = 6506);

UPDATE `creature_template` SET `scale` = 1.3, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 6513);
-- Un'Goro Stomper SAI
SET @ENTRY := 6513;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,66,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,0,1,0,60,0,2500,4000,300,20000,11,70485,66,0,0,0,0,1,0,0,0,0,0,0,0,"Bond aleatoire"),
(@ENTRY,0,12,0,0,0,35,0,2000,3000,3000,6000,11,83378,66,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,15,0,1000,3000,4000,6000,11,152679,66,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

UPDATE `creature_template` SET `scale` = 0.75, `ArmorModifier` = 1, `DamageModifier` = 2 WHERE (entry = 6514);
SET @ENTRY := 6514;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,66,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,0,1,0,60,0,2500,4000,300,20000,11,70485,66,0,0,0,0,1,0,0,0,0,0,0,0,"Bond aleatoire"),
(@ENTRY,0,12,0,0,0,35,0,2000,3000,3000,6000,11,83378,66,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,15,0,1000,3000,4000,6000,11,152679,66,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

SET @ENTRY := 6516;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,81219,66,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,0,1,0,60,0,2500,4000,300,20000,11,70485,66,0,0,0,0,1,0,0,0,0,0,0,0,"Bond aleatoire"),
(@ENTRY,0,12,0,0,0,35,0,2000,3000,3000,6000,11,83378,66,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement"),
(@ENTRY,0,13,0,0,0,100,0,0,0,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bug mouvement en combat"),
(@ENTRY,0,15,0,0,0,15,0,1000,3000,4000,6000,11,152679,66,0,0,0,0,2,0,0,0,0,0,0,0,"Revers violent");

UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 9163;
UPDATE `creature_template` SET `faction` = 48,`scale` = 1.5, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 9163);

UPDATE `creature_template` SET `scale` = 1.5, `DamageModifier` = 3 WHERE (entry = 9622);

UPDATE `creature_template` SET `scale` = 1.25, `DamageModifier` = 3 WHERE (entry = 6585);

UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 6511;
UPDATE `creature_template` SET `faction` = 48,`scale` = 1.5 WHERE (entry = 6511);

UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 6556;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 6556);

UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 6502;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 6502);

UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 6516);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 6518);

UPDATE `creature_template` SET `faction` = 103,`scale` = 0.75 WHERE (entry = 6517);
UPDATE `creature_template` SET `faction` = 103,`scale` = 1.4 WHERE (entry = 6519);

UPDATE `creature` SET `position_z` = `position_z`+7 WHERE `creature`.`id` = 9166;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (9166, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 9166);       #  Voler
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `creature`.`id` = 9166;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 9166);

UPDATE `creature` SET `position_z` = `position_z`+7 WHERE `creature`.`id` = 9167;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (9167, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `modelid1` = 8410,`InhabitType` = 4 WHERE (entry = 9167);       #  Voler
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `creature`.`id` = 9167;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 9167);


UPDATE `creature` SET `position_z` = `position_z`+7 WHERE `creature`.`id` = 6551;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (6551, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 6551);       #  Voler
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 9163;

UPDATE `creature` SET `position_z` = `position_z`+7 WHERE `creature`.`id` = 6554;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 6554);       #  Voler
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 6554;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (6554, 0, 0, 33554432, 1, 0, NULL);        #  Voler

UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 4.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 6582);

UPDATE `creature_template` SET `modelid1` = 13209, `faction` = 103, `scale` = 1.5, `unit_flags` = 0, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 9164);
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 9164;

UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 6555;
UPDATE `creature_template` SET `scale` = 0.6, `ArmorModifier` = 1, `DamageModifier` = 3 WHERE (entry = 6555);

UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 6553;
UPDATE `creature_template` SET `scale` = 0.8, `ArmorModifier` = 1.5, `DamageModifier` = 2 WHERE (entry = 6553);

UPDATE `creature_template` SET `scale` = 0.75, `unit_flags` = 32768, `type_flags` = 0,`DamageModifier` = 1.5 WHERE (entry = 38214);
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `creature`.`id` = 38214;

UPDATE `creature_template` SET `scale` = 0.75,`DamageModifier` = 2 WHERE (entry = 6512);
UPDATE `creature_template` SET `scale` = 1.25,`DamageModifier` = 2.5 WHERE (entry = 6509);
UPDATE `creature_template` SET `scale` = 2,`DamageModifier` = 3 WHERE (entry = 6510);

UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `creature`.`id` = 6512;

UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `creature`.`id` = 6560;

UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 33296;
UPDATE `creature` SET `spawntimesecs` = '15' WHERE `creature`.`id` = 2952;
UPDATE `creature_template` SET `faction` = 188 WHERE (entry = 36113); # non agressif

UPDATE `creature_template` SET `faction` = 7 WHERE (entry = 9621); # agressif

UPDATE `creature` SET `position_z` = `position_z`+8 WHERE `creature`.`id` = 49844;

UPDATE `creature` SET `position_z` = `position_z`+8 WHERE `creature`.`id` = 49844;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49844, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 49844);       #  Voler
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 49844;

UPDATE `creature` SET `position_z` = `position_z`+8 WHERE `creature`.`id` = 9600;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (9600, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 9600);       #  Voler

UPDATE `creature` SET `position_z` = `position_z`+5 WHERE `creature`.`id` = 9166;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 9600;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (9166, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 9166);       #  Voler



