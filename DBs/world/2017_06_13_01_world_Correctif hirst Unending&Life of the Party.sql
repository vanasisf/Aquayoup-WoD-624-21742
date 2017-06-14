-- Mana Wyrm SAI
SET @ENTRY := 15274;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,28730,0,3500,3500,11,61314,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit 'Arcane Torrent' - Cast 'Quest Credit 8346' (No Repeat)"),
(@ENTRY,0,1,0,8,0,100,1,25046,0,3500,3500,11,61314,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit 'Arcane Torrent' - Cast 'Quest Credit 8346' (No Repeat)"),
(@ENTRY,0,2,0,8,0,100,1,50613,0,3500,3500,11,61314,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit 'Arcane Torrent' - Cast 'Quest Credit 8346' (No Repeat)"),
(@ENTRY,0,3,0,0,0,100,0,5000,8000,12000,12000,11,25602,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mana Wyrm - In Combat - Cast 'Faerie Fire'"),
(@ENTRY,0,4,0,8,0,100,1,69179,0,3500,3500,11,61314,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit 'Arcane Torrent' - Cast 'Quest Credit 8346' (No Repeat)"),
(@ENTRY,0,5,0,8,0,100,1,80483,0,3500,3500,11,61314,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit 'Arcane Torrent' - Cast 'Quest Credit 8346' (No Repeat)"),
(@ENTRY,0,6,0,8,0,100,1,129597,0,3500,3500,11,61314,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit 'Arcane Torrent' - Cast 'Quest Credit 8346' (No Repeat)"),
(@ENTRY,0,7,0,8,0,100,1,155145,0,3500,3500,11,61314,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit 'Arcane Torrent' - Cast 'Quest Credit 8346' (No Repeat)");


DELETE FROM `world`.`spell_area` WHERE `spell_area`.`spell` = 66908 OR `spell_area`.`spell` = 66928 OR `spell_area`.`spell` = 66927;
 INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(66908, 4765, 14113, 14113, 0, 0, 2, 0, 74, 11),
(66908, 4765, 14153, 14153, 0, 0, 2, 0, 74, 11),
(66928, 4737, 14113, 14113, 0, 0, 0, 1, 74, 11),
(66928, 4765, 14113, 14113, 0, 0, 0, 1, 8, 11),
(66927, 4737, 14153, 14153, 0, 0, 1, 1, 74, 11),
(66927, 4765, 14153, 14153, 0, 0, 1, 1, 8, 11);

DELETE FROM `creature_text` WHERE `entry` = 35186;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(35186, 0, 0, 'If only I had someone to dance with.', 12, 0, 33, 0, 0, 0, 0, 0, 'quest'),
(35186, 0, 1, "J'aurais besoin d'un seau ... en ce moment .", 12, 0, 33, 0, 0, 0, 0, 0, 'quest'),
(35186, 0, 2, 'J''aimerais un peude boisson pétillante !', 12, 0, 33, 0, 0, 0, 0, 0, 'quest'),
(35186, 1, 0, 'Ugh... I need a bucket!', 12, 0, 100, 0, 0, 0, 40223, 0, 'Kezan Partygoer'),
(35186, 2, 0, 'I could really use a refill on my drink here.', 12, 0, 100, 0, 0, 0, 40222, 0, 'Kezan Partygoer'),
(35186, 3, 0, 'I love fireworks!', 12, 0, 100, 0, 0, 0, 40225, 0, 'Kezan Partygoer'),
(35186, 4, 0, 'This is delicious! Are there more hors d''oeuvres?', 12, 0, 100, 0, 0, 0, 40226, 0, 'Kezan Partygoer'),
(35186, 5, 0, 'A fresh glass of bubbly. Just what the doctor ordered, $n.', 12, 0, 100, 0, 0, 0, 35417, 0, 'Kezan Partygoer'),
(35186, 5, 1, 'Thanks for the refill, $g sir : ma''am;!', 12, 0, 100, 0, 0, 0, 35418, 0, 'Kezan Partygoer'),
(35186, 5, 2, 'This sparkling white wine is delicious! Wherever did you get it?', 12, 0, 100, 0, 0, 0, 35419, 0, 'Kezan Partygoer'),
(35186, 5, 3, 'I think this one will have to be my last. I''m driving home after the party.', 12, 0, 100, 0, 0, 0, 35420, 0, 'Kezan Partygoer'),
(35186, 5, 4, 'Thanksh!', 12, 0, 100, 0, 0, 0, 35421, 0, 'Kezan Partygoer'),
(35186, 6, 0, 'I feel much better now...hic!', 12, 0, 100, 0, 0, 0, 35422, 0, 'Kezan Partygoer'),
(35186, 6, 1, 'Oh, my head hurtsh.', 12, 0, 100, 0, 0, 0, 35423, 0, 'Kezan Partygoer'),
(35186, 6, 2, 'Shorry about your shoes.', 12, 0, 100, 0, 0, 0, 35424, 0, 'Kezan Partygoer'),
(35186, 7, 0, 'A disco ball?! Groovy!', 12, 0, 100, 0, 0, 0, 35425, 0, 'Kezan Partygoer'),
(35186, 7, 1, 'How do you like my moves, $n?', 12, 0, 100, 0, 0, 0, 35426, 0, 'Kezan Partygoer'),
(35186, 7, 2, 'We should totally have a pants-off dance-off!', 12, 0, 100, 0, 0, 0, 35427, 0, 'Kezan Partygoer'),
(35186, 7, 3, 'Shake it like a goblinoid picture!', 12, 0, 100, 0, 0, 0, 35428, 0, 'Kezan Partygoer'),
(35186, 8, 0, 'Wow! That sure beats this puny, little sparkler!', 12, 0, 100, 0, 0, 0, 35429, 0, 'Kezan Partygoer'),
(35186, 8, 1, 'You really stop at no expense, $n! Amazing!', 12, 0, 100, 0, 0, 0, 35430, 0, 'Kezan Partygoer'),
(35186, 8, 2, 'Best... Party... Evar!', 12, 0, 100, 0, 0, 0, 35431, 0, 'Kezan Partygoer'),
(35186, 8, 3, 'Woo hoo, fireworks! More, more!', 12, 0, 100, 0, 0, 0, 35432, 0, 'Kezan Partygoer'),
(35186, 9, 0, 'Thanks. I was almost out. So hungry!', 12, 0, 100, 0, 0, 0, 35433, 0, 'Kezan Partygoer'),
(35186, 9, 1, 'These are the most delicious hors d''oeurves I have ever tasted. You must share your recipe, $n!', 12, 0, 100, 0, 0, 0, 35434, 0, 'Kezan Partygoer'),
(35186, 9, 2, 'Finger licking good!', 12, 0, 100, 0, 0, 0, 35435, 0, 'Kezan Partygoer'),
(35186, 9, 3, 'Nom, nom, nom!', 12, 0, 100, 0, 0, 0, 35436, 0, 'Kezan Partygoer');


