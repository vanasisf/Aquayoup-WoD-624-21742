/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.0  - Tanaris Cosmetiques                 																														 		 			    */
/****************************************************************************************************************************************/
/****************************************************************************************************************************************/


 SET NAMES utf8 ;


/****************************************************************************************/
/* 				Cosmetiques                                                                                                				*/
/****************************************************************************************/

# UPDATE `creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 8301 ;
# UPDATE `creature_loot_template` SET `Chance` = '100' WHERE `creature_loot_template`.`Entry` = 11560 AND `creature_loot_template`.`Item` = 15849;

UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 49833;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 40764;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5419;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5426;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 40717;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 40656;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 40657;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5646;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5647;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5645;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5465;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 8667;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5460;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5458;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5455;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 9397;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44599;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44594;
UPDATE `creature` SET `spawndist`=25,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44873;
UPDATE `creature` SET `spawndist`=25,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 38914;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44595;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 49836;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5454;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5452;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5451;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5450;
UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 38992;
UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 38993;
UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 38994;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5430;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44568;
UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5475;
UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5474;
UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5472;
UPDATE `creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5473;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5471;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5429;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 8667;
UPDATE `creature` SET `spawndist`=25,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 41730;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44546;
UPDATE `creature` SET `spawndist`=0,`MovementType` = '0'  WHERE `creature`.`id` = 39022;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 14123;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5420;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5427;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44611;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 44612;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5427;
UPDATE `creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 40527;
UPDATE `creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 5431;


REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (11758 , 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (43964 , 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (8736 , 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (8125, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5411, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (14567, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (7583, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40747, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (43972, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (43980, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38719 , 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (39020 , 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5594, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (9460, 0, 0, 0, 0, 0, 84070); # Appeler / rameuter


REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48096, 0, 0, 0, 1, 233, NULL); # Tape avec masse
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49944, 0, 0, 0, 0, 0, '97014'); # Pecher
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49921 , 0, 0, 0, 0, 0, 79506); # Parler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (41162, 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (76103, 0, 0, 8, 1, 0, NULL); # agenouillé


REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50530, 0, 0, 1, 1, 0, ''); # Assis par terre




# Arene
DELETE FROM `creature` WHERE `creature`.`guid` = 254662;
DELETE FROM `creature` WHERE `creature`.`guid` = 254663;
DELETE FROM `creature` WHERE `creature`.`guid` = 254664;
REPLACE INTO `creature_template_locale` (`entry`, `locale`, `Name`, `NameAlt`, `Title`, `TitleAlt`, `VerifiedBuild`) VALUES
(54654, 'frFR', 'Ecton Briquedouille', '', 'Intendant de l''honneur', NULL, 18019),
(54655, 'frFR', 'Evee Cuivressort', '', 'Intendante de conquête', NULL, 18019),
(54656, 'frFR', 'Argex Tripenfer', '', 'Intendant des glorieux Conquérants', NULL, 18019);
UPDATE `creature_template` SET `npcflag` = 128 WHERE (entry = 20278);

SET @ENTRY := 19860  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");
SET @ENTRY := 19859  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070379, 54656, 1, 0, 0, 1, 0, 0, 0, 1, -7124.45, -3769.33, 9.3891, 2.39112, 300, 0, 0, 8598, 0, 0, 0, 0, 0, 0),
(21070378, 54655, 1, 0, 0, 1, 0, 0, 0, 0, -7125.56, -3768.07, 9.35038, 5.4797, 300, 0, 0, 8598, 0, 0, 0, 0, 0, 0),
(273538, 54654, 1, 440, 976, 1, 0, 0, 0, 0, -7120.78, -3773.97, 9.05383, 1.0821, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273539, 19860, 1, 440, 976, 1, 0, 0, 0, 1, -7122.26, -3801.36, 8.71423, 4.08956, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273540, 9460, 1, 440, 976, 1, 0, 0, 0, 1, -7116.29, -3788.09, 8.8437, 6.00393, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273541, 40216, 1, 440, 976, 1, 0, 0, 0, 1, -7120.36, -3770.94, 9.15415, 4.82979, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(273542, 20278, 1, 440, 976, 1, 0, 0, 0, 0, -7118.06, -3773.16, 8.82257, 3.30808, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(254660, 19859, 1, 440, 976, 1, 0, 0, 0, 1, -7124.24, -3803.94, 8.74067, 0.912622, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0);

#---
DELETE FROM `creature` WHERE `creature`.`guid` = 21070189;

## Réfugié de Gentepression
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070409, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7131.48, -3921.29, 6.32023, 1.43684, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070408, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7130.63, -3918.7, 6.32793, 4.39583, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070407, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7085.12, -3895.74, 9.70747, 6.02749, 300, 0, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070406, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7136.28, -3896.36, 7.79869, 3.17453, 300, 15, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070405, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7119.13, -3896.08, 8.31143, 4.42135, 300, 10, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070404, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7138.85, -3867.54, 9.59214, 2.17119, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070403, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7144.72, -3866.68, 9.19009, 0.973454, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070402, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7146.43, -3862.38, 8.75184, 6.14726, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070401, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7143.8, -3858.27, 8.52623, 5.15374, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070400, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7139.08, -3857.42, 8.8147, 4.59021, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070399, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7153.89, -3854.59, 8.98411, 3.19809, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070398, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7197.43, -3837.01, 8.72248, 5.36383, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070397, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7198.81, -3835.43, 8.72248, 3.8755, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070396, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7230.77, -3805.76, -1.34768, 2.99389, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070395, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7230.1, -3801.91, -1.34816, 3.22951, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070394, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7231.15, -3803.65, -1.34816, 3.28449, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070393, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7233.47, -3801.46, -1.35322, 3.10777, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070392, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7233.61, -3806.64, -1.35377, 3.19024, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070391, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7172.2, -3785.51, 8.37122, 0.203766, 300, 15, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070390, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7224.54, -3767.65, 8.47681, 3.01353, 300, 15, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070389, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7211.34, -3772.32, 8.3705, 3.96386, 300, 15, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070388, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7203.49, -3733.13, 8.37287, 2.75435, 300, 15, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070387, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7184.97, -3718.44, 10.1089, 5.66817, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070386, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7181.88, -3720.41, 10.0791, 2.60905, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070385, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7118.88, -3752.99, 8.39541, 6.12959, 300, 15, 0, 7172, 0, 1, 0, 0, 0, 0),
(21070384, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7054.52, -3816.05, 9.69029, 4.60788, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070383, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7054.8, -3819.22, 9.62459, 1.48593, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0),
(21070382, 40588, 1, 0, 0, 1, 0, 0, 0, 0, -7071.1, -3856.66, 9.81218, 0.800668, 300, 0, 0, 7172, 0, 0, 0, 0, 0, 0);

SET @ENTRY := 40588  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); # Réfugié de Gentepression
SET @ENTRY := 40589  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 98826  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 8124  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 7799  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 8661  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 38535  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 38534  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 38532  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 8129  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 6568  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 8131  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 46520  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 46525  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 46529  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 46522  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 46523  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 44833  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 
SET @ENTRY := 38571  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "); 






# .wp add 110000686
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(110000689, 13, -7069.83, -3792.55, 9.68725, 0, 0, 0, 0, 100, 0),
(110000689, 12, -7070.66, -3798.55, 9.35708, 0, 0, 0, 0, 100, 0),
(110000689, 11, -7073.8, -3807.48, 8.65718, 0, 0, 0, 0, 100, 0),
(110000689, 10, -7080.05, -3806.56, 8.52873, 0, 0, 0, 0, 100, 0),
(110000689, 9, -7089.16, -3800.65, 8.5815, 0, 0, 0, 0, 100, 0),
(110000689, 8, -7101.3, -3798.9, 8.50369, 0, 0, 0, 0, 100, 0),
(110000689, 7, -7107.26, -3793.37, 8.36946, 0, 0, 0, 0, 100, 0),
(110000689, 6, -7110.41, -3776.85, 8.46139, 0, 0, 0, 0, 100, 0),
(110000689, 5, -7110.03, -3761.82, 8.37355, 0, 0, 0, 0, 100, 0),
(110000689, 4, -7104.37, -3755.2, 8.37121, 0, 0, 0, 0, 100, 0),
(110000689, 3, -7097.77, -3755.18, 8.40407, 0, 0, 0, 0, 100, 0),
(110000689, 2, -7092.48, -3755.31, 8.61397, 0, 0, 0, 0, 100, 0),
(110000689, 1, -7077.82, -3754.71, 8.78182, 0, 0, 0, 0, 100, 0),
(110000687, 14, -7241.75, -3761.41, 8.77964, 0, 0, 0, 0, 100, 0),
(110000687, 13, -7218.39, -3774.71, 8.37009, 0, 0, 0, 0, 100, 0),
(110000687, 12, -7200.45, -3775.19, 8.386, 0, 0, 0, 0, 100, 0),
(110000687, 11, -7194.23, -3762.27, 8.78729, 0, 0, 0, 0, 100, 0),
(110000687, 10, -7191.51, -3750.09, 8.36993, 0, 0, 0, 0, 100, 0),
(110000687, 9, -7194.99, -3740.45, 8.37249, 0, 0, 0, 0, 100, 0),
(110000687, 8, -7208.33, -3730.12, 8.3695, 0, 0, 0, 0, 100, 0),
(110000687, 7, -7221.25, -3722.4, 8.44484, 0, 0, 0, 0, 100, 0),
(110000687, 6, -7231.64, -3719.33, 9.06625, 0, 0, 0, 0, 100, 0),
(110000687, 5, -7247.29, -3715.82, 9.13262, 0, 0, 0, 0, 100, 0),
(110000687, 4, -7259.78, -3723.87, 9.0631, 0, 0, 0, 0, 100, 0),
(110000687, 3, -7262.61, -3746.6, 9.22223, 0, 0, 0, 0, 100, 0),
(110000687, 2, -7257.33, -3752.59, 9.34057, 0, 0, 0, 0, 100, 0),
(110000687, 1, -7252.27, -3756.2, 8.8356, 0, 0, 0, 0, 100, 0),
(110000686, 23, -7286.49, -3704.5, 9.81314, 0, 0, 0, 0, 100, 0),
(110000686, 22, -7273.23, -3715.91, 9.30234, 0, 0, 0, 0, 100, 0),
(110000686, 21, -7257.38, -3717.07, 9.06129, 0, 0, 0, 0, 100, 0),
(110000686, 20, -7238.86, -3712.42, 9.3606, 0, 0, 0, 0, 100, 0),
(110000686, 19, -7227.24, -3719.9, 8.7607, 0, 0, 0, 0, 100, 0),
(110000686, 18, -7219.97, -3723.26, 8.4886, 0, 0, 0, 0, 100, 0),
(110000686, 17, -7195.26, -3734.53, 8.55336, 0, 0, 0, 0, 100, 0),
(110000686, 16, -7184.29, -3750.76, 8.37035, 0, 0, 0, 0, 100, 0),
(110000686, 15, -7175.29, -3758.99, 8.43638, 0, 0, 0, 0, 100, 0),
(110000686, 14, -7169.01, -3770.18, 8.37108, 0, 0, 0, 0, 100, 0),
(110000686, 13, -7174.74, -3781.05, 8.4, 0, 0, 0, 0, 100, 0),
(110000686, 12, -7186.51, -3783.08, 8.37117, 0, 0, 0, 0, 100, 0),
(110000686, 11, -7200.85, -3777.77, 8.37162, 0, 0, 0, 0, 100, 0),
(110000686, 10, -7221.18, -3774.11, 8.37101, 0, 0, 0, 0, 100, 0),
(110000686, 9, -7230.84, -3767.67, 8.67733, 0, 0, 0, 0, 100, 0),
(110000686, 8, -7243.27, -3760.6, 8.73059, 0, 0, 0, 0, 100, 0),
(110000686, 7, -7255.49, -3754.72, 9.15025, 0, 0, 0, 0, 100, 0),
(110000686, 6, -7287.39, -3740.58, 10.2728, 0, 0, 0, 0, 100, 0),
(110000686, 5, -7293.46, -3737.74, 10.1234, 0, 0, 0, 0, 100, 0),
(110000686, 4, -7298.77, -3725.97, 10.1234, 0, 0, 0, 0, 100, 0),
(110000686, 3, -7298.57, -3713.16, 10.1234, 0, 0, 0, 0, 100, 0),
(110000686, 2, -7297.61, -3710.14, 9.47841, 0, 0, 0, 0, 100, 0),
(110000686, 1, -7295.04, -3704.18, 9.48024, 0, 0, 0, 0, 100, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070417, 39059, 1, 0, 0, 1, 0, 0, 0, 0, -9771.31, -3669.28, 11.1618, 0.568968, 300, 0, 0, 12420, 0, 0, 0, 0, 0, 0),
(21070416, 38704, 1, 0, 0, 1, 0, 0, 0, 1, -7942.11, -5289.39, 0.912751, 1.95324, 300, 0, 0, 12420, 0, 0, 0, 0, 0, 0),
(21070415, 38703, 1, 0, 0, 1, 0, 0, 0, 1, -7957.21, -5225.63, 1.1266, 0.476694, 300, 0, 0, 12420, 0, 0, 0, 0, 0, 0); # Donneurs de quetes





