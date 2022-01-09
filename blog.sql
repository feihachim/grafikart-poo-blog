-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 09 jan. 2022 à 22:27
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `date` datetime NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `date`, `category_id`) VALUES
(1, 'Mon titre', 'A sexy mistake.\r\n\r\nBender, I didn\'t know you liked cooking. That\'s so cute. Yeah. Give a little credit to our public schools. Also Zoidberg. I guess if you want children beaten, you have to do it yourself.\r\n\r\nWow, you got that off the Internet? In my day, the Internet was only used to download pornography. Fetal stemcells, aren\'t those controversial? I was all of history\'s great robot actors - Acting Unit 0. 8; Thespomat; David Duchovny!\r\nI guess because my parents keep telling me to be more ladylike. As though!\r\n\r\nWell I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. Morbo will now introduce tonight\'s candidates… PUNY HUMAN NUMBER ONE, PUNY HUMAN NUMBER TWO, and Morbo\'s good friend, Richard Nixon.\r\n\r\n    I\'m a thing.\r\n    With gusto.\r\n    The key to victory is discipline, and that means a well made bed. You will practice until you can make your bed in your sleep.\r\n\r\nNow what?\r\n\r\nRobot 1-X, save my friends! And Zoidberg! THE BIG BRAIN AM WINNING AGAIN! I AM THE GREETEST! NOW I AM LEAVING EARTH, FOR NO RAISEN! I\'ve been there. My folks were always on me to groom myself and wear underpants. What am I, the pope?\r\n\r\n    You can see how I lived before I met you.\r\n    Interesting. No, wait, the other thing: tedious.\r\n    I usually try to keep my sadness pent up inside where it can fester quietly as a mental illness.\r\n\r\nGuards! Bring me the forms I need to fill out to have her taken away! Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat.\r\n\r\nBite my shiny metal ass. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! We\'re rescuing ya. For one beautiful night I knew what it was like to be a grandmother. Subjugated, yet honored. Oh, how awful. Did he at least die painlessly? …To shreds, you say. Well, how is his wife holding up? …To shreds, you say.\r\n\r\nPlease, Don-Bot… look into your hard drive, and open your mercy file! Yes! In your face, Gandhi! And then the battle\'s not so bad? Yes, if you make it look like an electrical fire. When you do things right, people won\'t be sure you\'ve done anything at all.\r\n\r\nMy fellow Earthicans, as I have explained in my book \'Earth in the Balance\'\', and the much more popular \'\'Harry Potter and the Balance of Earth\', we need to defend our planet against pollution. Also dark wizards. Bender?! You stole the atom.\r\n\r\nYes. You gave me a dollar and some candy. Well, let\'s just dump it in the sewer and say we delivered it. Moving along… And yet you haven\'t said what I told you to say! How can any of us trust you?\r\n\r\nDear God, they\'ll be killed on our doorstep! And there\'s no trash pickup until January 3rd. Yep, I remember. They came in last at the Olympics, then retired to promote alcoholic beverages! Maybe I love you so much I love you no matter who you are pretending to be.\r\n\r\nAnd I\'d do it again! And perhaps a third time! But that would be it. Pansy. Leela, Bender, we\'re going grave robbing. No! The cat shelter\'s on to me. As an interesting side note, as a head without a body, I envy the dead.\r\n\r\nBender, being God isn\'t easy. If you do too much, people get dependent on you, and if you do nothing, they lose hope. You have to use a light touch. Like a safecracker, or a pickpocket. Goodbye, friends. I never thought I\'d die like this. But I always really hoped.\r\n\r\nI don\'t know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas. Maybe I love you so much I love you no matter who you are pretending to be.\r\n\r\nNo! Don\'t jump! Hey, tell me something. You\'ve got all this money. How come you always dress like you\'re doing your laundry? And from now on you\'re all named Bender Jr. Does anybody else feel jealous and aroused and worried?\r\n\r\nYeah. Give a little credit to our public schools. Shinier than yours, meatbag. Oh right. I forgot about the battle. Why yes! Thanks for noticing. This is the worst part. The calm before the battle. What are their names?', '2022-01-06 08:43:33', 1),
(2, 'Mon titre', 'A sexy mistake.\r\n\r\nBender, I didn\'t know you liked cooking. That\'s so cute. Yeah. Give a little credit to our public schools. Also Zoidberg. I guess if you want children beaten, you have to do it yourself.\r\n\r\nWow, you got that off the Internet? In my day, the Internet was only used to download pornography. Fetal stemcells, aren\'t those controversial? I was all of history\'s great robot actors - Acting Unit 0. 8; Thespomat; David Duchovny!\r\nI guess because my parents keep telling me to be more ladylike. As though!\r\n\r\nWell I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. Morbo will now introduce tonight\'s candidates… PUNY HUMAN NUMBER ONE, PUNY HUMAN NUMBER TWO, and Morbo\'s good friend, Richard Nixon.\r\n\r\n    I\'m a thing.\r\n    With gusto.\r\n    The key to victory is discipline, and that means a well made bed. You will practice until you can make your bed in your sleep.\r\n\r\nNow what?\r\n\r\nRobot 1-X, save my friends! And Zoidberg! THE BIG BRAIN AM WINNING AGAIN! I AM THE GREETEST! NOW I AM LEAVING EARTH, FOR NO RAISEN! I\'ve been there. My folks were always on me to groom myself and wear underpants. What am I, the pope?\r\n\r\n    You can see how I lived before I met you.\r\n    Interesting. No, wait, the other thing: tedious.\r\n    I usually try to keep my sadness pent up inside where it can fester quietly as a mental illness.\r\n\r\nGuards! Bring me the forms I need to fill out to have her taken away! Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat.\r\n\r\nBite my shiny metal ass. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! We\'re rescuing ya. For one beautiful night I knew what it was like to be a grandmother. Subjugated, yet honored. Oh, how awful. Did he at least die painlessly? …To shreds, you say. Well, how is his wife holding up? …To shreds, you say.\r\n\r\nPlease, Don-Bot… look into your hard drive, and open your mercy file! Yes! In your face, Gandhi! And then the battle\'s not so bad? Yes, if you make it look like an electrical fire. When you do things right, people won\'t be sure you\'ve done anything at all.\r\n\r\nMy fellow Earthicans, as I have explained in my book \'Earth in the Balance\'\', and the much more popular \'\'Harry Potter and the Balance of Earth\', we need to defend our planet against pollution. Also dark wizards. Bender?! You stole the atom.\r\n\r\nYes. You gave me a dollar and some candy. Well, let\'s just dump it in the sewer and say we delivered it. Moving along… And yet you haven\'t said what I told you to say! How can any of us trust you?\r\n\r\nDear God, they\'ll be killed on our doorstep! And there\'s no trash pickup until January 3rd. Yep, I remember. They came in last at the Olympics, then retired to promote alcoholic beverages! Maybe I love you so much I love you no matter who you are pretending to be.\r\n\r\nAnd I\'d do it again! And perhaps a third time! But that would be it. Pansy. Leela, Bender, we\'re going grave robbing. No! The cat shelter\'s on to me. As an interesting side note, as a head without a body, I envy the dead.\r\n\r\nBender, being God isn\'t easy. If you do too much, people get dependent on you, and if you do nothing, they lose hope. You have to use a light touch. Like a safecracker, or a pickpocket. Goodbye, friends. I never thought I\'d die like this. But I always really hoped.\r\n\r\nI don\'t know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas. Maybe I love you so much I love you no matter who you are pretending to be.\r\n\r\nNo! Don\'t jump! Hey, tell me something. You\'ve got all this money. How come you always dress like you\'re doing your laundry? And from now on you\'re all named Bender Jr. Does anybody else feel jealous and aroused and worried?\r\n\r\nYeah. Give a little credit to our public schools. Shinier than yours, meatbag. Oh right. I forgot about the battle. Why yes! Thanks for noticing. This is the worst part. The calm before the battle. What are their names?', '2022-01-06 08:46:37', 2),
(3, 'Mon titre', 'A sexy mistake.\r\n\r\nBender, I didn\'t know you liked cooking. That\'s so cute. Yeah. Give a little credit to our public schools. Also Zoidberg. I guess if you want children beaten, you have to do it yourself.\r\n\r\nWow, you got that off the Internet? In my day, the Internet was only used to download pornography. Fetal stemcells, aren\'t those controversial? I was all of history\'s great robot actors - Acting Unit 0. 8; Thespomat; David Duchovny!\r\nI guess because my parents keep telling me to be more ladylike. As though!\r\n\r\nWell I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. Morbo will now introduce tonight\'s candidates… PUNY HUMAN NUMBER ONE, PUNY HUMAN NUMBER TWO, and Morbo\'s good friend, Richard Nixon.\r\n\r\n    I\'m a thing.\r\n    With gusto.\r\n    The key to victory is discipline, and that means a well made bed. You will practice until you can make your bed in your sleep.\r\n\r\nNow what?\r\n\r\nRobot 1-X, save my friends! And Zoidberg! THE BIG BRAIN AM WINNING AGAIN! I AM THE GREETEST! NOW I AM LEAVING EARTH, FOR NO RAISEN! I\'ve been there. My folks were always on me to groom myself and wear underpants. What am I, the pope?\r\n\r\n    You can see how I lived before I met you.\r\n    Interesting. No, wait, the other thing: tedious.\r\n    I usually try to keep my sadness pent up inside where it can fester quietly as a mental illness.\r\n\r\nGuards! Bring me the forms I need to fill out to have her taken away! Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat.\r\n\r\nBite my shiny metal ass. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! We\'re rescuing ya. For one beautiful night I knew what it was like to be a grandmother. Subjugated, yet honored. Oh, how awful. Did he at least die painlessly? …To shreds, you say. Well, how is his wife holding up? …To shreds, you say.\r\n\r\nPlease, Don-Bot… look into your hard drive, and open your mercy file! Yes! In your face, Gandhi! And then the battle\'s not so bad? Yes, if you make it look like an electrical fire. When you do things right, people won\'t be sure you\'ve done anything at all.\r\n\r\nMy fellow Earthicans, as I have explained in my book \'Earth in the Balance\'\', and the much more popular \'\'Harry Potter and the Balance of Earth\', we need to defend our planet against pollution. Also dark wizards. Bender?! You stole the atom.\r\n\r\nYes. You gave me a dollar and some candy. Well, let\'s just dump it in the sewer and say we delivered it. Moving along… And yet you haven\'t said what I told you to say! How can any of us trust you?\r\n\r\nDear God, they\'ll be killed on our doorstep! And there\'s no trash pickup until January 3rd. Yep, I remember. They came in last at the Olympics, then retired to promote alcoholic beverages! Maybe I love you so much I love you no matter who you are pretending to be.\r\n\r\nAnd I\'d do it again! And perhaps a third time! But that would be it. Pansy. Leela, Bender, we\'re going grave robbing. No! The cat shelter\'s on to me. As an interesting side note, as a head without a body, I envy the dead.\r\n\r\nBender, being God isn\'t easy. If you do too much, people get dependent on you, and if you do nothing, they lose hope. You have to use a light touch. Like a safecracker, or a pickpocket. Goodbye, friends. I never thought I\'d die like this. But I always really hoped.\r\n\r\nI don\'t know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas. Maybe I love you so much I love you no matter who you are pretending to be.\r\n\r\nNo! Don\'t jump! Hey, tell me something. You\'ve got all this money. How come you always dress like you\'re doing your laundry? And from now on you\'re all named Bender Jr. Does anybody else feel jealous and aroused and worried?\r\n\r\nYeah. Give a little credit to our public schools. Shinier than yours, meatbag. Oh right. I forgot about the battle. Why yes! Thanks for noticing. This is the worst part. The calm before the battle. What are their names?', '2022-01-06 08:46:38', 2);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Piscine'),
(2, 'Longboard');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
