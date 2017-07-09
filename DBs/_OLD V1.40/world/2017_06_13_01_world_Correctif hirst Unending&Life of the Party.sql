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


DELETE FROM `spell_area` WHERE `spell` = 66908 OR `spell` = 66928 OR `spell` = 66927;
 INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(66908, 4765, 14113, 14113, 0, 0, 2, 0, 74, 11),
(66908, 4765, 14153, 14153, 0, 0, 2, 0, 74, 11),
(66928, 4737, 14113, 14113, 0, 0, 0, 1, 74, 11),
(66928, 4765, 14113, 14113, 0, 0, 0, 1, 8, 11),
(66927, 4737, 14153, 14153, 0, 0, 1, 1, 74, 11),
(66927, 4765, 14153, 14153, 0, 0, 1, 1, 8, 11);

DELETE FROM `creature_text` WHERE `entry` = 35186;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(35186, 0, 0, 'Si seulement j''avais quelqu''un pour danser avec.', 12, 0, 33, 0, 0, 0, 0, 0, 'quest'),
(35186, 0, 1, "J'aurais besoin d'un seau ... en ce moment .", 12, 0, 33, 0, 0, 0, 0, 0, 'quest'),
(35186, 0, 2, 'J''aimerais un peu de boisson pétillante !', 12, 0, 33, 0, 0, 0, 0, 0, 'quest'),
(35186, 1, 0, 'Ugh ... J''ai besoin d''un seau!', 12, 0, 100, 0, 0, 0, 40223, 0, 'Kezan Partygoer'),
(35186, 2, 0, 'Je pourrais vraiment utiliser une recharge sur mon verre ici.', 12, 0, 100, 0, 0, 0, 40222, 0, 'Kezan Partygoer'),
(35186, 3, 0, 'J''aime les feux d''artifice!', 12, 0, 100, 0, 0, 0, 40225, 0, 'Kezan Partygoer'),
(35186, 4, 0, 'C''est délicieux! Y a-t-il plus de hors d''oeuvres?', 12, 0, 100, 0, 0, 0, 40226, 0, 'Kezan Partygoer'),
(35186, 5, 0, 'Un verre frais de pétillant. Juste ce que le docteur à prescrit, $n.', 12, 0, 100, 0, 0, 0, 35417, 0, 'Kezan Partygoer'),
(35186, 5, 1, 'Merci pour la recharge, $g sir : ma''am;!', 12, 0, 100, 0, 0, 0, 35418, 0, 'Kezan Partygoer'),
(35186, 5, 2, 'Ce vin blanc pétillant est délicieux! Partout où vous l''avez obtenu?', 12, 0, 100, 0, 0, 0, 35419, 0, 'Kezan Partygoer'),
(35186, 5, 3, 'Je pense que celui-ci devra être le dernier. Je rentre à la maison après la fête.', 12, 0, 100, 0, 0, 0, 35420, 0, 'Kezan Partygoer'),
(35186, 5, 4, 'Merci!', 12, 0, 100, 0, 0, 0, 35421, 0, 'Kezan Partygoer'),
(35186, 6, 0, 'Je me sens beaucoup mieux maintenant ... hic!', 12, 0, 100, 0, 0, 0, 35422, 0, 'Kezan Partygoer'),
(35186, 6, 1, 'Oh, ma tête me fait mal.', 12, 0, 100, 0, 0, 0, 35423, 0, 'Kezan Partygoer'),
(35186, 6, 2, 'Désolé pour vos chaussures.', 12, 0, 100, 0, 0, 0, 35424, 0, 'Kezan Partygoer'),
(35186, 7, 0, 'Une balle disco ?! Sensationnel!', 12, 0, 100, 0, 0, 0, 35425, 0, 'Kezan Partygoer'),
(35186, 7, 1, 'Comment aimez-vous mon mouvement, $n?', 12, 0, 100, 0, 0, 0, 35426, 0, 'Kezan Partygoer'),
(35186, 7, 2, 'Nous devons absolument avoir un pantalon de danse!', 12, 0, 100, 0, 0, 0, 35427, 0, 'Kezan Partygoer'),
(35186, 7, 3, 'Secouez-le comme une photo goblinoïde!', 12, 0, 100, 0, 0, 0, 35428, 0, 'Kezan Partygoer'),
(35186, 8, 0, 'Hou la la! Bien sûr, ça vaut mieux que ce chétif, petit cierge magique!', 12, 0, 100, 0, 0, 0, 35429, 0, 'Kezan Partygoer'),
(35186, 8, 1, 'Vous vous arrêtez vraiment sans frais, $ n! Incroyable!', 12, 0, 100, 0, 0, 0, 35430, 0, 'Kezan Partygoer'),
(35186, 8, 2, 'Meilleur ... Fête ... Evar!', 12, 0, 100, 0, 0, 0, 35431, 0, 'Kezan Partygoer'),
(35186, 8, 3, 'Woo hoo, feux d’artifice ! Encore, encore!', 12, 0, 100, 0, 0, 0, 35432, 0, 'Kezan Partygoer'),
(35186, 9, 0, 'Merci. J''étais presque dehors. Tellement affamé!', 12, 0, 100, 0, 0, 0, 35433, 0, 'Kezan Partygoer'),
(35186, 9, 1, 'Ce sont les hors-d''œuvre les plus délicieux que j''ai jamais goûté. Vous devez partager votre recette, $n!', 12, 0, 100, 0, 0, 0, 35434, 0, 'Kezan Partygoer'),
(35186, 9, 2, 'À s''en lécher les doigts', 12, 0, 100, 0, 0, 0, 35435, 0, 'Kezan Partygoer'),
(35186, 9, 3, 'Miam miam miam!', 12, 0, 100, 0, 0, 0, 35436, 0, 'Kezan Partygoer');


