/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.0				AI & Quetes    																											 		 			    */
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 
/****************************************************************************************/
/* 				Divers -				*/
/****************************************************************************************/

REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `ScriptName`) VALUES 
('1377', '0', '0', '0', '0', '0', '100', '0', '0', '100', '0', '0', '100', ''),
('2742', '0', '0', '0', '0', '0', '100', '0', '0', '100', '0', '0', '100', ''),
('2740', '0', '0', '0', '0', '0', '100', '0', '0', '100', '0', '0', '100', ''),
('3426', '0', '0', '0', '0', '0', '100', '0', '0', '100', '0', '0', '100', '');

DELETE FROM `world`.`creature` WHERE `creature`.`guid` = 90893;

/****************************************************************************************/
/* 				AI & Mobs                                                                                                   				*/
/****************************************************************************************/





UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 49746;

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48096, 0, 0, 0, 1, 233, NULL); # Tape avec masse
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (1322, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49944, 0, 0, 0, 0, 0, '97014'); # Pecher
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49920, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49921 , 0, 0, 0, 0, 0, 79506); # Parler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (2920, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (41162, 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (76103, 0, 0, 8, 1, 0, NULL); # agenouillé

UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 33296;
UPDATE `creature` SET `spawntimesecs` = '15' WHERE `creature`.`id` = 2952;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 36094); # agressif
UPDATE `creature_template` SET `faction` = 188 WHERE (entry = 36113); # non agressif

DELETE FROM `world`.`creature` WHERE `creature`.`guid` = 363631;

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 11726);
-- Hive'Zora Tunneler SAI
SET @ENTRY := 11726;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,0,5,6000,8000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14474 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 4.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 14474);
SET @ENTRY := 14474;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,22000,23000,11,16790,0,0,0,0,0,2,0,0,0,0,0,0,0,"Renverser"),
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,6000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement");

UPDATE `creature_template` SET `lootid` = 11728,`HealthModifier` = 4.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 50742);
-- Qem SAI
SET @ENTRY := 50742;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,9,0,100,0,0,10,10000,15000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");

-- Table `creature_template`
UPDATE `creature_template` SET `scale` = 1.5, `lootid` = 11728, `HealthModifier` = 4.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 50897);
SET @ENTRY := 50897;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,22000,23000,11,16790,0,0,0,0,0,2,0,0,0,0,0,0,0,"Renverser"),
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,6000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement");


UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 15449 AND `creature_loot_template`.`Chance` <98 ;

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14472 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `HealthModifier` = 4.5, `DamageModifier` = 3 WHERE (entry = 14472);
-- Gretheer SAI
SET @ENTRY := 14472;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,10,5000,5000,11,21787,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison mortel"),
(@ENTRY,0,1,0,9,0,100,0,0,30,9000,11000,11,745,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gretheer - Within 0-30 Range - Cast 'Web'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");


UPDATE `world`.`creature_loot_template` SET `Chance` = '75' WHERE `creature_loot_template`.`Item` = 20404;


UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 49746;
#--- Crépuscule
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 15542);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 15201);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 15202);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 11880);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 15213);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 11883);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 11881);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 11804);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 11882);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 14479);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 11803);
UPDATE `creature_template` SET `faction` = 2146 WHERE (entry = 15308);


#--- Cercle cénarien faction 994
UPDATE `creature_template` SET `faction` = 994 WHERE (entry = 15545);
UPDATE `creature_template` SET `faction` = 994 WHERE (entry = 15184);

#--- Monstres 
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 11740);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 11741);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 15196);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 14477);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 14435);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 14862);

#--- Silicite faction 310
UPDATE `creature_template` SET `faction` = 310 WHERE (entry = 11721);
UPDATE `creature_template` SET `faction` = 310 WHERE (entry = 50897);
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 11731);

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14862 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `DamageModifier` = 6 WHERE (entry = 14862);

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14536 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `HealthModifier` = 4, `DamageModifier` = 4 WHERE (entry = 14536);


UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14477 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `scale` = 1.75, `HealthModifier` = 4, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 14477);
-- Grubthor SAI
SET @ENTRY := 14477;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,5000,8000,11,5568,0,0,0,0,0,1,0,0,0,0,0,0,0,"Piétiner"),
(@ENTRY,0,10,0,13,0,100,0,6000,10000,0,0,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_template` SET `scale` = 0.75, `DamageModifier` = 2.5 WHERE (entry = 11740);
-- Dredge Striker SAI
SET @ENTRY := 11740;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,5000,8000,11,66954,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe acide"),
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante");

UPDATE `creature_template` SET `scale` = 0.6, `BaseAttackTime` = 1500, `RangeAttackTime` = 1500 WHERE (entry = 11738);
-- Sand Skitterer SAI
SET @ENTRY := 11738;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,5000,5000,11,744,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poison"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 11744);
-- Dust Stormer SAI
SET @ENTRY := 11744;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,50,0,4000,8000,15000,15000,11,19513,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nuage d'éclairs"),
(@ENTRY,0,1,0,4,0,100,0,500,1000,600000,600000,11,19514,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dust Stormer - Out of Combat - Cast 'Lightning Shield'"),
(@ENTRY,0,2,0,16,0,100,0,19514,1,15000,30000,11,19514,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dust Stormer - On Friendly Unit Missing Buff 'Lightning Shield' - Cast 'Lightning Shield'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,5000,11,421,0,0,0,0,0,2,0,0,0,0,0,0,0,"chaine d'eclair");

UPDATE `creature_template` SET `type_flags` = 2048, `HealthModifier` = 1.4, `DamageModifier` = 3 WHERE (entry = 15542);
-- Twilight Marauder SAI
SET @ENTRY := 15542;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,2,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,1,0,2,0,100,1,0,40,3000,3000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-40% Health"),
(@ENTRY,0,2,0,2,0,100,0,1,25,14000,18000,11,23600,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hurlement perçant"),
(@ENTRY,0,3,0,2,0,30,1,0,30,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 30% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

-- Table `creature_template`
UPDATE `creature_template` SET `faction` = 2146, `speed_run` = 1.3, `unit_flags` = 0, `ArmorModifier` = 2, `DamageModifier` = 4.5 WHERE (entry = 15541);
-- Twilight Marauder Morna SAI
SET @ENTRY := 15541;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,6000,8000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe mortelle"),
(@ENTRY,0,1,0,0,0,100,0,0,0,5000,9000,11,15572,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fracasser armure"),
(@ENTRY,0,2,0,2,0,100,0,1,40,14000,18000,11,23600,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hurlement perçant"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,3,0,9,0,100,0,0,5,10000,15000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames    ");

UPDATE `creature_template` SET `scale` = 1.8, `HealthModifier` = 3, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 14476);
-- Krellack SAI
SET @ENTRY := 14476;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,6000,8000,11,21067,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de poison"),
(@ENTRY,0,10,0,0,0,100,0,0,0,6000,6000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");




UPDATE `creature_template` SET `speed_walk` = 1.5, `speed_run` = 1.5, `HealthModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 11741);
-- Dredge Crusher SAI
SET @ENTRY := 11741;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,13,0,100,0,10000,10000,0,0,11,6607,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fouet"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,8000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,15,0,1,0,100,0,0,0,5000,10000,11,118164,0,0,0,0,0,1,0,0,0,0,0,0,0,"creuse derriere lui nuage");



SET @ENTRY := 17068  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

UPDATE `creature_template` SET `ArmorModifier` = 3, `DamageModifier` = 3 WHERE (entry = 17080);
-- Marshal Bluewall SAI
SET @ENTRY := 17080;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

-- Janela Stouthammer SAI
SET @ENTRY := 15443;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,16000,18000,11,14518,0,0,0,0,0,2,0,0,0,0,0,0,0,"Janela Stouthammer - In Combat - Cast 'Crusader Strike'"),
(@ENTRY,0,1,0,2,0,100,0,0,30,24000,25000,11,25263,0,0,0,0,0,1,0,0,0,0,0,0,0,"Janela Stouthammer - Between 0-30% Health - Cast 'Holy Light'"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");


-- Krug Skullsplit SAI
SET @ENTRY := 15612;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,7000,18000,22000,11,15548,0,0,0,0,0,1,0,0,0,0,0,0,0,"Krug Skullsplit - In Combat - Cast 'Thunderclap'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,12000,16000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,"Krug Skullsplit - Within 0-5 Range - Cast 'Mortal Strike'"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

-- Orgrimmar Legion Axe Thrower SAI
SET @ENTRY := 15617;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,10277,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Throw"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Throw Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Throw Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Throw Range"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 15616;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 15440  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

-- Beetix Ficklespragg SAI
SET @ENTRY := 15189;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,8278,0,0,0,1,0,0,0,0,0,0,19,15190,20,0,0,0,0,0,"Beetix Ficklespragg - On Quest 'Noggle's Last Hope' Finished - Say Line 0"),
(@ENTRY,0,1,0,10,0,100,0,0,10,10000,10000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Beetix Ficklespragg - Out of Combat - Say Line 0"),
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 15175  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 15306  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 15270  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,1,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");


-- Ironforge Brigade Rifleman SAI
SET @ENTRY := 15441;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,0,75,0,100,0,0,15000079,4,3500,5,436,0,0,0,0,0,1,0,0,0,0,0,0,0,"emote tir au fusil si hors combat"),
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



SET @ENTRY := 15442  ;
-- Ironforge Brigade Footman SAI
SET @ENTRY := 15442;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,75,0,100,0,0,15000079,4,2500,10,587,441,36,38,54,390,1,0,0,0,0,0,0,0,"emote combat si hors combat"),
(@ENTRY,0,25,0,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arme a la main"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

-- Cenarion Hold Infantry SAI
SET @ENTRY := 15184;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,12000,14000,11,19643,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Mortal Strike"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,22000,24000,11,18328,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Incapacitating Shout"),
(@ENTRY,0,2,0,13,0,100,0,9000,11000,0,0,11,15618,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast Snap Kick on Player Spell Cast"),
(@ENTRY,0,1000,0,10,0,50,0,0,10,8000,10000,10,66,113,26,18,462,26,1,0,0,0,0,0,0,0,"emote aleatoire gardes");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 15196 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `speed_walk` = 1.25, `speed_run` = 1.25, `scale` = 1.75, `HealthModifier` = 4, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 15196);
-- Deathclasp SAI
SET @ENTRY := 15196;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,5000,5000,11,13298,32,0,0,0,0,2,0,0,0,0,0,0,0,"Deathclasp - In Combat - Cast 'Poison'"),
(@ENTRY,0,1,0,9,0,100,0,0,10,12000,16000,11,18670,0,0,0,0,0,2,0,0,0,0,0,0,0,"Repousser au loin"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `speed_run` = 1.3, `scale` = 1.25, `HealthModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 11739);
-- Rock Stalker SAI
SET @ENTRY := 11739;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,30,9000,11000,11,745,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rets 5-30m"),
(@ENTRY,0,1,0,9,0,100,0,0,5,5000,5000,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `HealthModifier` = 1.4, `ArmorModifier` = 3, `DamageModifier` = 3 WHERE (entry = 11737);
-- Stonelash Flayer SAI
SET @ENTRY := 11737;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,5000,5000,11,5416,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dard venimeux"),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,15000,16000,11,12787,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rosser"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

UPDATE `creature_template` SET `scale` = 1, `HealthModifier` = 1.5, `ArmorModifier` = 1.5, `DamageModifier` = 2.5 WHERE (entry = 11745);
-- Cyclone Warrior SAI
SET @ENTRY := 11745;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,8000,12000,11,12553,0,0,0,0,0,2,0,0,0,0,0,0,0,"Horion"),
(@ENTRY,0,1,0,13,0,100,0,0,0,21000,27000,11,15535,0,0,0,0,0,2,0,0,0,0,0,0,0,"Linceul de vents");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14471 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `HealthModifier` = 5, `ArmorModifier` = 2, `DamageModifier` = 4.5, `mechanic_immune_mask` = 198705 WHERE (entry = 14471);
-- Setis SAI
SET @ENTRY := 14471;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,6000,10000,11,16727,0,0,0,0,0,1,0,0,0,0,0,0,0,"Choc martial"),
(@ENTRY,0,10,0,13,0,100,0,8000,15000,0,0,11,10887,0,0,0,0,0,2,0,0,0,0,0,0,0,"Faucher la foule"),
(@ENTRY,0,15,0,9,0,100,0,0,5,6000,12000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut");

UPDATE `creature_template` SET `scale` = 2, `HealthModifier` = 1.6, `ArmorModifier` = 4, `DamageModifier` = 3 WHERE (entry = 11747);
-- Desert Rager SAI
SET @ENTRY := 11747;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,6000,11,13728,0,0,0,0,0,2,0,0,0,0,0,0,0,"Horion de terre"),
(@ENTRY,0,1,2,2,0,100,1,0,30,2000,2000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-30% Health"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Desert Rager - Between 0-30% Health - Say Line 0 (No Repeat)"),
(@ENTRY,0,10,0,9,0,100,0,0,10,5000,10000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,"Piétinement");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 1.5, `DamageModifier` = 2 WHERE (entry = 11880);
-- Twilight Avenger SAI
SET @ENTRY := 11880;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,30,3000,3000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-30% Health"),
(@ENTRY,0,1,0,2,0,30,1,0,30,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 30% HP"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,8602,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vengeance"),
(@ENTRY,0,15,0,0,0,100,0,0,0,5000,6000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   "),
(@ENTRY,0,20,0,4,0,50,0,0,0,0,0,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0,"charge");

-- Twilight Keeper Havunth SAI
SET @ENTRY := 11804;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,8,13600,14500,11,17366,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nova de feu 0-8 m"),
(@ENTRY,0,1,0,9,0,100,0,0,20,6000,8000,11,13339,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de feu 0-20 m");

-- Twilight Geolord SAI
SET @ENTRY := 11881;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,2000,3000,10000,10000,11,13728,0,0,0,0,0,2,0,0,0,0,0,0,0,"Horion de terre"),
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement a distance"),
(@ENTRY,0,11,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,9,0,100,0,5,30,3000,4000,11,9483,0,0,0,0,0,2,0,0,0,0,0,0,0,"5m - 30m : Rocher"),
(@ENTRY,0,21,22,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme a distance"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement OFF"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Auto Attack"),
(@ENTRY,0,30,31,9,0,100,0,0,5,3000,3500,11,6603,64,0,0,0,0,1,0,0,0,0,0,0,0,"0m - 5m : Attaque auto"),
(@ENTRY,0,31,32,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,32,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement ON");

-- Twilight Prophet SAI
SET @ENTRY := 15308;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement visible"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : Movement ON"),
(@ENTRY,0,12,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,0,4,0,100,0,5,30,3000,3500,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agro -  Movement OFF"),
(@ENTRY,0,30,0,9,0,100,0,35,100,3000,3500,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"35m - 100m : Mouvement on"),
(@ENTRY,0,40,0,0,0,100,0,1000,1000,4000,5000,11,12058,0,0,0,0,0,2,0,0,0,0,0,0,0,"Chaîne d'éclairs"),
(@ENTRY,0,41,0,9,0,100,0,0,5,20000,20000,11,22884,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri psychique"),
(@ENTRY,0,45,0,9,0,100,0,6,10,15000,15000,11,17366,1,0,0,0,0,1,0,0,0,0,0,0,0,"Nova de feu");

-- Twilight Stonecaller SAI
SET @ENTRY := 11882;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1100,20000,20000,11,13236,0,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Stonecaller - Out of Combat - Cast 'Nature Channeling'"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3400,4700,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast bolt"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,14,0,1,0,100,1,3000,5000,3000,3000,11,19704,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Summon Earth Elemental on Spawn"),
(@ENTRY,0,15,0,9,0,100,0,0,5,12000,17000,11,11020,1,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Petrify");

UPDATE `creature_template` SET `HealthModifier` = 3, `ManaModifier` = 2.5 WHERE (entry = 14479);
-- Twilight Lord Everun SAI
SET @ENTRY := 14479;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement visible"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : Movement ON"),
(@ENTRY,0,12,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,4,0,100,0,5,30,3000,3500,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agro -  Movement OFF"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,11,184,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Bouclier de feu"),
(@ENTRY,0,30,31,9,0,100,0,35,100,3000,3500,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"35m - 100m : Evade"),
(@ENTRY,0,31,0,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,40,0,0,0,100,0,1000,1000,3000,4000,11,20793,0,0,0,0,0,2,0,0,0,0,0,0,0,"Combat - Boule de feu");

UPDATE `creature_template` SET `HealthModifier` = 2, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 11803);
-- Twilight Keeper Exeter SAI
SET @ENTRY := 11803;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,12000,13000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe mortelle"),
(@ENTRY,0,1,0,13,0,100,0,20000,20000,0,0,11,22427,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup traumatisant"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,9,0,100,0,0,5,20000,20000,11,78828,1,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames");

UPDATE `creature_template` SET `HealthModifier` = 1 WHERE (entry = 12178);
-- Tortured Druid SAI
SET @ENTRY := 12178;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,30,3000,3000,11,23381,0,0,0,0,0,1,0,0,0,0,0,0,0,"Toucher guérisseur 0-30% Health"),
(@ENTRY,0,1,0,0,0,100,0,0,0,6000,10000,11,23380,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclat lunaire"),
(@ENTRY,0,2,0,2,0,100,0,0,40,14000,21000,11,23381,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Healing Touch at 40% HP"),
(@ENTRY,0,2,3,0,0,75,0,0,0,4000,4000,11,5176,0,0,0,0,0,1,0,0,0,0,0,0,0,"Colère"),
(@ENTRY,0,3,0,61,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tortured Druid - On Just Died - Say Line 0");

-- Tortured Sentinel SAI
SET @ENTRY := 12179;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,0,0,75,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,1,0,6,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tortured Sentinel - On Just Died - Say Line 0"),
(@ENTRY,0,10,0,0,0,30,0,0,0,5000,5000,46,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"avance en combat");

UPDATE `creature_template` SET `unit_flags` = 0, `DamageModifier` = 2.5 WHERE (entry = 12199);
-- Shade of Ambermoon SAI
SET @ENTRY := 12199;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse  ");

UPDATE `creature_template` SET `scale` = 0.6,`DamageModifier` = 3 WHERE (entry = 11698);
-- Hive'Ashi Stinger SAI
SET @ENTRY := 11698;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,0,0,100,0,0,0,5000,5000,11,21067,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair de poison");

UPDATE `creature_template` SET `scale` = 0.6,`DamageModifier` = 3 WHERE (entry = 11698);
-- Hive'Ashi Swarmer SAI
SET @ENTRY := 11724;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,9,0,100,0,0,5,8000,8000,11,79175,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coupe frénétique ");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 11698);
-- Hive'Regal Spitfire SAI
SET @ENTRY := 11732;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,16000,19000,11,21047,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hive'Regal Spitfire - In Combat - Cast 'Corrosive Acid Spit'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,13600,14500,11,5708,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hive'Regal Spitfire - Within 0-5 Range - Cast 'Swoop'"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `scale` = 0.6,`DamageModifier` = 3 WHERE (entry = 11732);
-- Hive'Regal Spitfire SAI
SET @ENTRY := 11732;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,3000,4000,6000,11,21047,0,0,0,0,0,2,0,0,0,0,0,0,0,"Crachat d'Acide corrosif"),
(@ENTRY,0,1,0,9,0,100,0,0,5,5000,5000,11,5708,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rapace"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `scale` = 0.6,`DamageModifier` = 3 WHERE (entry = 11733);
-- Hive'Regal Slavemaker SAI
SET @ENTRY := 11733;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,30,0,0,5,10000,10000,11,3584,0,0,0,0,0,2,0,0,0,0,0,0,0,"Infection volatile"),
(@ENTRY,0,1,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 11734);
-- Hive'Regal Hive Lord SAI
SET @ENTRY := 11734;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,19471,0,0,0,0,0,2,0,0,0,0,0,0,0,"Charge du berserker"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 11730);
-- Hive'Regal Ambusher SAI
SET @ENTRY := 11730;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,"Furtivité"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,89712,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure bondissante"),
(@ENTRY,0,2,0,0,0,75,0,2000,4500,15000,24000,11,744,0,0,0,0,0,2,0,0,0,0,0,0,0,"Poison"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14473 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `speed_run` = 1.4, `scale` = 2, `HealthModifier` = 5, `ArmorModifier` = 2, `DamageModifier` = 4.5 WHERE (entry = 14473);
-- Lapress SAI
SET @ENTRY := 14473;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,15000,15000,11,13445,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre"),
(@ENTRY,0,10,0,9,0,100,0,0,5,10000,10000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

-- Mistress Natalia Mar'alith SAI
SET @ENTRY := 15215;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistress Natalia Mar'alith - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,44415,0,0,0,0,0,2,0,0,0,0,0,0,0,"Aveuglement"),
(@ENTRY,0,2,0,2,0,100,1,0,50,3000,3000,11,13704,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri psychique 0-50% Health"),
(@ENTRY,0,3,0,0,0,100,0,0,0,5000,5000,11,11639,32,0,0,0,0,2,0,0,0,0,0,0,0,"Mot de l’ombre : Douleur"),
(@ENTRY,0,4,0,0,0,100,0,0,0,5000,8000,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de l'ombre   ");

UPDATE `creature_template` SET `ArmorModifier` = 2.5, `DamageModifier` = 2.5 WHERE (entry = 11731);
-- Hive'Regal Burrower SAI
SET @ENTRY := 11731;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,5000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_template` SET `scale` = 0.6, `HealthModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 11727);
-- Hive'Zora Wasp SAI
SET @ENTRY := 11727;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,4000,4000,11,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,89712,0,0,0,0,0,3,0,0,0,0,0,0,0,"Griffure bondissante");

UPDATE `creature_template` SET `scale` = 0.6, `HealthModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 11725);
-- Hive'Zora Waywatcher SAI
SET @ENTRY := 11725;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,9,0,100,0,0,5,8000,10000,11,79175,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coupe frénétique");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 11728);
-- Hive'Zora Reaver SAI
SET @ENTRY := 11728;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,22000,23000,11,16790,0,0,0,0,0,2,0,0,0,0,0,0,0,"Renverser"),
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,6000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14454 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `scale` = 1.5 WHERE (entry = 14454);

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14478 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 4 WHERE (entry = 14478);
-- Huricanian SAI
SET @ENTRY := 14478;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,5000,8000,11,32018,0,0,0,0,0,4,0,0,0,0,0,0,0,"Appel d'éclair    ");

UPDATE `creature_template` SET `ArmorModifier` = 2, `DamageModifier` = 2.5 WHERE (entry = 11746);
-- Desert Rumbler SAI
SET @ENTRY := 11746;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,8,18000,24000,11,5568,0,0,0,0,0,1,0,0,0,0,0,0,0,"Piétiner"),
(@ENTRY,0,10,0,9,0,25,0,0,5,10000,10000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut");

UPDATE `creature_template` SET `scale` = 1.25, `ArmorModifier` = 2.5, `DamageModifier` = 2.5 WHERE (entry = 11721);
-- Hive'Ashi Worker SAI
SET @ENTRY := 11721;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,-1,0,0,0,100,0,0,0,4000,6000,11,81691,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cornépine");

UPDATE `creature_template` SET `scale` = 0.75, `DamageModifier` = 2.75 WHERE (entry = 11723);
-- Hive'Ashi Sandstalker SAI
SET @ENTRY := 11723;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hive'Ashi Sandstalker - On Respawn - Cast 'Sneak' (No Repeat)"),
(@ENTRY,0,1,0,7,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hive'Ashi Sandstalker - On Evade - Cast 'Sneak' (No Repeat)"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 11722);
-- Hive'Ashi Defender SAI
SET @ENTRY := 11722;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,3000,12000,15000,11,11443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Faiblesse"),
(@ENTRY,0,1,0,9,0,100,0,0,5,10000,15000,11,6713,0,0,0,0,0,2,0,0,0,0,0,0,0,"Désarmement");

UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 14475 AND `creature_loot_template`.`Chance` <98 ;
UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 4.5, `ArmorModifier` = 2, `DamageModifier` = 3.5 WHERE (entry = 14475);
-- Rex Ashil SAI
SET @ENTRY := 14475;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,18000,22000,11,12097,0,0,0,0,0,2,0,0,0,0,0,0,0,"Perce-armure"),
(@ENTRY,0,10,0,0,0,100,0,0,0,6000,8000,11,163716,0,0,0,0,0,2,0,0,0,0,0,0,0,"Griffure de serres  "),
(@ENTRY,0,15,0,4,0,100,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `HealthModifier` = 1, `ManaModifier` = 2 WHERE (entry = 15213);
-- Twilight Master SAI
SET @ENTRY := 11883;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement visible"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : Movement ON"),
(@ENTRY,0,12,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,0,9,0,100,0,0,35,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-35m -  Movement OFF"),
(@ENTRY,0,30,31,9,0,100,0,35,100,3000,3500,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"35m - 100m : mouvement on"),
(@ENTRY,0,31,0,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,40,0,0,0,100,0,1000,1000,4000,4000,11,12058,0,0,0,0,0,2,0,0,0,0,0,0,0,"chaine d'eclair"),
(@ENTRY,0,41,0,9,0,100,0,0,20,6000,6000,11,13339,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de feu"),
(@ENTRY,0,45,0,9,0,100,0,0,10,12000,12000,11,122,1,0,0,0,0,1,0,0,0,0,0,0,0,"Nova de givre");

UPDATE `creature_template` SET `HealthModifier` = 1 WHERE (entry = 15201);
-- Twilight Flamereaver SAI
SET @ENTRY := 15201;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse");

UPDATE `creature_template` SET `faction` = 2146, `unit_flags` = 0, `HealthModifier` = 3 WHERE (entry = 15200);
-- Twilight Keeper Mayna SAI
SET @ENTRY := 15200;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,25,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement visible"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : Movement ON"),
(@ENTRY,0,12,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,0,4,0,100,0,5,30,3000,3500,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agro -  Movement OFF"),
(@ENTRY,0,30,31,9,0,100,0,35,100,3000,3500,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"35m - 100m : Evade"),
(@ENTRY,0,31,0,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,40,0,0,0,100,0,1000,1000,4000,4000,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait de l'ombre"),
(@ENTRY,0,41,0,0,0,100,0,0,0,5000,5000,11,15654,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mot de l’ombre : Douleur"),
(@ENTRY,0,15,0,9,0,100,0,0,5,15000,15000,11,22884,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri psychique");













/****************************************************************************************/
/* 				QUETES              																								 */
/****************************************************************************************/

/* La lettre perdue de Brann Barbe-de-Bronze 8308 */
DELETE FROM `creature_queststarter` WHERE `quest` = 8308;

/****************************************************************************************/
/* Quetes Obsolètes */

DELETE FROM `creature_queststarter` WHERE `quest` =  9413;
DELETE  FROM `creature_questender` WHERE `quest` = 9413;
DELETE FROM `creature_queststarter` WHERE `quest` =  9414;
DELETE  FROM `creature_questender` WHERE `quest` = 9414;
DELETE FROM `creature_queststarter` WHERE `quest` = 9419;
DELETE  FROM `creature_questender` WHERE `quest` = 9419;
DELETE FROM `creature_queststarter` WHERE `quest` = 9422;
DELETE  FROM `creature_questender` WHERE `quest` = 9422;

DELETE FROM `creature_queststarter` WHERE `quest` = 8331;
DELETE  FROM `creature_questender` WHERE `quest` = 8331;
DELETE FROM `creature_queststarter` WHERE `quest` = 8332;
DELETE  FROM `creature_questender` WHERE `quest` = 8332;
DELETE FROM `creature_queststarter` WHERE `quest` = 8333;
DELETE  FROM `creature_questender` WHERE `quest` = 8333;
DELETE FROM `creature_queststarter` WHERE `quest` = 8339;
DELETE  FROM `creature_questender` WHERE `quest` = 8339;
DELETE FROM `creature_queststarter` WHERE `quest` = 8340;
DELETE  FROM `creature_questender` WHERE `quest` = 8340;
DELETE FROM `creature_queststarter` WHERE `quest` = 8341;
DELETE  FROM `creature_questender` WHERE `quest` = 8341;
DELETE FROM `creature_queststarter` WHERE `quest` = 8342;
DELETE  FROM `creature_questender` WHERE `quest` = 8342;
DELETE FROM `creature_queststarter` WHERE `quest` = 8343;
DELETE  FROM `creature_questender` WHERE `quest` = 8343;
DELETE FROM `creature_queststarter` WHERE `quest` = 8829;
DELETE  FROM `creature_questender` WHERE `quest` = 8829;
DELETE FROM `creature_queststarter` WHERE `quest` = 8829;
DELETE  FROM `creature_questender` WHERE `quest` = 9248;
DELETE FROM `creature_queststarter` WHERE `quest` = 9248;
DELETE  FROM `creature_questender` WHERE `quest` = 8344;
DELETE FROM `creature_queststarter` WHERE `quest` = 8344;









/****************************************************************************************/
/* Chère Natalia 8304 */
UPDATE `creature_template` SET `ScriptName` = '' WHERE (entry = 15171);
UPDATE `world`.`creature` SET `npcflag` = '0' WHERE `creature`.`guid` = 363402;
SET NAMES utf8;
UPDATE `hotfixes`.`broadcast_text` SET `MaleText` = 'Je suis sûr que Rutgar vous en a déjà dit pas mal, alors je vais vous épargner les détails oiseux et en venir directement au fait . Donc, dame Natalia était revenue pour un deuxième tour aux ruches, mais Brann a dit « pas question » . Elle a hoché la tête et elle nous a foncé dessus . Elle nous a attaqués ! Ensuite, elle a foncé droit vers la ruche et il ne s’est pas trouvé un seul insecte pour essayer de l’arrêter !!!Dingue non ?' WHERE `broadcast_text`.`ID` = 10656;

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(15171, 0, 0, " ", 0, 1,1, 0, 0, 0, 0, '', 0);

-- Frankal Stonebridge SAI
SET @ENTRY := 15171;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,5,10,64,0,100,0,0,0,0,0,33,15221,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chère Natalia 8304 : credit");

UPDATE `world`.`quest_offer_reward` SET `RewardText` = 'Le commandant Mar''alith baisse la tête dans sa contemplation ... elle est vivante ou morte? Elle doit être trouvée. Hélas, je suis lié par le devoir à cet avant-poste. Voulez-vous m''aider encore une fois de plus ?' WHERE `quest_offer_reward`.`ID` = 8304;

/****************************************************************************************/
/* À la poursuite des glyphes 8309 */
-- Hive'Regal Glyphed Crystal SAI
SET @ENTRY := 180453;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,62,0,100,0,6561,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"À la poursuite des glyphes 8309 : gossip"),
(@ENTRY,1,1,0,62,0,100,1,6561,0,0,0,56,20456,1,0,0,0,0,7,0,0,0,0,0,0,0,"À la poursuite des glyphes 8309 : credit");

/****************************************************************************************/
/* Dévoiler le mystère 8314 */
DELETE FROM `creature_queststarter` WHERE (quest = 8314) AND (id IN (15183));
UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE (ID = 8314);


/****************************************************************************************/
/* L'appel 8315 */
UPDATE `quest_template` SET `StartItem` = 0 WHERE (ID = 8315);
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 0 WHERE (ID = 8315);
DELETE FROM `creature_queststarter` WHERE (quest = 8315) AND (id IN (15183));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (15183, 8315);
DELETE FROM `creature_questender` WHERE (quest = 8315) AND (id IN (15183));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15183, 8315);

/****************************************************************************************/
/* Armes de guerre  8316 8376 8377 8378 8379 8380 8381 8382 */

UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8316 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8376  AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8377  AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8378  AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8379  AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8380  AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8381  AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `world`.`quest_template_locale` SET `QuestDescription` = 'La guerre vient et avec elle vient des horreurs inconnues. Vous avez fait tout ce qui pouvait vous être demandé et pour cela, vous devriez être récompensé. Ces armements se révéleront inestimables pour votre campagne dans ce désert. <Le géologue Larksbane devient pâle.> Est-ce que c''est la fin de cette prophétie ... amoins que cela ne soit le début de la fin pour nous tous . ' WHERE `quest_template_locale`.`ID` = 8382  AND `quest_template_locale`.`locale` = 'frFR';

UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8378);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8316);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8376);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8377);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8379);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8380);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8381);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 8378 WHERE (ID = 8382);

/****************************************************************************************/
/* La chute d'Ossirian 8791 */
DELETE FROM `creature_queststarter` WHERE `quest` = 8791;

