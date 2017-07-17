#------ Divers
UPDATE `creature_template` SET `faction` = 11, `speed_walk` = 0.001, `speed_run` = 0.001, `unit_flags` = 131076, `unit_flags2` = 32768 WHERE (entry = 67898);
-- Alliance Banner SAI
SET @ENTRY := 67898;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,-1,0,11,0,100,0,0,0,0,0,41,600000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Auto despawn");
UPDATE `creature_template` SET `faction` = 85, `speed_walk` = 0.001, `speed_run` = 0.001, `unit_flags` = 131076, `unit_flags2` = 32768 WHERE (entry = 67894);
-- Alliance Banner SAI
SET @ENTRY := 67894;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,-1,0,11,0,100,0,0,0,0,0,41,600000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Auto despawn");

DELETE FROM `world`.`gossip_menu_option` WHERE `gossip_menu_option`.`menu_id` = 344 AND `gossip_menu_option`.`id` = 3;
DELETE FROM `world`.`spell_learn_spell` WHERE `spell_learn_spell`.`entry` = 300032 AND `spell_learn_spell`.`SpellID` = 0;
DELETE FROM `world`.`spell_learn_spell` WHERE `spell_learn_spell`.`entry` = 0 AND `spell_learn_spell`.`SpellID` = 0;

#--- Paladin 
DELETE FROM `world`.`spell_learn_spell` WHERE `spell_learn_spell`.`entry` = 85256 ;
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('85256', '84963', '1'); #  
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('85256', '300023', '1'); #  
DELETE FROM `world`.`spell_learn_spell` WHERE `spell_learn_spell`.`entry` = 20473 ; 
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('20473', '84963', '1'); 
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('20473', '300033', '1'); 

#--- Demo
DELETE FROM `world`.`spell_learn_spell` WHERE `spell_learn_spell`.`entry` = 300032 AND `spell_learn_spell`.`SpellID` = -300031;
DELETE FROM `world`.`spell_learn_spell` WHERE  `spell_learn_spell`.`SpellID` = 300034;
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('17877', '300034', '1'); # avec [Brûlure de l'ombre] 17877 lvl72
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('48020', '300034', '1'); # avec [Cercle démoniaque : Téléportation] 48020 lvl76
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('166928', '300034', '1'); # avec [Pacte de sang] [Pacte de sang] 166928 lvl80
DELETE FROM `world`.`spell_learn_spell` WHERE  `spell_learn_spell`.`SpellID` = 300035;
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('111771', '300035', '1'); # avec Porte des démons 111771 lvl87
INSERT  INTO `world`.`spell_learn_spell` (`entry`, `SpellID`, `Active`) VALUES ('165363', '300035', '1'); # avec [Dévastation] 165363 lvl90


 
#------ Log
UPDATE `creature_template` SET `exp` = '0' WHERE `creature_template`.`exp` <0;
UPDATE `creature` SET `creature`.`MovementType` = '0'  WHERE `MovementType` =1 AND `spawndist` = 0;
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 47162);
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 47296);
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 48804);
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 48803);
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 47626);
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 47739);
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 48913);
UPDATE `creature_template` SET `npcflag` = 0 WHERE (entry = 43778);
DELETE FROM `npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 48804 AND `npc_spellclick_spells`.`spell_id` = 46598;
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 48266 AND `npc_spellclick_spells`.`spell_id` = 58961;
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 48266 AND `npc_spellclick_spells`.`spell_id` = 90102;
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 47403 AND `npc_spellclick_spells`.`spell_id` = 58961;
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 47403 AND `npc_spellclick_spells`.`spell_id` = 90102;
DELETE FROM `world`.`npc_spellclick_spells` WHERE `npc_spellclick_spells`.`npc_entry` = 48803 AND `npc_spellclick_spells`.`spell_id` = 46598;
UPDATE `creature_template` SET `minlevel` = 110, `maxlevel` = 110 WHERE (entry = 13358);
UPDATE `creature_template` SET `maxlevel` = 10 WHERE (entry = 25499);
UPDATE `creature_template` SET `maxlevel` = 1 WHERE (entry = 72371);
DELETE FROM `world`.`creature_equip_template` WHERE `creature_equip_template`.`CreatureID` = 86372 AND `creature_equip_template`.`ID` = 0;
-- Astranaar Thrower SAI
SET @ENTRY := 34132;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,28,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Despawn"),
(@ENTRY,0,11,0,5,0,100,0,2000,2000,0,34163,33,34176,0,0,0,0,0,23,0,0,0,0,0,0,0,"La riposte 13853 : credit");
-- Magram Wrangler SAI
SET @ENTRY := 4640;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Equipement"),
(@ENTRY,0,15,0,0,0,100,0,0,0,4000,5000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique"),
(@ENTRY,0,20,0,2,0,100,1,0,15,3000,3000,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magram Wrangler - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,25,0,2,0,100,1,0,15,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP");
-- Mage Hunter SAI
SET @ENTRY := 4681;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,5,25000,26000,11,3429,32,0,0,0,0,2,0,0,0,0,0,0,0,"Esprit pestiféré Within 0-5 m"),
(@ENTRY,0,10,0,0,0,100,0,0,0,3500,3500,11,113687,0,0,0,0,0,2,0,0,0,0,0,0,0,"morsure");
-- Bulwark Prisoner SAI
SET @ENTRY := 47621;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,1,0,0,0,0,33,47630,0,0,0,0,0,7,0,0,0,0,0,0,0,"Les évadés 28127 : credit"),
(@ENTRY,0,1,0,64,0,100,1,0,0,0,0,33,47630,0,0,0,0,0,7,0,0,0,0,0,0,0,"Les évadés 28127 : fermer gossip"),
(@ENTRY,0,2,0,64,0,100,1,0,0,0,0,46,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Les évadés 28127 : avance"),
(@ENTRY,0,3,0,64,0,100,1,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Les évadés 28127 : despawn");
-- Carlin Redpath SAI
SET @ENTRY := 11063;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,62,0,100,0,3864,0,0,0,56,13202,1,0,0,0,0,7,0,0,0,0,0,0,0,"Les héros de Comté-de-Darrow 27388 : Annales complètes de Comté-de-Darrow"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Les héros de Comté-de-Darrow 27388 : fermer gossip");
-- Doomguard Commander SAI
SET @ENTRY := 12396;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,18000,24000,11,16005,0,0,0,0,0,5,0,0,0,0,0,0,0,"Doomguard Commander - In Combat - Cast 'Rain of Fire'"),
(@ENTRY,0,1,0,0,0,100,0,12000,15000,20000,25000,11,16727,1,0,0,0,0,1,0,0,0,0,0,0,0,"Doomguard Commander - In Combat - Cast 'War Stomp'"),
(@ENTRY,0,2,0,0,0,100,0,2000,4000,25000,32000,11,20812,1,0,0,0,0,2,0,0,0,0,0,0,0,"Doomguard Commander - In Combat - Cast 'Cripple'"),
(@ENTRY,0,3,0,0,0,100,0,7000,14000,17000,22000,11,15090,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doomguard Commander - In Combat - Cast 'Dispel Magic'"),
(@ENTRY,0,4,10,8,0,100,0,23019,0,3500,3500,56,18605,1,0,0,0,0,18,20,0,0,0,0,0,0,"Doomguard Commander - On Spellhit 'Crystal Prison Dummy DND' - Add Item 'Imprisoned Doomguard' 1 Time"),
(@ENTRY,0,10,15,61,0,100,0,0,0,0,0,11,23020,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doomguard Commander - On Spellhit 'Crystal Prison Dummy DND' - Cast 'Crystal Imprisonment'"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doomguard Commander - On Spellhit 'Crystal Prison Dummy DND' - Despawn In 2000 ms");
-- Greer Orehammer SAI
SET @ENTRY := 23859;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Greer Orehammer - On Aggro - Run Script"),
(@ENTRY,0,11,12,62,0,100,0,9546,2,0,0,56,33634,10,0,0,0,0,7,0,0,0,0,0,0,0,"Greer Orehammer - On Gossip Option 1 Selected - Add Item 'Orehammer's Precision Bombs' 10 Times"),
(@ENTRY,0,12,13,61,0,100,0,0,0,0,0,52,745,0,0,0,0,0,7,0,0,0,0,0,0,0,"Greer Orehammer - On Gossip Option 1 Selected - Cast 'High Commander Halford Wyrmbane: Westguard Keep to Wintergarde Keep Taxi'"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Greer Orehammer - On Gossip Option 1 Selected - Close Gossip"),
(@ENTRY,0,4,5,62,0,100,0,9546,1,0,0,11,48862,0,0,0,0,0,7,0,0,0,0,0,0,0,"Greer Orehammer - On gossip select - Invoker spellcast"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Greer Orehammer - On gossip select - Close gossip");
-- Jack Adams SAI
SET @ENTRY := 24788;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,5,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - Out of Combat - Play Emote 10"),
(@ENTRY,0,1,2,38,0,100,0,1,1,3500,3500,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Data Set 1 1 - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Data Set 1 1 - Set Faction 35"),
(@ENTRY,0,13,14,62,0,100,0,9025,0,0,0,56,34116,1,0,0,0,0,7,0,0,0,0,0,0,0,"Jack Adams - On Gossip Option 0 Selected - Add Item 'Jack Adams' Debt' 1 Time"),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jack Adams - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,15,16,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Gossip Option 0 Selected - Set Npc Flag "),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,24639,0,0,0,0,0,0,"Jack Adams - On Gossip Option 0 Selected - Set Data 3 3"),
(@ENTRY,0,7,0,38,0,100,0,2,2,3500,3500,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Data Set 2 2 - Run Script"),
(@ENTRY,0,8,9,25,0,100,0,0,0,0,0,28,58806,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Reset - Remove permanent feign death"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,45,4,4,0,0,0,0,19,24639,0,0,0,0,0,0,"Jack Adams - On Reset - Set Data 4 4");
-- Yenniku SAI
SET @ENTRY := 2530;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,100,111,10,0,100,0,0,5,2000,2000,57,3912,1,0,0,0,0,7,0,0,0,0,0,0,0,"Il faut sauver le troll Yenniku 26305 : retire Gemme d'âme"),
(@ENTRY,0,111,112,61,0,100,0,0,0,0,0,56,3913,1,0,0,0,0,7,0,0,0,0,0,0,0,"Il faut sauver le troll Yenniku 26305 : donne Gemme d'âme capturée"),
(@ENTRY,0,112,113,61,0,100,0,0,0,0,0,11,98722,0,0,0,0,0,1,0,0,0,0,0,0,0,"Il faut sauver le troll Yenniku 26305 : visuel"),
(@ENTRY,0,113,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Il faut sauver le troll Yenniku 26305 : despawn");
-- Dead Caravan Guard SAI
SET @ENTRY := 25342;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,62,0,100,0,9155,0,0,0,56,34842,1,0,0,0,0,7,0,0,0,0,0,0,0,"Dead Caravan Guard - On Gossip Option 0 Selected - Add Item 'Warsong Outfit' 1 Time"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,41,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dead Caravan Guard - On Gossip Option 0 Selected - Despawn Instant"),
(@ENTRY,0,12,13,8,0,100,0,45474,0,3500,3500,33,25342,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dead Caravan Guard - On Spellhit 'Ragefist's Torch' - Quest Credit 'The Honored Dead'"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dead Caravan Guard - On Spellhit 'Ragefist's Torch' - Despawn In 500 ms");
-- Dead Caravan Worker SAI
SET @ENTRY := 25343;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,62,0,100,0,9156,0,0,0,56,34842,1,0,0,0,0,7,0,0,0,0,0,0,0,"Dead Caravan Worker - On Gossip Option 0 Selected - Add Item 'Warsong Outfit' 1 Time"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,41,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dead Caravan Worker - On Gossip Option 0 Selected - Despawn Instant"),
(@ENTRY,0,2,3,8,0,100,0,45474,0,3500,3500,33,25342,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dead Caravan Worker - On Spellhit 'Ragefist's Torch' - Quest Credit 'The Honored Dead'"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dead Caravan Worker - On Spellhit 'Ragefist's Torch' - Despawn In 500 ms");
-- Scalawag Frog SAI
SET @ENTRY := 26503;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,15,73,0,100,0,0,0,0,0,56,35803,1,0,0,0,0,7,0,0,0,0,0,0,0,"Scalawag Frog - On Spellclick - Add Item Scalawag Frog"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,41,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scalawag Frog - Linked with Previous Event - Despawn");
-- Fizzle Darkclaw SAI
SET @ENTRY := 3203;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,13,14,64,0,100,1,0,0,0,0,56,52580,1,0,0,0,0,7,0,0,0,0,0,0,0,"Féplouf 25260 : additem"),
(@ENTRY,0,14,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Féplouf 25260 :close gossip");
-- Chief Engineer Foote SAI
SET @ENTRY := 34754;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,20,25,62,0,100,0,10556,0,0,0,56,46827,1,0,0,0,0,7,0,0,0,0,0,0,0,"Racketter Foote 14034 : add plan"),
(@ENTRY,0,25,0,61,0,100,0,0,0,0,0,72,0,1,0,0,0,0,7,0,0,0,0,0,0,0,"Racketter Foote 14034 : fermer gossip");
-- Waptor Twap SAI
SET @ENTRY := 34831;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,110,111,75,0,100,0,0,3256,10,3000,11,175415,0,0,0,0,0,7,0,0,0,0,0,0,0,"La prive au piève 14068 : visuel 66282"),
(@ENTRY,0,111,112,61,0,100,1,0,0,0,0,56,46851,1,0,0,0,0,17,0,10,0,0,0,0,0,"La prive au piève 14068 : credit"),
(@ENTRY,0,112,113,61,0,100,1,0,0,0,0,41,500,0,0,0,0,0,7,0,10,0,0,0,0,0,"La prive au piève 14068 : despawn raptor"),
(@ENTRY,0,113,0,61,0,100,1,0,0,0,0,41,500,0,0,0,0,0,1,0,10,0,0,0,0,0,"La prive au piève 14068 : despawn piege"),
(@ENTRY,0,115,116,75,0,100,0,0,44164,10,3000,11,175415,0,0,0,0,0,7,0,0,0,0,0,0,0,"La prive au piève 14068 : visuel"),
(@ENTRY,0,116,117,61,0,100,1,0,0,0,0,56,46851,1,0,0,0,0,17,0,10,0,0,0,0,0,"La prive au piève 14068 : credit"),
(@ENTRY,0,117,118,61,0,100,1,0,0,0,0,41,500,0,0,0,0,0,7,0,10,0,0,0,0,0,"La prive au piève 14068 : despawn raptor"),
(@ENTRY,0,118,0,61,0,100,1,0,0,0,0,41,500,0,0,0,0,0,1,0,10,0,0,0,0,0,"La prive au piève 14068 : despawn piege");
-- Gappy Silvertooth SAI
SET @ENTRY := 35126;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,62,0,100,0,3,0,0,0,56,47045,1,0,0,0,0,7,0,0,0,0,0,0,0,"Gappy Silvertooth - On Gossip Option 0 Selected - Add Item '' 1 Time"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Gappy Silvertooth - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,2,0,64,0,100,0,0,0,0,0,10,1,3,5,6,0,0,1,0,0,0,0,0,0,0,"Gappy Silvertooth - On Gossip Hello - Play Random Emote (1, 3, 5, 6)"),
(@ENTRY,0,1000,0,60,0,30,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote 30/100");
-- Szabo SAI
SET @ENTRY := 35128;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,62,0,100,0,3,0,0,0,56,47046,1,0,0,0,0,7,0,0,0,0,0,0,0,"Szabo - On Gossip Option 0 Selected - Add Item '' 1 Time"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Szabo - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,2,0,64,0,100,0,0,0,0,0,10,1,3,5,6,0,0,1,0,0,0,0,0,0,0,"Szabo - On Gossip Hello - Play Random Emote (1, 3, 5, 6)"),
(@ENTRY,0,1000,0,60,0,30,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote 30/100");
-- Missa Spekkies SAI
SET @ENTRY := 35130;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,11,62,0,100,0,3,0,0,0,56,47047,1,0,0,0,0,7,0,0,0,0,0,0,0,"Missa Spekkies - On Gossip Option 0 Selected - Add Item '' 1 Time"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Missa Spekkies - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,2,0,64,0,100,0,0,0,0,0,10,1,3,5,6,0,0,1,0,0,0,0,0,0,0,"Missa Spekkies - On Gossip Hello - Play Random Emote (1, 3, 5, 6)"),
(@ENTRY,0,1000,0,60,0,30,0,0,0,3000,3000,10,3,5,6,24,25,71,1,0,0,0,0,0,0,0,"  Random emote 30/100");
-- Desolation Guard SAI
SET @ENTRY := 38070;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,9,0,100,0,0,5,9000,12000,11,40505,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enchaînement"),
(@ENTRY,0,10,0,0,0,100,0,0,0,4000,4000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,"Frappe heroique");
-- Sacrificed Vilebranch SAI
SET @ENTRY := 42857;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,110,111,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Le sommet du destin 26363 (H2) - 26517 (A2) : fermer gossip"),
(@ENTRY,0,111,112,61,0,100,1,0,0,0,0,56,58228,1,0,0,0,0,7,0,0,0,0,0,0,0,"Le sommet du destin 26363 (H2) - 26517 (A2) : Add Item"),
(@ENTRY,0,112,0,61,0,100,0,0,0,0,0,41,2000,1,0,0,0,0,7,0,0,0,0,0,0,0,"Le sommet du destin 26363 (H2) - 26517 (A2) : despawn");
-- Venture Co. Sawblade SAI
SET @ENTRY := 43003;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,110,111,64,0,100,0,0,0,0,0,57,58205,1,0,0,0,0,7,0,0,0,0,0,0,0,"La clé universelle  26400 : remove item"),
(@ENTRY,0,111,0,61,0,100,0,0,0,0,0,56,58490,1,0,0,0,0,7,0,0,0,0,0,0,0,"La clé universelle  26400 : add item");
-- Mordei the Earthrender SAI
SET @ENTRY := 43488;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,10,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cri de guerre"),
(@ENTRY,0,11,12,2,0,75,1,0,30,2000,2000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enrager 0-30% Health"),
(@ENTRY,0,12,0,61,0,50,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rageroar Lieutenant - Between 0-30% Health - Say Line 0 (No Repeat)");
-- Veteran Forsaken Trooper SAI
SET @ENTRY := 45197;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,110,111,64,0,100,1,0,0,0,0,56,60862,1,0,0,0,0,7,0,0,0,0,0,0,0,"q27180 - additem"),
(@ENTRY,0,111,112,61,0,100,0,0,0,0,0,72,500,0,0,0,0,0,7,0,0,0,0,0,0,0,"q27180 - fermer gossip"),
(@ENTRY,0,112,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"q27180 - despawn");
-- Creeper Egg SAI
SET @ENTRY := 47203;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,110,111,64,0,100,1,0,0,0,0,56,63029,1,0,0,0,0,7,0,0,0,0,0,0,0,"Une magnifique récolte 28114 : credit"),
(@ENTRY,0,111,112,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Une magnifique récolte 28114 : fermer gossip"),
(@ENTRY,0,112,0,61,0,100,0,0,0,0,0,41,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Une magnifique récolte 28114 : despawn");
-- Flamefly SAI
SET @ENTRY := 48671;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,110,115,64,0,100,1,0,0,0,0,56,64409,1,0,0,0,0,7,0,0,0,0,0,0,0,"Pas des lucioles, des flamouches ! 28491 : NPC add item"),
(@ENTRY,0,115,120,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pas des lucioles, des flamouches ! 28491 : NPC disapears after add item"),
(@ENTRY,0,120,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Pas des lucioles, des flamouches ! 28491 : fermer gossip menu");
-- Biletoad SAI
SET @ENTRY := 3835;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,11,10251,3,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Biletoad Infection on Death");












