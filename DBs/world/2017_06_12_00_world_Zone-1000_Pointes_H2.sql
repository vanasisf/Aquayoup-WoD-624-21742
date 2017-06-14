/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		    */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											    */
/*																																																				    */
/*	Stitch 2017-06 - V1.1 :  H2 & A2 suite																																 		 			    */
/* 1000 pointes Partie 2    																																 		 	                                    */
/****************************************************************************************************************************************/
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 
/****************************************************************************************/
/* 				Divers - Ange de rez	.npc add 6491	-  Reparation .npc add 29523					*/
/****************************************************************************************/


DELETE FROM `world`.`spell_learn_spell` WHERE `spell_learn_spell`.`entry` = 79954  AND `spell_learn_spell`.`SpellID` = 300028;
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('79954', '300028', '1');  




/****************************************************************************************/
/* 				Mobs & AI ( certains peuvent debug des quetes )												*/
/****************************************************************************************/

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070375, 47424, 1, 0, 0, 1, 0, 0, 0, 0, -6516.69, -3305.54, -92.2845, 2.92513, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0); # trigger


UPDATE `creature_template` SET `faction` = 2146, `unit_flags` = 0, `lootid` = 47816, `HealthModifier` = 2.5, `ArmorModifier` = 2, `DamageModifier` = 3,`ManaModifier` = 10 WHERE (entry = 47763);
-- Bound Fury SAI
SET @ENTRY := 47763;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,80549,0,0,0,0,0,2,0,0,0,0,0,0,0,"Goutte de flammes"),
(@ENTRY,0,15,0,9,0,100,0,0,10,10000,15000,11,11970,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nova de feu"),
(@ENTRY,0,20,0,11,0,100,0,0,10,10000,10000,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"defensif au spawn");

UPDATE `creature_template` SET `faction` = 2146, `unit_flags` = 0, `lootid` = 47816, `HealthModifier` = 2.5, `ArmorModifier` = 2, `DamageModifier` = 3,`ManaModifier` = 10 WHERE (entry = 47766);
-- Bound Vortex SAI
SET @ENTRY := 47766;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"eclair"),
(@ENTRY,0,15,0,9,0,100,0,0,20,10000,15000,11,83003,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nuage d'orage"),
(@ENTRY,0,20,0,11,0,100,0,0,10,10000,10000,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"defensif au spawn");

UPDATE `creature_template` SET `faction` = 2146, `unit_flags` = 0, `HealthModifier` = 4, `ArmorModifier` = 2, `DamageModifier` = 2,`ManaModifier` = 10,`InhabitType` = 4  WHERE (entry = 47777);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47777, 0, 0, 33554432, 1, 0, NULL);        #  Voler
-- Animus SAI
SET @ENTRY := 47777;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"defensif au spawn"),
(@ENTRY,0,15,0,8,0,100,0,88928,0,5000,5000,11,69319,0,0,0,0,0,1,0,0,0,0,0,0,0,"Reduction du total PV"),
(@ENTRY,0,20,0,8,0,100,0,88928,0,5000,5000,49,0,0,7,0,0,0,7,0,0,0,0,0,0,0,"agro"),
(@ENTRY,0,25,0,0,0,100,0,0,0,5000,7000,11,32018,0,0,0,0,0,2,0,0,0,0,0,0,0,"Appel d'éclair"),
(@ENTRY,0,30,0,9,0,100,0,0,8,20000,20000,11,79539,0,0,0,0,0,2,0,0,0,0,0,0,0,"Déferlante ( repousse )"),
(@ENTRY,0,3,0,0,0,100,0,5000,5000,10000,20000,11,83018,0,0,0,0,0,2,0,0,0,0,0,0,0,"Vague de magma");

# Maître des coursiers du vent Dyslix 40358 (Marécage d’Âprefange)
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(11372, 0, 2, 'Show me where I can fly.', 12271, 4, 8192, 0, 0, 0, 0, '', 0),
(11372, 1, 0, 'Dyslix, I need to get to Westreach Summit!', 0, 1, 1, 0, 0, 0, 0, '', 0);
UPDATE `world`.`locales_gossip_menu_option` SET `option_text_loc2` = ' Dyslix, je dois aller au Sommet Occidental' WHERE `locales_gossip_menu_option`.`menu_id` = 11372 AND `locales_gossip_menu_option`.`id` = 1; 
-- Dyslix Silvergrub SAI
SET @ENTRY := 40358;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,62,0,100,0,11372,1,0,0,62,1,0,0,0,0,0,7,0,0,0,-4301.25,-919.717,80.9199,3.5047,"TP Sommet Occidental");

# Maître des coursiers du vent Shyn  39898 (Féralas)
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(11684, 0, 2, 'Montrez-moi où je peux voler.', 0, 4, 8192, 0, 0, 0, 0, '', 0),
(11684, 1, 0, 'Take me to Revantusk Village.', 0, 1, 1, 0, 0, 0, 0, '', 0);
UPDATE `world`.`locales_gossip_menu_option` SET `option_text_loc2` = 'Emmenez-moi au Sommet Occidental' WHERE `locales_gossip_menu_option`.`menu_id` = 11684 AND `locales_gossip_menu_option`.`id` = 1;
-- Shyn SAI
SET @ENTRY := 39898;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,62,0,100,0,11684,1,0,0,62,1,0,0,0,0,0,7,0,0,0,-4301.25,-919.717,80.9199,3.5047,"TP Sommet Occidental"),
(@ENTRY,0,15,0,61,0,100,0,11684,1,0,0,33,39897,0,0,0,0,0,7,0,0,0,-4301.25,-919.717,80.9199,3.5047,"Rencontre au sommet 25356 : credit");

UPDATE `creature_template` SET `npcflag` = 2 WHERE (entry = 45278); # Brave de Librevent
UPDATE `creature_template` SET `modelid2` = 169 WHERE (entry = 48208); # Le hochet en os
UPDATE `gameobject_template` SET `Data3` = 60000, `Data6` = 0 WHERE (entry = 205368); # Râtelier d’armes du Totem-Sinistre

-- Arikara SAI
SET @ENTRY := 45447;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,4000,11,421,0,0,0,0,0,2,0,0,0,0,0,0,0,"chaine d'eclair"),
(@ENTRY,0,2,0,11,0,100,1,0,0,0,0,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,24,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"evade 40m"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,15,0,6,0,100,0,0,0,0,0,12,45442,2,60000,0,1,0,8,0,0,0,-4993.23,-2093.67,83.5605,3.7956,"Invoc Lakota Chant-du-Vent");





/****************************************************************************************/
/* 				QUETES              																								 */
/****************************************************************************************/
/* Suite de quete La pierre du destin 28159 - Répandre la nouvelle 28160 (a2) - 28161 (h2) */

UPDATE `quest_template_addon` SET `PrevQuestID` = 28159 WHERE (ID = 28160);
UPDATE `quest_template_addon` SET `PrevQuestID` = 28159 WHERE (ID = 28161);

/****************************************************************************************/
/* Une concurrence musclée  25757 (h2) */
REPLACE INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(266872, 25757, 0, 0, 41196, 1, 0, 0, '', 20444);

/****************************************************************************************/
/* Le brave et le téméraire 25872 */
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070372, 41460, 1, 0, 0, 1, 0, 0, 0, 0, -5436.26, -2424.49, 90.1196, 0.951504, 300, 0, 0, 6448, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 262148 WHERE (entry = 41460);

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(41460, 0, 0, "Merci mon ami , sans vous ces sauvages auraient surement fait de moi leur prochain repas.", 12, 0, 0, 1, 500, 0, 0, 0, "Le brave et le téméraire 25872");

-- Captured Feralas Sentinel SAI
SET @ENTRY := 41460;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,11,170010,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel enchainé assis"),
(@ENTRY,0,15,0,64,0,100,0,0,0,0,0,33,41460,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le brave et le téméraire 25872 : credit"),
(@ENTRY,0,20,0,64,0,100,0,0,0,0,0,28,170010,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le brave et le téméraire 25872 : retire chaine"),
(@ENTRY,0,25,0,64,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,-9835.79,1401.69,38.0848,3.75531,"Le brave et le téméraire 25872 : blabla"),
(@ENTRY,0,30,0,64,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le brave et le téméraire 25872 : despawn"),
(@ENTRY,0,35,0,64,0,100,0,0,0,0,0,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Le brave et le téméraire 25872 : Avance"),
(@ENTRY,0,26,0,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,-9835.79,1401.69,38.0848,3.75531,"Le brave et le téméraire 25872 : fermer gossip");

# pour la version a2 (Sauvetage en terrain ennemi 25871)
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070302, 41463, 1, 0, 0, 1, 0, 0, 0, 0, -5438.44, -2423.97, 90.179, 1.47667, 5, 0, 0, 6448, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/

