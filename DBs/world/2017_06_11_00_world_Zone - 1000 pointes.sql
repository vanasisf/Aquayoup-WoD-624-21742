/****************************************************************************************************************************************/
/*	Mise a jour de la DB Stitchland pour World of Draenor 6.24 - 21742 - Developpement du Repack & support sur http://aquayoup.123.fr   */
/* Autant que possible préférez la DB complete aux updates . Les updates ne comprennent que les modifications importantes 		 		   */
/* comme les debugs de quetes mais ne comprend pas forcement des details cosmetiques ou petits spawns											   */
/*																																																				   */
/*	Stitch 2017-05 - V1.0 																																							 		 			   */
/* 1000 pointes	 			   */
/****************************************************************************************************************************************/

 SET NAMES utf8 ;
 
/****************************************************************************************/
/* 				Cimetieres	.npc add 6491	-  Reparation .npc add 29523								*/
/****************************************************************************************/

/* affecté a : Mulgore, CI de la mesa de Nuage rouge (34) */
INSERT IGNORE INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`) VALUES (34 , 221, 0, "Stitch : Mulgore - Camp narache");



# respirer sous l'eau
DELETE FROM `world`.`spell_area` WHERE `spell_area`.`spell` = 75627 AND (`spell_area`.`area` = 485 OR `spell_area`.`area` = 2097 OR `spell_area`.`area` = 5675 OR `spell_area`.`area` = 481 OR `spell_area`.`area` = 5092 OR `spell_area`.`area` = 1557 OR `spell_area`.`area` = 484 OR `spell_area`.`area` = 2237 OR `spell_area`.`area` = 482 OR `spell_area`.`area` = 5011 OR `spell_area`.`area` = 5590 OR `spell_area`.`area` = 5025 OR `spell_area`.`area` = 5591 OR `spell_area`.`area` = 5048 OR `spell_area`.`area` = 5046 OR `spell_area`.`area` = 5091);

REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '485', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '2097', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5675', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '481', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5092', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '1557', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '484', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '2237', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '482', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5011', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5590', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5025', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5591', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5048', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5046', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5091', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '400', '0', '0', '0', '0', '2', '1', '64', '11');
REPLACE INTO `world`.`spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES ('75627', '5028', '0', '0', '0', '0', '2', '1', '64', '11');




/****************************************************************************************/
/* 				Divers & AI																										*/
/****************************************************************************************/


### ------------------------------------------------------------------ Portail 1000 Pointes : Haut Perchoir		 ### 

SET @ENTRY := 15000180;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Haut Perchoir";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -4482.732910;												###
SET @Y := -534.051758;
SET @Z := 4.990792;
SET @O :=  2.4124;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler

### ------------------------------------------------------------------ Portail 1000 Pointes : Haut Perchoir		 ### 

SET @ENTRY := 15000180;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Haut Perchoir";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -4979.780762;												###
SET @Y := -1017.114868;
SET @Z := 0.410315;
SET @O :=  2.4124;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler

### ------------------------------------------------------------------ Portail 1000 Pointes : Poste de Librevent		 ### 

SET @ENTRY := 15000181;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Poste de Librevent";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -5672.818848;												###
SET @Y := -2471.188232;
SET @Z := 1.901086;
SET @O :=  5.6148;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler

### ------------------------------------------------------------------ Portail 1000 Pointes : Peniche de course		 ### 

SET @ENTRY := 15000182;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Peniche de course";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -6185.637207;												###
SET @Y := -3901.581543;
SET @Z := 4.193545;
SET @O :=  0.8750;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0,
### ------------------------------------------------------------------ Portail 1000 Pointes : Haut Perchoir		 ### 

SET @ENTRY := 15000180;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Haut Perchoir";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -4482.732910;												###
SET @Y := -534.051758;
SET @Z := 4.990792;
SET @O :=  2.4124;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler

### ------------------------------------------------------------------ Portail 1000 Pointes : Haut Perchoir		 ### 

SET @ENTRY := 15000180;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Haut Perchoir";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -4979.780762;												###
SET @Y := -1017.114868;
SET @Z := 0.410315;
SET @O :=  2.4124;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler

### ------------------------------------------------------------------ Portail 1000 Pointes : Poste de Librevent		 ### 

SET @ENTRY := 15000181;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Poste de Librevent";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -5672.818848;												###
SET @Y := -2471.188232;
SET @Z := 1.901086;
SET @O :=  5.6148;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler

### ------------------------------------------------------------------ Portail 1000 Pointes : Peniche de course		 ### 

SET @ENTRY := 15000182;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Peniche de course";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -6185.637207;												###
SET @Y := -3901.581543;
SET @Z := 4.193545;
SET @O :=  0.8750;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler

### ------------------------------------------------------------------ Portail 1000 Pointes : Route de Tanaris		 ### 

SET @ENTRY := 15000183;		# 
SET @REGEN := 1 ; 
SET @SPELL := 60178;													###  Pour visuel et non TP ### 
SET @CIBLE := 0;															###  Cible du spell : portail sur portail 0 - portail sur joueur 2 ###   
SET @NAME :="1000 Pointes : Route de Tanaris";						###  
SET @SUBNAME :="";	
SET @DISPLAY := 37510; 													###  Orange 26502 - violet dalaran 34645 - Noir 29074 - des bules 30844 - Rouge 9510 - Grand cercle noir au sol+fumee 15882 - Gros bleu 23719 - Enorme bleu Tournoillant 27393 - Grosse explo bleu/violet au sol 32052 - feu folet 1825- Teleporteur gobelin 37510 ###
SET @FACTION := 35;														###  Alliance 11 - Horde 85 - 35 ### 
SET @PV := 10;																###  PV du portail ###  
SET @TAILLE := 0.75;		
SET @LVL := 85 ; 	
SET @spell1 := 69814 ; 											### Spell de defense du portail 1458.18 3468.67 3468.67 860
SET @MAP := 1;
SET @X := -6794.445313;												###
SET @Y := -3766.276367;
SET @Z := 12.535078;
SET @O :=  2.3633;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, @DISPLAY, 0, 0, 0, @NAME, '', @SUBNAME, '', 0, @LVL, @LVL, 0, 0, @FACTION, 16777220, 1, 0.14286, @TAILLE, 0, 0, 2000, 2000, 1, 1, 1, 131586, 2048, 0, 0, 0, 0, 0, 9, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @spell1, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 'SmartAI', 0, 3, 1, @PV, 1, 1, 1, 1, 1, 1, 0, 0, @REGEN, 2296625, 2, '', 15595);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY ;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ENTRY, @SPELL, @CIBLE, 0);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,2000,2000,62,@MAP,0,0,0,0,0,7,0,0,0,@X,@Y,@Z,@O,@NAME);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ENTRY, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ENTRY);       #  Voler
















REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48096, 0, 0, 0, 1, 233, NULL); # Tape avec masse
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (1322, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40777, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40779, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40475, 0, 0, 0, 1, 233, NULL); # Tape avec masse/pioche (si equipé)


REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49944, 0, 0, 0, 0, 0, '97014'); # Pecher
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49920, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40778, 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40776, 0, 0, 0, 4097, 93, '43905'); # Ivre

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49921 , 0, 0, 0, 0, 0, 79506); # Parler
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (2920, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40777, 0, 0, 0, 4097, 69, NULL); # Travail avec mains
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (41162, 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (76103, 0, 0, 8, 1, 0, NULL); # agenouillé

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50541, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50530, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47851 , 0, 0, 0, 0, 431, NULL); # Effrayé
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47383 , 0, 0, 0, 0, 431, NULL); # Effrayé





REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070316, 45277, 1, 0, 0, 1, 0, 0, 0, 1, -4975.02, -1953.29, 81.3178, 2.93475, 300, 0, 0, 8060, 0, 0, 0, 0, 0, 0), # Sentinelle de Féralas
(21070315, 45278, 1, 0, 0, 1, 0, 0, 0, 1, -4983.04, -1943.87, 82.0929, 3.76138, 300, 0, 0, 6448, 0, 0, 0, 0, 0, 0), #Brave de Librevent
(21070314, 45278, 1, 0, 0, 1, 0, 0, 0, 1, -5143.87, -2144.98, 91.3049, 3.39616, 300, 0, 0, 6448, 0, 0, 0, 0, 0, 0),
(21070313, 45277, 1, 0, 0, 1, 0, 0, 0, 1, -5179.72, -2129.17, 91.7302, 5.53834, 300, 0, 0, 8060, 0, 0, 0, 0, 0, 0),
(21070310, 45278, 1, 0, 0, 1, 0, 0, 0, 1, -5344.78, -2287.47, 82.5624, 4.19335, 300, 0, 0, 6448, 0, 0, 0, 0, 0, 0),
(21070309, 45277, 1, 0, 0, 1, 0, 0, 0, 1, -5362.3, -2293.14, 83.4399, 2.45174, 300, 3, 0, 8060, 0, 2, 0, 0, 0, 0);



UPDATE `creature_template` SET `lootid` = 47583 WHERE (entry = 47620);
UPDATE `creature_template` SET `lootid` = 47583 WHERE (entry = 47619);
UPDATE `creature_template` SET `lootid` = 47583 WHERE (entry = 47602);

UPDATE `creature_template` SET `faction` = 103, `unit_flags` = 0, `HealthModifier` = 3, `ManaModifier` = 2 WHERE (entry = 41131);
-- Mad Magus Tirth SAI
SET @ENTRY := 41131;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,13901,64,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair des Arcanes"),
(@ENTRY,0,1,0,9,0,100,0,0,8,6000,10000,11,11975,0,0,0,0,0,1,0,0,0,0,0,0,0,"Explosion des Arcanes 0-8 m"),
(@ENTRY,0,2,0,2,0,100,0,0,40,33000,35000,11,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,"Furie sanguinaire 0-40% Health"),
(@ENTRY,0,3,0,0,0,100,0,0,0,6000,10000,11,13747,2,0,0,0,0,2,0,0,0,0,0,0,0,"Lenteur"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");
UPDATE `world`.`creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 48137;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48137, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 48137);       #  Voler
-- Monstrous Macaw SAI
SET @ENTRY := 48137;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,1,0,0,0,0,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,"* Sprint"),
(@ENTRY,0,17,0,0,0,100,0,2000,3000,4000,6000,11,163716,0,0,0,0,0,2,0,0,0,0,0,0,0,"- Attaque : Griffure de serres"),
(@ENTRY,0,22,0,0,0,75,0,3000,5500,16500,18500,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,"Blessure infectée (dégâts physiques + 5%/20s)");


UPDATE `world`.`creature` SET `spawndist`=15,`MovementType` = '1' WHERE `spawndist` = 0 AND `creature`.`id` = 48138;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48138, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 48138);       #  Voler
SET @ENTRY := 48138;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,1,0,0,0,0,11,66060,0,0,0,0,0,1,0,0,0,0,0,0,0,"* Sprint"),
(@ENTRY,0,17,0,0,0,100,0,2000,3000,4000,6000,11,163716,0,0,0,0,0,2,0,0,0,0,0,0,0,"- Attaque : Griffure de serres"),
(@ENTRY,0,22,0,0,0,75,0,3000,5500,16500,18500,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,"Blessure infectée (dégâts physiques + 5%/20s)");

# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 47389 ;
UPDATE `creature_template` SET `HealthModifier` = 3, `ArmorModifier` = 2,`lootid` = 47389  WHERE (entry = 47389);
-- Hive Controller SAI
SET @ENTRY := 47389;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,75,99,20000,30000,11,19469,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hive Controller - In Combat - Cast 'Poison Mind'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,5000,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,6000,11,24187,0,0,0,0,0,2,0,0,0,0,0,0,0,"griffe");

UPDATE `world`.`creature` SET `spawndist`=5,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 47390;
UPDATE `creature_template` SET `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 47390);
-- Silithid Defender SAI
SET @ENTRY := 47390;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,10000,10000,11,11443,2,0,0,0,0,2,0,0,0,0,0,0,0,"Faiblesse"),
(@ENTRY,0,1,0,0,0,75,0,0,0,10000,15000,11,6713,0,0,0,0,0,2,0,0,0,0,0,0,0,"Désarmement");

UPDATE `world`.`creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 48177;
UPDATE `creature_template` SET `HealthModifier` = 1, `ArmorModifier` = 1.5, `DamageModifier` = 2, `InhabitType` = 6, `HoverHeight` = 1,`speed_walk` = 1.5, `speed_run` = 1.5 WHERE (entry = 48177);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48177, 0, 0, 33554432, 1, 0, NULL);         #  Voler/nager
-- Silithid Ravager SAI
SET @ENTRY := 48177;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3500,6000,8000,11,8255,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grand enchaînement");


UPDATE `world`.`creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 48178;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48178, 0, 0, 33554432, 1, 0, NULL);         #  Voler/nager
UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 1.5, `DamageModifier` = 3, `InhabitType` = 3, `HoverHeight` = 1,`speed_walk` = 1.5, `speed_run` = 1.5 WHERE (entry = 48178);
-- Silithid Ravager SAI
SET @ENTRY := 48178;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3500,6000,8000,11,8255,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grand enchaînement");


REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48179, 0, 0, 33554432, 1, 0, NULL);         #  Voler/nager
UPDATE `creature_template` SET `HealthModifier` = 1.5, `ArmorModifier` = 1.5, `DamageModifier` = 3, `InhabitType` = 6, `HoverHeight` = 1,`speed_walk` = 1.5, `speed_run` = 1.5  WHERE (entry = 48179);
-- Silithid Wasp SAI
SET @ENTRY := 48179;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3500,5000,7000,11,8255,0,0,0,0,0,2,0,0,0,0,0,0,0,"-- Silithid Ravager SAI");


SET @ENTRY := 40027 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 40028 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 40475 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 40554 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 40556 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 40727 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 48113 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

SET @ENTRY := 4811 ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

UPDATE `creature_template` SET `faction` = 103, `HealthModifier` = 1 WHERE (entry = 45381);
-- Grimtotem Geomancer SAI
SET @ENTRY := 45381;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,75,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Geomancer - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,5000,5000,11,79886,0,0,0,0,0,2,0,0,0,0,0,0,0,"Explosion de lave"),
(@ENTRY,0,2,0,9,0,100,0,30,100,3000,3000,24,79886,0,0,0,0,0,1,0,0,0,0,0,0,0,"evade 30-100m"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement off"),
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

UPDATE `creature_template` SET `faction` = 103, `HealthModifier` = 1, `DamageModifier` = 2,`InhabitType` = 3 WHERE (entry = 45383);
-- Grimtotem Stomper SAI
SET @ENTRY := 45383;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,75,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Stomper - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,4,0,75,1,0,0,0,0,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,2,0,9,0,50,0,0,5,8000,12000,11,81500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Choc martial 0-5m"),
(@ENTRY,0,3,0,0,0,100,0,0,0,4000,6000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,5,0,0,0,25,0,0,0,6000,6000,11,17153,34,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre");

UPDATE `creature_template` SET `faction` = 103, `HealthModifier` = 1 WHERE (entry = 45385);
-- Grimtotem Reaver SAI
SET @ENTRY := 45385;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,75,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Reaver - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,9,0,100,0,0,5,24000,26000,11,78828,1,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames"),
(@ENTRY,0,2,0,0,0,100,0,0,0,4000,4000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse");

# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 45418 ;
UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 45418);
-- Grundig Darkcloud SAI
SET @ENTRY := 45418;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,30,3000,3000,11,85791,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grundig Darkcloud - Between 0-30% Health - Cast 'Rage of the Darkcloud' (No Repeat)"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,7000,11,123649,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de masse   "),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,12000,11,8147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coup de tonnerre");

# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 45410 ;
UPDATE `creature_template` SET `faction` = 103, `type_flags` = 2147483648,`HealthModifier` = 5 WHERE (entry = 45410);
-- Elder Stormhoof SAI
SET @ENTRY := 45410;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,15,0,0,0,100,0,0,0,15000,15000,11,8050,32,0,0,0,0,2,0,0,0,0,0,0,0,"Horion de flammes"),
(@ENTRY,0,20,0,0,0,100,0,2000,2000,5000,8000,11,51505,0,0,0,0,0,2,0,0,0,0,0,0,0,"Explosion de lave"),
(@ENTRY,0,10,0,9,0,75,0,0,45,20000,30000,11,85762,0,0,0,0,0,0,0,0,0,0,0,0,0,"Piétinement");

# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 45387 ;
UPDATE `creature_template` SET `faction` = 103,`HealthModifier` = 4 WHERE (entry = 45387);
-- Isha Gloomaxe SAI
SET @ENTRY := 45387;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,4000,6000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe mortelle"),
(@ENTRY,0,1,0,9,0,100,0,0,5,24000,26000,11,85240,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendeur fracassant"),
(@ENTRY,0,2,0,2,0,100,1,0,30,3000,3000,11,78943,0,0,0,0,0,1,0,0,0,0,0,0,0,"Isha Gloomaxe - Between 0-30% Health - Cast 'Enrage' (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,1,0,30,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Isha Gloomaxe - Between 0-30% Health - Say Line 0 (No Repeat)");

UPDATE `creature_template` SET `HealthModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 41431);
UPDATE `creature_template` SET `lootid` = 45383 WHERE (entry = 41431);
-- Grimtotem Invader SAI
SET @ENTRY := 41431;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,50,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Invader - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,2000,4000,4000,7000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement"),
(@ENTRY,0,2,0,9,0,50,0,0,5,12000,20000,11,81500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Choc martial 0-5m");

# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 41458 ;
UPDATE `creature_template` SET `rank` = 1,`HealthModifier` = 4, `DamageModifier` = 3 WHERE (entry = 41458);
-- Cliffwatcher Longhorn SAI
SET @ENTRY := 41458;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,6268,0,0,0,0,0,1,0,0,0,0,0,0,0,"Assaut fulgurant"),
(@ENTRY,0,1,0,0,0,100,0,0,0,5000,5000,11,32019,32,0,0,0,0,2,0,0,0,0,0,0,0,"Encorner"),
(@ENTRY,0,2,0,0,0,100,0,2000,2000,8000,10000,11,77773,0,0,0,0,0,4,0,0,0,0,0,0,0,"Sommeil");

UPDATE `creature_template` SET `unit_flags` = 32768, `unit_flags2` = 2048, `HealthModifier` = 1.5, `DamageModifier` = 2.5 WHERE (entry = 41439);
UPDATE `creature_template` SET `lootid` = 45383 WHERE (entry = 41439);
-- Freewind Warrior SAI
SET @ENTRY := 41439;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,50,0,0,5,8000,15000,11,81500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Choc martial"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");

UPDATE `creature_template` SET `unit_flags` = 131586, `type_flags` = 4096, `HealthModifier` = 3 WHERE (entry = 41444);
UPDATE `creature_template` SET `unit_flags` = 131586, `type_flags` = 0, `HealthModifier` = 2 WHERE (entry = 41421);
UPDATE `creature_template` SET `HealthModifier` = 3, `DamageModifier` = 4,`unit_flags` = 163842 WHERE (entry = 41448);
UPDATE `creature_template` SET `HealthModifier` = 3, `DamageModifier` = 4,`unit_flags` = 163842 WHERE (entry = 41447);



UPDATE `creature_template` SET `faction` = 103, `HealthModifier` = 1.5 WHERE (entry = 4118);
-- Venomous Cloud Serpent SAI
SET @ENTRY := 4118;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,3583,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison mortel"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `faction` = 103, `HealthModifier` = 1.5 WHERE (entry = 4117);
-- Cloud Serpent SAI
SET @ENTRY := 4117;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,57780,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");



REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48188, 0, 0, 33554432, 1, 0, NULL);         #  Voler/nager
UPDATE `creature_template` SET `unit_flags2` = 2112, `unit_flags` = 67141632, `InhabitType` = 6, `HoverHeight` = 1, `HealthModifier` = 1.5, `ArmorModifier` = 2.5 WHERE (entry = 48188);
-- Siltwash Terrapin SAI
SET @ENTRY := 48188;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,0,0,0,100,0,0,0,6000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,50169,0,0,0,0,0,0,0,0,0,0,0,0,0,"Grand coup de nageoire");

UPDATE `creature_template` SET `faction` = 103,`speed_walk` = 1.5, `speed_run` = 1.5, `unit_flags` = 67141632, `InhabitType` = 2, `HoverHeight` = 0 WHERE (entry = 48192);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (48192, 0, 0, 33554432, 1, 0, NULL);         #  Voler/nager
-- Barbed Gasgill SAI
SET @ENTRY := 48192;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure"),
(@ENTRY,0,5,0,4,0,75,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse 10s"),
(@ENTRY,0,15,0,9,0,50,0,0,5,10000,10000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brise-genou");

UPDATE `creature_template` SET `DamageModifier` = 0.1, `flags_extra` = 192 WHERE (entry = 48166);
-- Sea Cyclone SAI
SET @ENTRY := 48166;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,0,5,10000,15000,11,68938,0,0,0,0,0,2,0,0,0,0,0,0,0,"SAUT - ville en boite");

UPDATE `creature_template` SET `faction` = 103, `unit_flags` = 67141632, `HealthModifier` = 1.5, `DamageModifier` = 3,`InhabitType` = 6, `HoverHeight` = 1,`speed_walk` = 2, `speed_run` = 2 WHERE (entry = 48191);
-- Remora Scrounger SAI
SET @ENTRY := 48191;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,4000,3000,3000,11,69203,32,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure vicieuse");




UPDATE `creature_template` SET `type_flags` = 2147483648,`faction` = 103, `unit_flags` = 0, `HealthModifier` = 4, `ArmorModifier` = 2, `DamageModifier` = 4, `InhabitType` = 3 WHERE (entry = 41236);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (41236, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 41236);       #  Voler
-- Aquarian SAI
SET @ENTRY := 41236;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,6000,10000,11,32011,0,0,0,0,0,2,0,0,0,0,0,0,0,"Trait d'eau");

UPDATE `creature_template` SET `speed_walk` = 0.5, `speed_run` = 0.5, `unit_flags` = 67108864, `HealthModifier` = 1.5, `ArmorModifier` = 3, `DamageModifier` = 3,`npcflag` = 0 WHERE (entry = 48128);
-- Stranded Sparkleshell SAI
SET @ENTRY := 48128;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,5000,11,134537,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de bec ");

UPDATE `world`.`creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 48131;
UPDATE `creature_template` SET `unit_flags` = 67108864,`HealthModifier` = 1.5, `DamageModifier` = 3.5 WHERE (entry = 48131);
-- Needlespine Cobra SAI
SET @ENTRY := 48131;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,7000,10000,11,6917,32,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Venom Spit");

UPDATE `world`.`creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 48130;
UPDATE `creature_template` SET `unit_flags` = 67108864, `HealthModifier` = 1.5, `ArmorModifier` = 2, `DamageModifier` = 4 WHERE (entry = 48130);
-- Scorpid Cliffcrawler SAI
SET @ENTRY := 48130;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3500,4500,18000,20000,11,13884,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison d'affliction");

# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 5935 ;
UPDATE `creature_template` SET `scale` = 1.25, `unit_flags` = 67108928, `HealthModifier` = 4.5, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 5935);
-- Ironeye the Invincible SAI
SET @ENTRY := 5935;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,75,0,0,5,6000,10000,11,3635,0,0,0,0,0,2,0,0,0,0,0,0,0,"Regard de cristal"),
(@ENTRY,0,15,0,0,0,100,0,0,0,3500,3500,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `scale` = 1.25, `unit_flags` = 0, `HealthModifier` = 1.5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 47816);
-- Shackled Earth SAI
SET @ENTRY := 47816;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,75,0,0,10,8000,8000,11,79872,0,0,0,0,0,2,0,0,0,0,0,0,0,"Onde de choc"),
(@ENTRY,0,1,0,9,0,50,0,0,10,10000,10000,11,86725,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terre bouleversée");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 1.25 WHERE (entry = 47804);
-- Twilight Shaper SAI
SET @ENTRY := 47804;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,30,0,500,1000,600000,600000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Shaper - Out of Combat - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,4200,5000,13500,14600,11,80117,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pointe de terre"),
(@ENTRY,0,2,0,9,0,100,0,5,30,5000,8000,11,79886,0,0,0,0,0,2,0,0,0,0,0,0,0,"Explosion de lave"),
(@ENTRY,0,10,0,75,0,100,0,0,15000079,5,4000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0,"Emote si WORLD GENERIQUE 15000079"),
(@ENTRY,0,15,0,9,0,100,0,5,30,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement off 5-30"),
(@ENTRY,0,20,0,9,0,100,0,0,5,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement on 0-5"),
(@ENTRY,0,25,0,9,0,100,0,30,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement on 30-100");

UPDATE `creature_template` SET `faction` = 103, `DamageModifier` = 2.5 WHERE (entry = 14426);
-- Harb Foulmountain SAI
SET @ENTRY := 14426;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,9000,10500,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rosser"),
(@ENTRY,0,1,0,9,0,100,0,0,5,16000,18000,11,45,0,0,0,0,0,1,0,0,0,0,0,0,0,"Choc martial"),
(@ENTRY,0,2,0,2,0,100,1,0,30,2000,2000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-30% Health"),
(@ENTRY,0,3,0,2,0,100,1,0,30,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harb Foulmountain - Between 0-30% Health - Say Line 0 (No Repeat)");

UPDATE `creature_template` SET `HealthModifier` = 2, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 45442);

UPDATE `creature_template` SET `InhabitType` = 3, `HealthModifier` = 1.5, `DamageModifier` = 3,`speed_walk` = 1.5, `speed_run` = 1.5 WHERE (entry = 40449);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (40449, 0, 0, 33554432, 1, 0, NULL);         #  Voler/nager
-- Southsea Treasure Hunter SAI
SET @ENTRY := 40449;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,60,4000,6000,11,79444,0,0,0,0,0,2,0,0,0,0,0,0,0,"Empaler 5-60"),
(@ENTRY,0,10,0,9,0,50,0,5,55,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mouvement off 5-55m"),
(@ENTRY,0,1,0,9,0,100,0,55,100,3000,3000,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"evade 60");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 2, `DamageModifier` = 3 WHERE (entry = 40432);
-- Southsea Parrot Handler SAI
SET @ENTRY := 40432;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,20,7000,8000,11,6533,0,0,0,0,0,2,0,0,0,0,0,0,0,"Filet 0-20 m"),
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,4000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement"),
(@ENTRY,0,2,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Southsea Parrot Handler - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,4,0,25,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (40092, 1, 53108, 2717, 0, 18019);
UPDATE `creature_template` SET `HealthModifier` = 2, `ArmorModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 40092);
-- Southsea Sailor SAI
SET @ENTRY := 40092;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,30,10000,10000,11,74759,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bouteille de grog"),
(@ENTRY,0,1,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Southsea Sailor - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,2,0,100,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,1000,1000,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,4,0,25,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");

UPDATE `creature_template` SET `unit_flags` = 64, `HealthModifier` = 3.5, `DamageModifier` = 3 WHERE (entry = 40959);
-- Den Whomper SAI
SET @ENTRY := 40959;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Den Whomper - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,9,0,25,0,0,5,10000,14000,11,80182,0,0,0,0,0,2,0,0,0,0,0,0,0,"Uppercut 0-5 m"),
(@ENTRY,0,2,0,2,0,100,0,0,60,14000,16000,11,4955,0,0,0,0,0,1,0,0,0,0,0,0,0,"Poing de pierre 0-60% Health"),
(@ENTRY,0,3,0,2,0,100,0,0,30,32000,35000,11,21049,0,0,0,0,0,1,0,0,0,0,0,0,0,"Furie sanguinaire 0-30% ");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 40958);
-- Tony Two-Tusk SAI
SET @ENTRY := 40958;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,5000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse"),
(@ENTRY,0,15,0,0,0,25,0,0,0,5000,5000,46,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"mouvement en combat"),
(@ENTRY,0,20,0,0,0,100,0,0,0,5000,10000,11,83639,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bain de sang");

UPDATE `creature_template` SET `DamageModifier` = 3 WHERE (entry = 41082);
-- Lilly Landlubber SAI
SET @ENTRY := 41082;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,13,0,100,0,8000,10000,0,0,11,3551,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tape-crâne"),
(@ENTRY,0,10,0,13,0,100,0,10000,12000,0,0,11,11978,0,0,0,0,0,2,0,0,0,0,0,0,0,"Coup de pied"),
(@ENTRY,0,15,0,0,0,100,0,0,0,3000,3000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse  ");

UPDATE `creature_template` SET `HealthModifier` = 3 WHERE (entry = 41081);
-- Seadog Fajardo SAI
SET @ENTRY := 41081;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,0,0,15000,17000,11,3551,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tape-crâne"),
(@ENTRY,0,1,0,0,0,100,0,0,0,12000,20000,11,78509,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer de torche"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,0,0,100,0,4000,4000,8000,8000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames");

UPDATE `creature_template` SET `HealthModifier` = 3, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 41076);
-- Evil Dolly SAI
SET @ENTRY := 41076;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,4000,4000,11,33914,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe des ténèbres"),
(@ENTRY,0,10,0,2,0,100,0,1,40,20000,20000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"enrager"),
(@ENTRY,0,20,0,0,0,100,0,0,0,5000,5000,11,772,32,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 2.5, `ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 40062);
-- Galak Mauler SAI
SET @ENTRY := 40062;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,8,22000,25000,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant 0-8 m"),
(@ENTRY,0,1,0,0,0,50,0,3000,3000,8000,12000,11,74720,0,0,0,0,0,2,0,0,0,0,0,0,0,"Marteler"),
(@ENTRY,0,2,0,2,0,100,1,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galak Mauler - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,1,0,15,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,123649,0,0,0,0,0,0,0,0,0,0,0,0,0,"Coup de masse"),
(@ENTRY,0,15,0,4,0,50,0,0,0,0,0,11,59737,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse");


UPDATE `creature_template` SET `speed_walk` = 1.14, `speed_run` = 1.14, `HealthModifier` = 2,`ArmorModifier` = 2.5, `DamageModifier` = 3 WHERE (entry = 40063);
-- Galak Wrangler SAI
SET @ENTRY := 40063;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"RESET : equipement a distance"),
(@ENTRY,0,11,0,2,0,100,0,0,15,2000,2000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"0-15% PV : demande aide"),
(@ENTRY,0,13,0,5,0,100,0,0,0,0,0,10,23,15,5,4,11,22,1,0,0,0,0,0,0,0,"Emote victoire"),
(@ENTRY,0,20,21,9,0,100,0,5,30,3000,3500,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,"5m - 30m : Tir  ( arc 95826 )  ( fusil & arbalete 6660 )"),
(@ENTRY,0,21,22,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme a distance"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement OFF"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Auto Attack"),
(@ENTRY,0,30,31,9,0,100,0,0,5,3000,3500,11,6603,64,0,0,0,0,1,0,0,0,0,0,0,0,"0m - 5m : Attaque auto"),
(@ENTRY,0,31,32,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     S'equipe d'arme au contact"),
(@ENTRY,0,32,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"     Movement ON"),
(@ENTRY,0,35,0,4,0,100,0,0,0,0,0,11,40063,0,0,0,0,0,2,0,0,0,0,0,0,0,"Filet");

UPDATE `creature_template` SET `speed_walk` = 1.14, `unit_flags` = 0, `HealthModifier` = 2, `DamageModifier` = 3,`ArmorModifier` = 2.5 WHERE (entry = 40061);
-- Galak Stormer SAI
SET @ENTRY := 40061;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,3400,4700,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Eclair"),
(@ENTRY,0,20,0,2,0,100,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galak Stormer - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,30,0,0,0,100,0,4000,8000,25000,30000,11,6535,2,0,0,0,0,2,0,0,0,0,0,0,0,"Nuage d'éclairs"),
(@ENTRY,0,40,0,1,0,100,0,0,0,600000,600000,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bouclier de foudre"),
(@ENTRY,0,50,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `speed_run` = 1.5, `HealthModifier` = 2, `ArmorModifier` = 1.5, `DamageModifier` = 2 WHERE (entry = 48132);
-- Needlespine Shimmerback SAI
SET @ENTRY := 48132;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,2000,11000,14000,11,36594,0,0,0,0,0,2,0,0,0,0,0,0,0,"Souffle de foudre"),
(@ENTRY,0,10,0,4,0,50,0,59737,0,0,0,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"vitesse"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `speed_walk` = 1.15, `speed_run` = 1.14, `HealthModifier` = 5.5 WHERE (entry = 5933);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (5933, 1, 5301,5301, 0, 18019);
-- Achellios the Banished SAI
SET @ENTRY := 5933;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,1,0,0,0,0,11,81574,0,0,0,0,0,2,0,0,0,0,0,0,0,"Charge"),
(@ENTRY,0,15,0,9,0,100,0,0,5,5000,5000,11,772,32,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre"),
(@ENTRY,0,20,0,0,0,100,0,0,0,0,0,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,25,0,9,0,100,0,0,10,8000,12000,11,79872,0,0,0,0,0,2,0,0,0,0,0,0,0,"Onde de choc");

-- Galak Packhound SAI
SET @ENTRY := 4250;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,0,5,5000,8000,11,9080,32,0,0,0,0,2,0,0,0,0,0,0,0,"Brise-genou");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 1.5, `DamageModifier` = 3,`InhabitType` = 4 WHERE (entry = 47485);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47485, 0, 0, 33554432, 1, 0, NULL);        #  Voler
-- Highperch Wind Rider SAI
SET @ENTRY := 47485;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,5000,10000,11,81376,32,0,0,0,0,2,0,0,0,0,0,0,0,"Poison d’aile-fière"),
(@ENTRY,0,10,0,0,0,100,0,0,0,5000,8000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");


UPDATE `world`.`creature_equip_template` SET `ItemID3` = '19993' WHERE `creature_equip_template`.`CreatureID` = 47479 AND `creature_equip_template`.`ID` = 1;
UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 1.5 WHERE (entry = 47479);
-- Twilight Trapper SAI
SET @ENTRY := 47479;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,5,30,3000,3000,11,95826,64,0,0,0,0,2,0,0,0,0,0,0,0,"Tir"),
(@ENTRY,0,1,0,0,0,100,0,0,2000,8000,8000,11,80009,33,0,0,0,0,2,0,0,0,0,0,0,0,"Morsure de serpent"),
(@ENTRY,0,2,5,9,0,50,0,0,10,18000,19000,11,22910,0,0,0,0,0,1,0,0,0,0,0,0,0,"Piège d'immolation 0-10 Range"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 2, `DamageModifier` = 3 WHERE (entry = 47487);
-- Twilight Subduer SAI
SET @ENTRY := 47487;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,12000,13000,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement");

UPDATE `creature_template` SET `unit_flags` = 768, `HealthModifier` = 4, `DamageModifier` = 4,`InhabitType` = 4 WHERE (entry = 47486);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47486, 0, 0, 33554432, 1, 0, NULL);        #  Voler
-- Heartrazor SAI
SET @ENTRY := 47486;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,6000,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 2.5, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 47528);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47528, 0, 0, 0, 0, 0, NULL);
-- Aerie Ace SAI
SET @ENTRY := 47528;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,8000,12000,25000,29000,11,69277,1,0,0,0,0,2,0,0,0,0,0,0,0,"Tir accéléré"),
(@ENTRY,0,3,5,9,0,100,0,5,30,3000,3000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"mouvement off 5-30m"),
(@ENTRY,0,4,5,9,0,100,0,5,30,3000,3000,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tir"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,15,0,9,0,100,0,0,5,5000,7000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tempête de lames");

# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 5937 ;
UPDATE `creature_template` SET `scale` = 1.5, `HealthModifier` = 5, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 5937);
-- Vile Sting SAI
SET @ENTRY := 5937;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,5000,10000,11,8257,32,0,0,0,0,2,0,0,0,0,0,0,0,"Vile Sting - In Combat - Cast 'Venom Sting'"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,118140,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pince");

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47510, 0, 2298, 0, 0, 0, NULL);
UPDATE `creature_template` SET `unit_flags` = 0, `type_flags` = 2147485696, `lootid` = 47528, `HealthModifier` = 3, `ArmorModifier` = 1.5, `DamageModifier` = 3 WHERE (entry = 47510);
-- Twilight Skymaster Richtofen SAI
SET @ENTRY := 47510;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,6000,8000,17000,25000,11,79721,1,0,0,0,0,2,0,0,0,0,0,0,0,"Tir explosif"),
(@ENTRY,0,2,0,2,0,100,1,0,30,3000,3000,11,80003,1,0,0,0,0,2,0,0,0,0,0,0,0,"Flèche noire 0-30% Health"),
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tir"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range");

UPDATE `creature_template` SET `unit_flags` = 0, `lootid` = 47585 WHERE (entry = 47619);
-- Elementalist Starion SAI
SET @ENTRY := 47619;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,5000,6000,11,79564,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boule de feu du Crépuscule"),
(@ENTRY,0,1,0,0,0,100,0,5000,7000,12000,14000,11,80117,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pointe de terre"),
(@ENTRY,0,2,0,0,0,100,0,9000,12000,24000,27000,11,79886,0,0,0,0,0,2,0,0,0,0,0,0,0,"Explosion de lave"),
(@ENTRY,0,3,0,0,0,100,0,0,0,5000,5000,11,88771,32,0,0,0,0,2,0,0,0,0,0,0,0,"Immolation du Crépuscule"),
(@ENTRY,0,4,0,9,0,100,0,40,100,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,2000,2000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 2 WHERE (entry = 47585);
-- Twilight Magus SAI
SET @ENTRY := 47585;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,4000,4000,11,79564,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boule de feu du Crépuscule"),
(@ENTRY,0,1,0,9,0,100,0,0,8,13600,14500,11,38033,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nova de givre 0-8m"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,88771,0,0,0,0,0,2,0,0,0,0,0,0,0,"Immolation du Crépuscule"),
(@ENTRY,0,3,0,1,0,30,0,500,1000,600000,600000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Magus - Out of Combat - Say Line 0"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in bolt Range"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana");

UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 2, `ArmorModifier` = 1.5, `DamageModifier` = 2.5 WHERE (entry = 47583);
-- Bulwark Defender SAI
SET @ENTRY := 47583;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,10,13600,14500,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri démoralisant 0-10"),
(@ENTRY,0,10,0,4,0,50,0,0,0,0,0,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0,"charge"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,0,0,50,0,0,0,5000,5000,11,772,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pourfendre");

#UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 47602 ;
UPDATE `creature_template` SET `unit_flags` = 0, `ArmorModifier` = 2, `DamageModifier` = 2 WHERE (entry = 47602);
-- Codemaster Deethuk SAI
SET @ENTRY := 47602;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,67,0,100,0,9000,12000,0,0,11,79862,1,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque sournoise"),
(@ENTRY,0,1,0,9,0,100,0,5,30,5000,6000,11,79866,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lancer mortel 5-30 m"),
(@ENTRY,0,2,0,2,0,100,1,0,30,3000,3000,11,79864,0,0,0,0,0,2,0,0,0,0,0,0,0,"Pas de l’ombre 0-30% Health "),
(@ENTRY,0,3,0,0,0,100,0,0,0,5000,5000,11,46558,0,0,0,0,0,2,0,0,0,0,0,0,0,"Attaque pernicieuse   ");


UPDATE `creature_template` SET `unit_flags` = 131074 WHERE (entry = 44399);

UPDATE `creature_template` SET `npcflag` = 131 WHERE (entry = 40475);

-- Goblin Bar Patron SAI
SET @ENTRY := 40494;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,75541,0,3000,3000,11,118164,0,0,0,0,0,1,0,0,0,0,0,0,0," Baston de bar ! 25517 (a2) : visuel 1"),
(@ENTRY,0,15,0,8,0,100,0,75541,0,3000,3000,11,175415,0,0,0,0,0,1,0,0,0,0,0,0,0," Baston de bar ! 25517 (a2)  : visuel 2");

SET @ENTRY := 40483;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,75541,0,3000,3000,11,118164,0,0,0,0,0,1,0,0,0,0,0,0,0," Baston de bar ! 25518 (h2) : visuel 1"),
(@ENTRY,0,15,0,8,0,100,0,75541,0,3000,3000,11,175415,0,0,0,0,0,1,0,0,0,0,0,0,0," Baston de bar ! 25518 (h2)  : visuel 2");

UPDATE `creature_template` SET `HealthModifier` = 3, `ArmorModifier` = 1.5, `DamageModifier` = 3.5 WHERE (entry = 41199);
-- Trackmaster Zherin SAI
SET @ENTRY := 41199;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,4000,11,57846,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe héroïque"),
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tir"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range");


UPDATE `creature_template` SET `HealthModifier` = 3, `ArmorModifier` = 1.5, `DamageModifier` = 3.5 WHERE (entry = 41196);
SET @ENTRY := 41196;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,5,4000,4000,11,57846,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe héroïque"),
(@ENTRY,0,4,5,9,0,100,0,5,30,2300,3900,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tir"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Ranged Weapon Model"),
(@ENTRY,0,6,7,9,0,100,0,30,80,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range"),
(@ENTRY,0,8,9,9,0,100,0,0,10,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shoot Range"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Melee Weapon Model when not in Shoot Range"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Melee Attack when not in Shoot Range");

UPDATE `creature_template` SET `faction` = 131, `HealthModifier` = 2.5, `ArmorModifier` = 2, `DamageModifier` = 2.5 WHERE (entry = 41334);
-- Whrrrl SAI
SET @ENTRY := 41334;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,9,0,100,0,0,10,10000,14000,11,79872,0,0,0,0,0,2,0,0,0,0,0,0,0,"Onde de choc  "),
(@ENTRY,0,15,0,0,0,100,0,3000,5000,5000,9000,11,421,0,0,0,0,0,2,0,0,0,0,0,0,0,"chaine d'eclair"),
(@ENTRY,0,20,0,11,0,100,0,0,0,0,0,41,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,"auto despawn"),
(@ENTRY,0,25,0,11,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defensif au spawn");

UPDATE `creature_template` SET `HealthModifier` = 2.5 WHERE (entry = 45438);






















# Peniche de cource - Bar
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330690, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330693, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330681, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330680, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330678, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330999, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330708, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330699, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330707, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (331008, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (331000, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330807, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330798, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (331004, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330799, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330808, 0, 0, 1, 1, 0, ''); # Assis par terre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330800, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330702, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330687, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330709, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330695, 0, 0, 0, 0, 0, 101090); # State - Dance
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (331006, 0, 0, 0, 0, 0, 101090); # State - Dance

SET @ENTRY := 40832   ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");
SET @ENTRY := 40530   ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote ");

REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330806 , 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330698 , 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330682 , 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330684 , 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330679 , 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330694 , 0, 0, 0, 4097, 93, '43905'); # Ivre
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330791, 0, 0, 0, 4097, 93, '43905'); # Ivre

REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330700, 0, 0, 3, 257, 0, NULL); # Dort allongé    
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330710, 0, 0, 3, 257, 0, NULL); # Dort allongé    





REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(40475, 0, 159, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 1179, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 1205, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 2515, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 2519, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 2880, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 2901, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 3030, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 3033, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 3466, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 4357, 3, 10800, 0, 1, 0, 0, 0),
(40475, 0, 4361, 1, 10800, 0, 1, 0, 0, 0),
(40475, 0, 4363, 2, 10800, 0, 1, 0, 0, 0),
(40475, 0, 4364, 3, 10800, 0, 1, 0, 0, 0),
(40475, 0, 4371, 2, 10800, 0, 1, 0, 0, 0),
(40475, 0, 4382, 1, 10800, 0, 1, 0, 0, 0),
(40475, 0, 4389, 1, 9000, 0, 1, 0, 0, 0),
(40475, 0, 4399, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 4400, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 4404, 1, 10800, 0, 1, 0, 0, 0),
(40475, 0, 4470, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 4497, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 4498, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 4541, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 4542, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 5956, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 10647, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 10648, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 20970, 1, 9000, 0, 1, 0, 0, 0),
(40475, 0, 25873, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 25875, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 29008, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 29009, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 39354, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 39684, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 40533, 0, 0, 0, 1, 0, 0, 0),
(40475, 0, 90146, 0, 0, 0, 1, 0, 0, 0);

REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(39992, 1, 2463, 0, 0, 0, 1, 0, 0, 19865),
(39992, 2, 2464, 0, 0, 0, 1, 0, 0, 19865),
(39992, 3, 2465, 0, 0, 0, 1, 0, 0, 19865),
(39992, 4, 2467, 0, 0, 0, 1, 0, 0, 19865),
(39992, 5, 2468, 0, 0, 0, 1, 0, 0, 19865),
(39992, 6, 2469, 0, 0, 0, 1, 0, 0, 19865),
(39992, 8, 2470, 0, 0, 0, 1, 0, 0, 19865),
(39992, 9, 2471, 0, 0, 0, 1, 0, 0, 19865),
(39992, 10, 2472, 0, 0, 0, 1, 0, 0, 19865),
(39992, 11, 2473, 0, 0, 0, 1, 0, 0, 19865),
(39992, 12, 2474, 0, 0, 0, 1, 0, 0, 19865),
(39992, 13, 2475, 0, 0, 0, 1, 0, 0, 19865),
(39992, 7, 3890, 0, 0, 0, 1, 0, 0, 19865),
(39992, 14, 3893, 0, 0, 0, 1, 0, 0, 19865),
(39992, 15, 8255, 0, 0, 0, 1, 0, 0, 19865),
(39992, 16, 14658, 0, 0, 0, 1, 0, 0, 19865);

UPDATE `creature_template` SET `faction` = 230, `unit_flags` = 131072, `HealthModifier` = 1 WHERE (entry = 40869);

UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry = 45509;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry =47423;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry =47424;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry =47425;


UPDATE `creature_template` SET `flags_extra` = 128 WHERE entry =47426;

UPDATE `world`.`creature` SET `spawntimesecs` = '15' WHERE `creature`.`id` = 47485;
UPDATE `world`.`creature` SET `spawntimesecs` = '600' WHERE `creature`.`id` = 45381;
UPDATE `world`.`creature` SET `spawntimesecs` = '600' WHERE `creature`.`id` = 45383;
UPDATE `world`.`creature` SET `spawntimesecs` = '600' WHERE `creature`.`id` = 45385;
UPDATE `world`.`creature` SET `spawntimesecs` = '1' WHERE `creature`.`id` = 47621;


UPDATE `creature_template` SET `faction` = 103 WHERE (entry = 36094); # agressif
UPDATE `creature_template` SET `faction` = 188 WHERE (entry = 36113); # non agressif

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (4692, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 4692);       #  Voler
# UPDATE `world`.`creature` SET `position_z` = `position_z`+7 WHERE `creature`.`id` = 4692;

UPDATE `world`.`creature` SET `spawndist`=15,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 40193;
UPDATE `world`.`creature` SET `spawndist`=10,`MovementType` = '1'  WHERE `spawndist` = 0 AND `creature`.`id` = 15476;





# UPDATE `world`.`creature_loot_template` SET `Chance` = `Chance`+2 WHERE `creature_loot_template`.`Entry` = 8301 ;
# UPDATE `world`.`creature_loot_template` SET `Chance` = '100' WHERE `creature_loot_template`.`Entry` = 11560 AND `creature_loot_template`.`Item` = 15849;










/****************************************************************************************/
/* 				QUETES              																								 */
/****************************************************************************************/
/* Combien de marins 25488 (a2) - 25489 (h2) */

-- Rendow SAI A2
SET @ENTRY := 39992;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,19,0,100,0,25488,0,0,0,62,1,0,0,0,0,0,7,0,0,0,-6197.489258,-3906.228516,1.795212,0.6666,"Combien de marins 25488 (a2) TP Peniche");

UPDATE `creature_template` SET `unit_flags2` = 2048,`type_flags` = 4096,`unit_flags` = 131586, `HealthModifier` = 1.25, `DamageModifier` = 3 WHERE (entry = 39963);
-- Motega Firemane SAI
SET @ENTRY := 39963;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,10000,15000,11,74606,0,0,0,0,0,1,0,0,0,0,0,0,0,"Choc martial"),
(@ENTRY,0,1,0,2,0,50,1,0,30,2000,2000,11,81173,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frénésie 0-30% Health"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,15,0,3,0,25,0,0,0,0,0,11,157347,0,0,0,0,0,2,0,0,0,0,0,0,0,"charge + projette loin en arriere "),
(@ENTRY,0,30,0,25,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Etat defensif"),
(@ENTRY,0,40,0,19,0,100,0,25489,0,0,0,62,1,0,0,0,0,0,7,0,0,0,-6197.49,-3906.23,1.79521,0.6666,"Combien de marins 25489 (h2) TP Peniche");

/****************************************************************************************/
/* Le noyé récalcitrant 25524 (a2) - 25526 (h2) */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024406, 202995, 1, 0, 0, 1, 0, 0, -6167.46, -3934.24, -72.4306, 2.60975, 0, 0, 0.964851, 0.262799, 300, 0, 1, 0);

/****************************************************************************************/
/* À boulets rouges 25532 (a2) - 25533 (h2) - PNJ 15000071 : Flamme x3  -  (basé sur .npc add 15000065 - Sceau pour eteindre : item 46094/Spell 64558)*/

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000171, 0, 0, 0, 0, 0, 23767, 11686, 0, 0, 'Flame x3', '', '', '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 3, 0, 0, 2000, 2000, 1, 1, 1, 33685504, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 0.1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 20173);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (15000171, 0, 0, 0, 1, 0, '102045');

--  SAI
SET @ENTRY := 15000171;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,64558,0,3000,3000,33,15000171,0,0,0,0,0,7,0,0,0,0,0,0,0,"Flame x3 pour quete avec des feux a eteindre");

#---A2
UPDATE `quest_template` SET `Flags` = 8 WHERE (ID = 25532);
DELETE FROM `creature_questender` WHERE (quest = 25532);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (40475, 25532);
UPDATE `world`.`quest_template_locale` SET `LogDescription` = 'Utilisez le seau plein d''eau pour éteindre 15 feux.', `QuestDescription` = 'Je ne sais pas si vous avez remarqué, mais on nous tire dessus au canon. En plus, la précision des tirs de ces pirates de mers du Sud ne cesse d’augmenter… Le bâtiment est en feu !$B$BVous avez un seau ? ... Non ! ... et vous faites comment pour vos besoin ?! ... Alors prenez le mien et n''oubliez pas de me le ramener !$B$BEt éteignez-moi ces feux !' WHERE `quest_template_locale`.`ID` = 25532 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `quest_template` SET `StartItem` = 46094 WHERE (ID = 25532);
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 1 WHERE (ID = 25532);
DELETE FROM `quest_objectives` WHERE (QuestID = 25532);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(253941, 25532, 1, 0, 46094, 1, 0, 0, "Seau plein d'eau", 20444),
(253942, 25532, 0, 1, 15000171, 15, 0, 0, 'Fires extinguished', 20444);
REPLACE INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES
(253941, 'frFR', 25532, 0, 'Seau plein d''eau', 20886);

#---H2
UPDATE `quest_template` SET `Flags` = 8 WHERE (ID = 25533);
DELETE FROM `creature_questender` WHERE (quest = 25533);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (40487, 25533);
UPDATE `world`.`quest_template_locale` SET `LogDescription` = 'Utilisez le seau plein d''eau pour éteindre 15 feux.', `QuestDescription` = 'Je ne sais pas si vous avez remarqué, mais on nous tire dessus au canon. En plus, la précision des tirs de ces pirates de mers du Sud ne cesse d’augmenter… Le bâtiment est en feu !$B$BVous avez un seau ? ... Non ! ... et vous faites comment pour vos besoin ?! ... Alors prenez le mien et n''oubliez pas de me le ramener !$B$BEt éteignez-moi ces feux !' WHERE `quest_template_locale`.`ID` = 25533 AND `quest_template_locale`.`locale` = 'frFR';
UPDATE `quest_template` SET `StartItem` = 46094 WHERE (ID = 25533);
UPDATE `quest_template_addon` SET `ProvidedItemCount` = 1 WHERE (ID = 25533);
DELETE FROM `quest_objectives` WHERE (QuestID = 25533);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(265578, 25533, 1, 0, 46094, 1, 0, 0, 'Seau plein d\'eau', 20444),
(265579, 25533, 0, 1, 15000171, 15, 0, 0, 'Fires extinguished', 20444);
REPLACE INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES
(265578, 'frFR', 25533, 0, 'Seau plein d''eau', 20886);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070133, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6155.38, -3834.52, 25.868, 0.944741, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070132, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6197.14, -3847.07, 17.5242, 4.83246, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070131, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6195.59, -3839.48, 2.45486, 3.86446, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070130, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6189.15, -3851.59, 2.4564, 2.53322, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070129, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6149.11, -3819.46, 35.475, 4.78338, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070128, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6146.24, -3829.18, 36.8573, 2.52143, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070127, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6111.2, -3811.42, 25.6815, 4.53794, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070126, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6108.51, -3846.88, 24.6749, 2.12873, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070125, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6067.63, -3892.3, 9.42682, 2.44289, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070124, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6071.29, -3775.23, 5.62798, 4.00975, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070123, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6089.37, -3786.07, 4.18327, 2.19155, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070122, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6087.24, -3785.32, 11.1832, 2.8238, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070121, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6102.82, -3823.01, 6.35859, 2.27598, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070120, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6089.43, -3843.82, 6.17366, 0.4087, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070119, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6085.32, -3898.38, 22.0171, 2.58033, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070118, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6080.94, -3940.56, 15.3373, 5.01309, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070115, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6117.65, -3930.68, 11.4732, 0.510782, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070114, 15000171, 1, 0, 0, 1, 0, 0, 0, 0, -6128.6, -3920.61, 9.94151, 3.86836, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0);

/****************************************************************************************/
/* Le cercle des chaloupes disparues 25561 & 25542 (a2) - 25562 & 25543 (h2) */

# Pirates :  .npc add 40707 - canon .npc add 46707
.npc add 15000172
#---Marin des mers du Sud
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000172, 0, 0, 0, 40707, 0, 31854, 31855, 31861, 374, 'Marin des mers du Sud', '', '', '', 0, 40, 41, 0, 0, 230, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 40092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, -1, 1, 0.5, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 64, '', 20173);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (15000172, 1, 53108, 2717, 0, 18019);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000173, 0, 0, 0, 40707, 0, 31854, 31855, 31861, 374, 'Marin des mers du Sud', '', '', '', 0, 40, 41, 0, 0, 230, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 40092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, -1, 1, 0.5, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 64, '', 20173);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (15000173, 1, 53108, 2717, 0, 18019);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000174, 0, 0, 0, 40707, 0, 31854, 31855, 31861, 374, 'Marin des mers du Sud', '', '', '', 0, 40, 41, 0, 0, 230, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 40092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, -1, 1, 0.5, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 64, '', 20173);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (15000174, 1, 53108, 2717, 0, 18019);
UPDATE `creature_template` SET `InhabitType` = 3 WHERE (entry = 15000172);
UPDATE `creature_template` SET `InhabitType` = 3 WHERE (entry = 15000173);
UPDATE `creature_template` SET `InhabitType` = 3 WHERE (entry = 15000174);
UPDATE `creature_template` SET `DamageModifier` = 2 WHERE (entry = 15000172);
UPDATE `creature_template` SET `DamageModifier` = 2 WHERE (entry = 15000173);
UPDATE `creature_template` SET `DamageModifier` = 2 WHERE (entry = 15000174);
#---Invoqueur de Marin des mers du Sud
REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000175, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Invoqueur de Marin des mers du Sud 1", '', "Q25561 & 25542 (a2) - 25562 (h2)", '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131078, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);
REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000176, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Invoqueur de Marin des mers du Sud 2", '', "Q25561 & 25542 (a2) - 25562 (h2)", '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131078, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);
REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000177, 0, 0, 0, 0, 0, 29352, 0, 0, 0, "Invoqueur de Marin des mers du Sud 3", '', "Q25561 & 25542 (a2) - 25562 (h2)", '', 0, 1, 1, 0, 0, 35, 0, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131078, 2048, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, '', 20173);

#---
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000178, 0, 0, 0, 0, 0, 32032, 32033, 32034, 32035, "Membre d'équipage affolé", '', '', '', 0, 35, 38, 0, 0, 64, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173),
(15000179, 0, 0, 0, 0, 0, 32040, 32041, 32042, 32043, "Membre d'équipage affolé", '', '', '', 0, 35, 38, 0, 0, 2160, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);
SET @ENTRY := 15000178  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "),
(@ENTRY,0,2000,0,10,0,100,0,0,10,2000,2000,11,68326,0,0,0,0,0,1,0,0,0,0,0,0,0,"Si detecte mouvement ennemie : auto peur 8225");
SET @ENTRY := 15000179  ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "),
(@ENTRY,0,2000,0,10,0,100,0,0,10,2000,2000,11,68326,0,0,0,0,0,1,0,0,0,0,0,0,0,"Si detecte mouvement ennemie : auto peur 8225");


#---Incendie phase 170
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070164, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6155.38, -3834.52, 25.868, 0.944741, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070165, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6197.14, -3847.07, 17.5242, 4.83246, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070166, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6195.59, -3839.48, 2.45486, 3.86446, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070167, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6189.15, -3851.59, 2.4564, 2.53322, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070168, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6149.11, -3819.46, 35.475, 4.78338, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070169, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6146.24, -3829.18, 36.8573, 2.52143, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070170, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6111.2, -3811.42, 25.6815, 4.53794, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070171, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6108.51, -3846.88, 24.6749, 2.12873, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070172, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6067.63, -3892.3, 9.42682, 2.44289, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070173, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6071.29, -3775.23, 5.62798, 4.00975, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070174, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6089.37, -3786.07, 4.18327, 2.19155, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070175, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6087.24, -3785.32, 11.1832, 2.8238, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070176, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6102.82, -3823.01, 6.35859, 2.27598, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070177, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6089.43, -3843.82, 6.17366, 0.4087, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070178, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6085.32, -3898.38, 22.0171, 2.58033, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070179, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6080.94, -3940.56, 15.3373, 5.01309, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(21070180, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6117.65, -3930.68, 11.4732, 0.510782, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0),
(21070181, 15000171, 1, 0, 0, 1, 170, 0, 0, 0, -6128.6, -3920.61, 9.94151, 3.86836, 300, 3, 0, 8, 0, 1, 0, 0, 0, 0);

#---donneur de quete & pnj proches Phase 170 
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070182, 40487, 1, 400, 5041, 1, 170, 0, 0, 1, -6151.87, -3829.82, 26.2602, 4.13643, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070183, 40475, 1, 400, 5041, 1, 170, 0, 0, 1, -6126.62, -3799.36, 26.0182, 0.644991, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070184, 40776, 1, 400, 5041, 1, 170, 0, 0, 1, -6125.06, -3798.77, 26.0197, 5.56158, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070185, 40779, 1, 400, 5041, 1, 170, 0, 0, 1, -6152.4, -3814.6, 26.2178, 1.59729, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070193, 40589, 1, 0, 0, 1, 170, 0, 0, 1, -6137.74, -3795.79, 6.18409, 3.75653, 300, 0, 0, 4304, 0, 0, 0, 0, 0, 0),
(21070191, 5411, 1, 0, 0, 1, 170, 0, 0, 1, -6145.43, -3800.77, 15.0626, 1.99331, 300, 0, 0, 3392, 0, 0, 0, 0, 0, 0),
(21070194, 40768, 1, 400, 5041, 1, 170, 0, 0, 0, -6077.06, -3915.81, 21.6756, 0.488692, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21070195, 40769, 1, 400, 5041, 1, 170, 0, 0, 0, -6070.71, -3915.1, 21.7466, 2.25099, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21070196, 6491, 571, 66, 66, 1, 0, 170, 0, 0, 5515.57, -4101.57, 364.358, 0.00299454, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21070197, 40832, 1, 400, 5049, 1, 170, 0, 0, 1, -6160.77, -3797.82, 6.26469, 4.95674, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21070198, 40028, 1, 400, 5041, 1, 170, 0, 0, 1, -6157.86, -3774.05, 33.5905, 0.383972, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21070199, 40027, 1, 400, 5041, 1, 170, 0, 0, 1, -6155.41, -3773.04, 33.5757, 3.52556, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21070200, 40512, 1, 400, 5049, 1, 170, 0, 0, 1, -6150.84, -3826.75, 6.46015, 1.98851, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21070201, 40512, 1, 400, 5049, 1, 170, 0, 0, 1, -6152.63, -3827.57, 6.43852, 2.00123, 240, 0, 0, 1, 0, 0, 0, 0, 0, 0);


#---Phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5041, 25561, 0, 0, 0, 2, 1, 10, 65);	# phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5041, 25561, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5041, 25542, 0, 0, 0, 2, 1, 10, 65);	# phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5041, 25542, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5041, 25562, 0, 0, 0, 2, 1, 10, 65);	# phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5041, 25562, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5041, 25543, 0, 0, 0, 2, 1, 10, 65);	# phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5041, 25543, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5049, 25561, 0, 0, 0, 2, 1, 10, 65);	# phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5049, 25542, 0, 0, 0, 2, 1, 10, 65);	# phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5049, 25562, 0, 0, 0, 2, 1, 10, 65);	# phase 170
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(70889, 5049, 25543, 0, 0, 0, 2, 1, 10, 65);	# phase 170

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5049, 25561, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5049, 25542, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5049, 25562, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(52598, 5049, 25543, 0, 0, 0, 2, 1, 10, 65);	# visuel coucher de soleil

#---Quetes
DELETE FROM `quest_objectives` WHERE (QuestID = 25561);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (265665, 25561, 0, 0, 40707, 50, 0, 0, 'Marins des mers du Sud', 20444);
UPDATE `world`.`quest_template_locale` SET `LogDescription` = 'Tuez 50 Marins des mers du Sud', `QuestDescription` = 'On a peut-être maîtrisé les incendies, mais ces pirates des mers du Sud ne s''en apprêtent pas moins à  aborder la péniche de course, !$B$B$N, il faut que vous repoussiez ces pirates avant qu''il ne soit trop tard, !' WHERE `quest_template_locale`.`ID` = 25561 AND `quest_template_locale`.`locale` = 'frFR';

DELETE FROM `quest_objectives` WHERE (QuestID = 25542);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (254383, 25542, 0, 0, 40707, 50, 0, 0, 'Marins des mers du Sud', 20444);
UPDATE `world`.`quest_template_locale` SET `LogDescription` = 'Tuez 50 Marins des mers du Sud', `QuestDescription` = 'On a peut-être maîtrisé les incendies, mais ces pirates des mers du Sud ne s''en apprêtent pas moins à  aborder la péniche de course, !$B$B$N, il faut que vous repoussiez ces pirates avant qu''il ne soit trop tard, !' WHERE `quest_template_locale`.`ID` = 25542 AND `quest_template_locale`.`locale` = 'frFR';
DELETE FROM `creature_queststarter` WHERE (quest = 25542);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (40475, 25542);

DELETE FROM `quest_objectives` WHERE (QuestID = 25543);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (257440, 25543, 0, 0, 40707, 50, 0, 0, 'Marins des mers du Sud', 20444);
UPDATE `world`.`quest_template_locale` SET `LogDescription` = 'Tuez 50 Marins des mers du Sud', `QuestDescription` = 'On a peut-être maîtrisé les incendies, mais ces pirates des mers du Sud ne s''en apprêtent pas moins à  aborder la péniche de course, !$B$B$N, il faut que vous repoussiez ces pirates avant qu''il ne soit trop tard, !' WHERE `quest_template_locale`.`ID` = 25543 AND `quest_template_locale`.`locale` = 'frFR';
DELETE FROM `creature_queststarter` WHERE (quest = 25543);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (40487, 25543);

DELETE FROM `quest_objectives` WHERE (QuestID = 25562);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES (265897, 25562, 0, 0, 40707, 50, 0, 0, 'Marins des mers du Sud', 20444);
UPDATE `world`.`quest_template_locale` SET `LogDescription` = 'Tuez 50 Marins des mers du Sud', `QuestDescription` = 'On a peut-être maîtrisé les incendies, mais ces pirates des mers du Sud ne s''en apprêtent pas moins à  aborder la péniche de course, !$B$B$N, il faut que vous repoussiez ces pirates avant qu''il ne soit trop tard, !' WHERE `quest_template_locale`.`ID` = 25562 AND `quest_template_locale`.`locale` = 'frFR';

REPLACE INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES
(254383, 'frFR', 25542, 0, 'Marins des mers du Sud', 20886),
(257440, 'frFR', 25543, 0, 'Marins des mers du Sud', 20886),
(265665, 'frFR', 25561, 0, 'Marins des mers du Sud', 20886),
(265897, 'frFR', 25562, 0, 'Marins des mers du Sud', 20886);
UPDATE `quest_template` SET `RewardItem1` = 0, `RewardAmount1` = 0 WHERE (ID = 25542);
UPDATE `quest_template` SET `RewardItem1` = 0, `RewardAmount1` = 0 WHERE (ID = 25543);
UPDATE `quest_template` SET `RewardItem1` = 0, `RewardAmount1` = 0 WHERE (ID = 25561);
UPDATE `quest_template` SET `RewardItem1` = 0, `RewardAmount1` = 0 WHERE (ID = 25562);

#---Dephase apres avoir rendu la quete - pour ne pas etre obligé de changer de zone
#-A2
SET @ENTRY := 40475;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "),
(@ENTRY,0,10,0,20,0,100,0,25561,0,0,0,28,70889,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25561 : retire Phase 170"),
(@ENTRY,0,15,0,20,0,100,0,25561,0,0,0,28,52598,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25561 : retire Phase visuel visuel coucher de soleil"),
(@ENTRY,0,20,0,20,0,100,0,25542,0,0,0,28,70889,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25542 : retire Phase 170"),
(@ENTRY,0,25,0,20,0,100,0,25542,0,0,0,28,52598,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25542 : retire Phase visuel visuel coucher de soleil");
#-H2
SET @ENTRY := 40487;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1000,0,60,0,50,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote "),
(@ENTRY,0,10,0,20,0,100,0,25562,0,0,0,28,70889,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25562 : retire Phase 170"),
(@ENTRY,0,15,0,20,0,100,0,25562,0,0,0,28,52598,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25562 : retire Phase visuel visuel coucher de soleil"),
(@ENTRY,0,20,0,20,0,100,0,25543,0,0,0,28,70889,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25543 : retire Phase 170"),
(@ENTRY,0,25,0,20,0,100,0,25543,0,0,0,28,52598,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le cercle des chaloupes disparues 25543 : retire Phase visuel visuel coucher de soleil");



/****************************************************************************************/
/*  Geler les tuyaux 28047 */
 -- "Freezing the Pipes" Bunny 1 SAI
SET @ENTRY := 47423;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,88452,0,3000,3000,33,47423,0,0,0,0,0,7,0,0,0,0,0,0,0,"Geler les tuyaux 28047 : credit");

-- "Freezing the Pipes" Bunny 1 SAI
SET @ENTRY := 47424;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,88452,0,3000,3000,33,47424,0,0,0,0,0,7,0,0,0,0,0,0,0,"Geler les tuyaux 28047 : credit");

-- "Freezing the Pipes" Bunny 1 SAI
SET @ENTRY := 47425;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,88452,0,3000,3000,33,47425,0,0,0,0,0,7,0,0,0,0,0,0,0,"Geler les tuyaux 28047 : credit");

-- "Freezing the Pipes" Bunny 1 SAI
SET @ENTRY := 47426;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,8,0,100,0,88452,0,3000,3000,33,47426,0,0,0,0,0,7,0,0,0,0,0,0,0,"Geler les tuyaux 28047 : credit");

/****************************************************************************************/
/* Glaciers pilés 28051*/
UPDATE `creature_template` SET `npcflag` = 1 WHERE (entry = 47446);
UPDATE `world`.`creature` SET `spawntimesecs` = '1' WHERE `creature`.`id` = 47446;
-- Dead Employee SAI
SET @ENTRY := 47446;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,64,0,100,1,0,0,0,0,33,47446,0,0,0,0,0,7,0,0,0,0,0,0,0,"Glaciers pilés 28051 : credit"),
(@ENTRY,0,15,0,64,0,100,0,0,0,0,0,11,87926,0,0,0,0,0,7,0,0,0,0,0,0,0,"Glaciers pilés 28051 : visuel"),
(@ENTRY,0,2,0,64,0,100,0,0,0,0,0,72,87926,0,0,0,0,0,7,0,0,0,0,0,0,0,"Glaciers pilés 28051 : fermer gossip"),
(@ENTRY,0,3,0,64,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,7,0,0,0,0,0,0,0,"Glaciers pilés 28051 : despawn");

/****************************************************************************************/
/* Une concurrence musclée 25756 (a2) - 25757 [h2) */
REPLACE INTO `world`.`creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('41199', '55808', '0', '100', '1', '1', '0', '1', '1', NULL);
REPLACE INTO `world`.`creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('41196', '55807', '0', '100', '1', '1', '0', '1', '1', NULL);
UPDATE `creature_template` SET `lootid` = 41199 WHERE (entry = 41199);
UPDATE `creature_template` SET `lootid` = 41196 WHERE (entry = 55807);
/****************************************************************************************/
/* L’appeau élémentaire 25813 (a2) - 25814 (h2) */

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(331400, 23837, 1, 0, 0, 1, 0, 0, 0, 0, -5323.77, -4373.25, 124.621, 2.66967, 240, 3, 0, 15974, 0, 2, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070299, 41334, 1, 0, 0, 1, 0, 0, 0, 0, -5323.66, -4372.68, 124.616, 6.07232, 300, 0, 0, 8060, 0, 0, 0, 0, 0, 0);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `unkInt32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(203248, 10, 750, 'Horn Mouthpiece', '', 'Blowing', '', 0, 36, 1.25, 1690, 0, 0, 10000, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 1, 41278, 0, 0, 0, 0, 0, 0, 0, 9692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 20182);


/****************************************************************************************/
/* Sauvetage en terrain ennemi 25871 */
UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 262148 WHERE (entry = 41463);
REPLACE  INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(41463, 0, 0, 0, 0, 0, 34374, 0, 0, 0, 'Captured Feralas Sentinel', '', '', 'Interact', 0, 42, 42, 0, 0, 2251, 1, 1, 1.1428600549698, 1, 0, 0, 2000, 2000, 1, 1, 1, 131074, 2048, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 1, 2, 1, 0, 0, 1, 0, 0, '', 20173);

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(41463, 0, 0, "Merci mon ami , sans vous ces sauvages auraient surement fait de moi leur prochain repas.", 12, 0, 0, 1, 500, 0, 0, 0, "Sauvetage en terrain ennemi 25871");

-- Captured Feralas Sentinel SAI
SET @ENTRY := 41463;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,11,170010,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel enchainé assis"),
(@ENTRY,0,15,0,64,0,100,0,0,0,0,0,33,41463,0,0,0,0,0,7,0,0,0,0,0,0,0,"Sauvetage en terrain ennemi 25871 : credit"),
(@ENTRY,0,20,0,64,0,100,0,0,0,0,0,28,170010,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sauvetage en terrain ennemi 25871 : retire chaine"),
(@ENTRY,0,25,0,64,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,-9835.79,1401.69,38.0848,3.75531,"Sauvetage en terrain ennemi 25871 : blabla"),
(@ENTRY,0,30,0,64,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sauvetage en terrain ennemi 25871 : despawn"),
(@ENTRY,0,35,0,64,0,100,0,0,0,0,0,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sauvetage en terrain ennemi 25871 : Avance"),
(@ENTRY,0,26,0,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,-9835.79,1401.69,38.0848,3.75531,"Sauvetage en terrain ennemi 25871 : fermer gossip");

/****************************************************************************************/
/* Le brasero antique 25762 */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(21024422, 203223, 1, 0, 0, 1, 0, 0, -4891.53, -2281.36, -70.9628, 0.110074, 0, 0, 0.0550094, 0.998486, 300, 0, 1, 0);
UPDATE `creature_template` SET `flags_extra` = 128 WHERE (entry = 41242);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070306, 41242, 1, 0, 0, 1, 0, 0, 0, 0, -4889.95, -2281.64, -68.2453, 5.3369, 300, 0, 0, 160, 0, 0, 0, 0, 0, 0);

-- The Ancient Brazier Fire Bunny SAI
SET @ENTRY := 41242;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,10,0,100,0,1,5,5000,5000,33,41242,0,0,0,0,0,17,0,10,0,0,0,0,0,"Le brasero antique 25762 : credit"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,12,15000171,2,5000,0,0,0,1,0,0,0,0,0,0,0,"Le brasero antique 25762 : visuel");

-- FULL `quest_objectives` of QuestID 25762
DELETE FROM `quest_objectives` WHERE (QuestID = 25762);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(266908, 25762, 0, 0, 41242, 1, 0, 0, 'The Ancient Brazier reignited', 20444);
/****************************************************************************************/
/* Les retrouvailles 27275 (a2) - 27276 (h2) */
#A2 
UPDATE `creature_template` SET `unit_flags` = 131074, `type_flags` = 8392704, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 45277); # Sentinelle de Féralas
-- Feralas Sentinel SAI
SET @ENTRY := 45277;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,11,5916,0,0,0,0,0,1,0,0,0,0,0,0,0,"Camouflage Traqueur de l'ombre");

#H2 
UPDATE `creature_template` SET `unit_flags` = 131074, `type_flags` = 8392704, `ArmorModifier` = 2, `DamageModifier` = 3 WHERE (entry = 45278); # Brave de Librevent
SET @ENTRY := 45278;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,25,0,100,0,0,0,0,0,11,5916,0,0,0,0,0,1,0,0,0,0,0,0,0,"Camouflage Traqueur de l'ombre");

/****************************************************************************************/
/* Invoquer le serpent 27329 (a2) - 27330 (h2) */
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(45447, 0, 0, 0, 0, 0, 34507, 0, 0, 0, 'Arikara', '', 'Vengeance', '', 0, 43, 43, 0, 0, 103, 0, 1, 1.1428600549698, 1, 1, 0, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 1, 0, 0, 45383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3, 1, 10, 1, 1, 5, 2, 0, 121, 1, 0, 0, '', 20173);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070329, 45447, 1, 0, 0, 1, 0, 0, 0, 0, -5005.25, -2109.04, 85.3194, 1.20883, 300, 0, 0, 26560, 4296, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `modelid1` = 34507, `faction` = 103, `DamageModifier` = 3 WHERE (entry = 45447);
-- Arikara SAI
SET @ENTRY := 45447;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4000,4000,11,421,0,0,0,0,0,2,0,0,0,0,0,0,0,"chaine d'eclair"),
(@ENTRY,0,2,0,11,0,100,1,0,0,0,0,11,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel"),
(@ENTRY,0,4,0,9,0,100,0,40,100,3000,3000,24,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"evade 40m"),
(@ENTRY,0,8,0,3,0,100,0,0,15,3000,3000,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,15,0,6,0,100,0,0,0,0,0,12,45442,2,60000,0,1,0,8,0,0,0,-4993.229004,-2093.665039,83.560532,3.7956,"Invoc Lakota Chant-du-Vent");



/****************************************************************************************/
/*  Libérer les wyverneaux 28086 & Mort aux trappeurs ! 28087 - Quetes plus exclusive */
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 28087);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 28086);


/****************************************************************************************/
/* Libérer les wyverneaux 28086 */
UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 163842 WHERE (entry = 47481);
-- Highperch Prideling SAI
SET @ENTRY := 47481;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,64,0,100,0,0,0,0,0,33,47481,0,0,0,0,0,7,0,0,0,0,0,0,0,"Libérer les wyverneaux 28086 : credit"),
(@ENTRY,0,15,0,64,0,100,0,0,0,0,0,11,49079,0,0,0,0,0,1,0,0,0,0,0,0,0,"Libérer les wyverneaux 28086 : visuel"),
(@ENTRY,0,20,0,64,0,100,0,0,0,0,0,72,100,0,0,0,0,0,7,0,0,0,0,0,0,0,"Libérer les wyverneaux 28086 : ferme gossif"),
(@ENTRY,0,25,0,64,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Libérer les wyverneaux 28086 : despawn");

/****************************************************************************************/
/* Libérer Tranchecœur 28088 */
UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 131074 WHERE (entry = 47486);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47486, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 47486);       #  Voler

-- Heartrazor SAI
SET @ENTRY := 47486;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,64,0,100,0,0,0,4000,6000,33,47486,0,0,0,0,0,7,0,0,0,0,0,0,0,"Libérer Tranchecœur 28088 : credit"),
(@ENTRY,0,15,0,64,0,100,0,0,0,4000,6000,46,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Libérer Tranchecœur 28088 : avance"),
(@ENTRY,0,20,0,64,0,100,0,0,0,4000,6000,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Libérer Tranchecœur 28088 : Despawn"),
(@ENTRY,0,25,0,11,0,100,0,0,0,4000,6000,11,41535,0,0,0,0,0,1,0,0,0,0,0,0,0,"visuel chaine bleu"),
(@ENTRY,0,30,0,64,0,100,0,0,0,4000,6000,28,41535,0,0,0,0,0,1,0,0,0,0,0,0,0,"Libérer Tranchecœur 28088 : retire visuel chaine bleu"),
(@ENTRY,0,35,0,64,0,100,0,0,0,4000,6000,72,51256,0,0,0,0,0,7,0,0,0,0,0,0,0,"Libérer Tranchecœur 28088 : fermer gossip");

/****************************************************************************************/
/* Le maître du ciel du Crépuscule 28098 */

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(11043791, 1, -4963.08, -973.519, 4.19814, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 2, -4984.75, -956.339, 12.153, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 3, -5022.72, -919.88, 37.8668, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 4, -5048.81, -919.668, 64.4801, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 5, -5067.84, -948.635, 86.6271, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 6, -5098.83, -1007.79, 118.102, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 7, -5140.44, -1061.05, 111.36, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 8, -5188.47, -1121.59, 108.127, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 9, -5227.09, -1171.26, 102.863, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 10, -5254.49, -1208.84, 98.3453, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 11, -5251.99, -1239.83, 96.2577, "Tranchecœur : transport 1000 Pointes A&B"),
(11043791, 12, -5238.01, -1253.27, 93.8478, "Tranchecœur : transport 1000 Pointes A&B"),
# (11043791, 13, -5224.18, -1241.29, 89.4641, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 1, -5234.91, -1246.33, 90.7466, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 2, -5247.91, -1226.54, 93.9643, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 3, -5218.8, -1206.08, 86.1226, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 4, -5196.56, -1181.1, 97.3741, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 5, -5146.79, -1109.41, 100.206, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 6, -5114.42, -1053.39, 91.4343, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 7, -5067.14, -961.577, 77.5111, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 8, -5033.65, -922.886, 60.9795, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 9, -4990.64, -930.748, 45.5854, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 10, -4970.4, -955.859, 25.2762, "Tranchecœur : transport 1000 Pointes A&B"),
(11043792, 11, -4959.95, -975.421, 5.8122, "Tranchecœur : transport 1000 Pointes A&B");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000184, 0, 0, 0, 0, 0, 35655, 0, 0, 0, 'Heartrazor', '', '', 'vehichleCursor', 0, 45, 45, 0, 0, 190, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 33536, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3.5, 1, 1, 1, 1, 2, 2, 0, 0, 1, 0, 0, '', 20173);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(15000185, 0, 0, 0, 0, 0, 35655, 0, 0, 0, 'Heartrazor', '', '', 'vehichleCursor', 0, 45, 45, 0, 0, 190, 0, 1, 1.14286, 1, 1, 0, 2000, 2000, 1, 1, 1, 33536, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3.5, 1, 1, 1, 1, 2, 2, 0, 0, 1, 0, 0, '', 20173);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070353, 15000185, 1, 0, 0, 1, 0, 0, 0, 0, -5232.24, -1256.86, 92.2598, 2.86677, 1, 0, 0, 3586, 1534, 0, 0, 0, 0, 0),
(21070352, 15000184, 1, 0, 0, 1, 0, 0, 0, 0, -4959.65, -981.899, 7.56879, 2.34613, 1, 0, 0, 3586, 1534, 0, 0, 0, 0, 0);

/*---------------------------------------------------------- Tranchecœur 1 - .wp add 11043791 (descend 12/13point) */
#---
SET @ID := 15000184 ;
SET @Name := "Tranchecœur";
SET @IconName  := "vehichleCursor";	/* Directions , Gunner , vehichleCursor , Driver , Attack , Buy , Speak , Pickup , Interact , Trainer , Taxi , Repair , LootAll , Quest , PVP  */
SET @modelid1 := 35655 ;
SET @subname :="" ;
SET @level := 45;						
SET @speed := 2.5;
SET @faction := 35;					/* neutre(35) */
SET @movementId := 0 ;		/*default 224 - 0= pas dinterface - 212 armoire - 292 = avance/recule  en ligne droite - player invisible 292 - a cheval 156 - 227 - en dessous 527 - 164 assis ?! */
SET @AIName := "SmartAI";
SET @InhabitType := 4;				/* 1 terre - 2 mer - 4 air */
SET @HoverHeight :=1 ;			/* 1 voler tempoarirement */
SET @taille := 1 ;
SET @classe := 2;						/* WARRIOR(1),PALADIN(2),ROGUE(4),MAGE(8) */
SET @unit_flags := 16908290;			/* 16384 - 16941568 */
SET @unit_flags2 :=2048;			/* 2048 - mouvement forcé = 2112 */
SET @npcflag := 50331648;		/* 50331648 - 16941568 - 16777216 */
SET @type_flags := 0;		/* 393256 */
SET @type_flags2 := 0;				
SET @dynamicflags :=0;			/* 0 */
SET @type := 1	;						/* Bete(1),Mecanique(9),Totem(11),Humanoid(7),Dragon(2) ,Not specified(10),elementaire(4)*/
SET @spell1 := 0;
SET @spell2 := 0 ;				/* Belier 62376 - Roquete 43769 */
SET @spell3 := 0 ; 
SET @spell4 := 0 ;
SET @spell5 := 0 ;
SET @spell6 := 0 ;
SET @`flagsextra` = 0 ;

SET @Vehicleid := 156 ; 			/* default 224 - 972 canon - 117 - 164 inertie char - 0 224 - player invisible 292 - a cheval 156 - voler ?! 508 - mamouth 312/72 - cheval 62 - ours53 - griffon44 */
SET @RegenHealth := 1;
SET @HealthModifier :=1;
SET @ManaModifier :=1;
SET @ArmorModifier :=1;
SET @DamageModifier :=1;
SET @mechanic_immune_mask := 344407931;	/* 344276858 - 8456762 */

UPDATE `world`.`creature_template` SET `modelid1`=@modelid1,`modelid2`=0,`modelid3`=0,`modelid4`=0,`flags_extra` = @`flagsextra`  WHERE `creature_template`.`entry` = @ID ;
UPDATE `world`.`creature_template` SET `unit_flags2`=@unit_flags2,`exp`=0,`mechanic_immune_mask`=@mechanic_immune_mask, `IconName`=@IconName,`name` = @Name ,`subname`=@subname,`minlevel`=@level,`maxlevel`=@level,`speed_run`=@speed,`speed_walk`=@speed,`scale`=@taille,`unit_class`=@classe,`unit_flags`=@unit_flags,`npcflag`=@npcflag,`type_flags`=@type_flags,`type_flags2`=@type_flags2,`dynamicflags`=@dynamicflags,`type`=@type,`spell1`=@spell1 ,`spell2`=@spell2,`spell3`=@spell3,`spell4`=@spell4,`spell5`=@spell5,`spell6`=@spell6,`HoverHeight`=@HoverHeight,`InhabitType`=@InhabitType,`AIName`=@AIName,`movementId`=@movementId,`faction`=@faction,`Vehicleid`=@Vehicleid,`RegenHealth`=@RegenHealth,`HealthModifier`=@HealthModifier,`ManaModifier`=@ManaModifier,`ArmorModifier`=@ArmorModifier,`DamageModifier`=@DamageModifier WHERE `creature_template`.`entry` = @ID ;

DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ID;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ID, 65030, 1, 1); # 43671 - 65030 ( TERRESTRE ) ****** 46598
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ID, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ID);       #  Voler

-- Tranchecœur SAI
SET @ENTRY := 15000184;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,27,0,100,0,2000,2000,0,6087,33,47503,0,0,0,0,0,23,0,0,0,0,0,0,0,"Le maître du ciel du Crépuscule 28098 : credit"),
(@ENTRY,0,15,0,27,0,100,0,0,0,0,0,53,1,11043791,0,0,0,0,1,0,0,0,0,0,0,0,"Le maître du ciel du Crépuscule 28098 : WP start"),
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,31,0,40,0,100,0,12,11043791,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn a l arrivée");



/*---------------------------------------------------------- Tranchecœur 2 - .wp add 11043792 (descend 12point) */
#---
SET @ID := 15000185 ;
SET @Name := "Tranchecœur";
SET @IconName  := "vehichleCursor";	/* Directions , Gunner , vehichleCursor , Driver , Attack , Buy , Speak , Pickup , Interact , Trainer , Taxi , Repair , LootAll , Quest , PVP  */
SET @modelid1 := 35655 ;
SET @subname :="" ;
SET @level := 45;						
SET @speed := 2.5;
SET @faction := 35;					/* neutre(35) */
SET @movementId := 0 ;		/*default 224 - 0= pas dinterface - 212 armoire - 292 = avance/recule  en ligne droite - player invisible 292 - a cheval 156 - 227 - en dessous 527 - 164 assis ?! */
SET @AIName := "SmartAI";
SET @InhabitType := 4;				/* 1 terre - 2 mer - 4 air */
SET @HoverHeight :=1 ;			/* 1 voler tempoarirement */
SET @taille := 1 ;
SET @classe := 2;						/* WARRIOR(1),PALADIN(2),ROGUE(4),MAGE(8) */
SET @unit_flags := 16908290;			/* 16384 - 16941568 */
SET @unit_flags2 :=2048;			/* 2048 - mouvement forcé = 2112 */
SET @npcflag := 50331648;		/* 50331648 - 16941568 - 16777216 */
SET @type_flags := 0;		/* 393256 */
SET @type_flags2 := 0;				
SET @dynamicflags :=0;			/* 0 */
SET @type := 1	;						/* Bete(1),Mecanique(9),Totem(11),Humanoid(7),Dragon(2) ,Not specified(10),elementaire(4)*/
SET @spell1 := 0;
SET @spell2 := 0 ;				/* Belier 62376 - Roquete 43769 */
SET @spell3 := 0 ; 
SET @spell4 := 0 ;
SET @spell5 := 0 ;
SET @spell6 := 0 ;
SET @`flagsextra` = 0 ;

SET @Vehicleid := 156 ; 			/* default 224 - 972 canon - 117 - 164 inertie char - 0 224 - player invisible 292 - a cheval 156 - voler ?! 508 - mamouth 312/72 - cheval 62 - ours53 - griffon44 */
SET @RegenHealth := 1;
SET @HealthModifier :=1;
SET @ManaModifier :=1;
SET @ArmorModifier :=1;
SET @DamageModifier :=1;
SET @mechanic_immune_mask := 344407931;	/* 344276858 - 8456762 */

UPDATE `world`.`creature_template` SET `modelid1`=@modelid1,`modelid2`=0,`modelid3`=0,`modelid4`=0,`flags_extra` = @`flagsextra`  WHERE `creature_template`.`entry` = @ID ;
UPDATE `world`.`creature_template` SET `unit_flags2`=@unit_flags2,`exp`=0,`mechanic_immune_mask`=@mechanic_immune_mask, `IconName`=@IconName,`name` = @Name ,`subname`=@subname,`minlevel`=@level,`maxlevel`=@level,`speed_run`=@speed,`speed_walk`=@speed,`scale`=@taille,`unit_class`=@classe,`unit_flags`=@unit_flags,`npcflag`=@npcflag,`type_flags`=@type_flags,`type_flags2`=@type_flags2,`dynamicflags`=@dynamicflags,`type`=@type,`spell1`=@spell1 ,`spell2`=@spell2,`spell3`=@spell3,`spell4`=@spell4,`spell5`=@spell5,`spell6`=@spell6,`HoverHeight`=@HoverHeight,`InhabitType`=@InhabitType,`AIName`=@AIName,`movementId`=@movementId,`faction`=@faction,`Vehicleid`=@Vehicleid,`RegenHealth`=@RegenHealth,`HealthModifier`=@HealthModifier,`ManaModifier`=@ManaModifier,`ArmorModifier`=@ArmorModifier,`DamageModifier`=@DamageModifier WHERE `creature_template`.`entry` = @ID ;

DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = @ID;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (@ID, 65030, 1, 1); # 43671 - 65030 ( TERRESTRE ) ****** 46598
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (@ID, 0, 0, 33554432, 1, 0, NULL);        #  Voler
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = @ID);       #  Voler

-- Tranchecœur SAI
SET @ENTRY := 15000185;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,15,0,27,0,100,0,0,0,0,0,53,1,11043792,0,0,0,0,1,0,0,0,0,0,0,0,"Le maître du ciel du Crépuscule 28098 : WP start"),
(@ENTRY,0,20,0,28,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn si plus de passager"),
(@ENTRY,0,31,0,40,0,100,0,11,11043792,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn a l arrivée");

/****************************************************************************************/
/* [Quelque chose à se mettre 28125]  [Les évadés 28127]  [Le code du maître-code 28139] Derrière vous ! 28136 - Ne sont plus exclusives */
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 28125);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 28127);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 28139);
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 0 WHERE (ID = 28136);

/****************************************************************************************/
/* Les évadés 28127 */

UPDATE `gameobject_template` SET `Data2` = 30000 WHERE (entry = 206743);


-- Bulwark Prisoner SAI
SET @ENTRY := 47621;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,-1,0,64,0,100,1,0,0,0,0,33,47630,0,0,0,0,0,7,0,0,0,0,0,0,0,"Les évadés 28127 : credit"),
(@ENTRY,0,1,0,64,0,100,1,0,0,0,0,33,47630,0,0,0,0,0,7,0,0,0,0,0,0,0,"Les évadés 28127 : fermer gossip"),
(@ENTRY,0,2,0,64,0,100,1,0,0,0,0,46,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Les évadés 28127 : avance"),
(@ENTRY,0,3,0,64,0,100,1,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Les évadés 28127 : despawn");

/****************************************************************************************/
/* La Vieille mégère 28140 - auto complete parce que wodoo*/

-- DIFF `quest_objectives` of QuestID 28140
DELETE FROM `quest_objectives` WHERE (QuestID = 28140) AND (ID IN (251842));
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `UnkFloat`, `Description`, `VerifiedBuild`) VALUES
(251842, 28140, 0, 0, 206467, 0, 0, 0, 'Controller disabled', 20444);

/****************************************************************************************/
/* Vers la Flétrissure 28142 & 28143 */

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(21070361, 47745, 1, 0, 0, 1, 0, 0, 0, 1, -5845.37, -2611.31, 90.4074, 0.4062, 300, 0, 0, 259987200, 0, 0, 0, 0, 0, 0);

/****************************************************************************************/
/*

/****************************************************************************************/
/*

/****************************************************************************************/
/*

/****************************************************************************************/
/*

/****************************************************************************************/
/*


