-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Jul 2015 um 16:47
-- Server Version: 5.6.21
-- PHP-Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `skillborn`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `characters`
--

CREATE TABLE IF NOT EXISTS `characters` (
`id` int(11) NOT NULL,
  `charname` varchar(255) NOT NULL,
  `f_raceId` int(11) NOT NULL,
  `f_classId` int(11) NOT NULL,
  `axe` int(11) NOT NULL DEFAULT '0',
  `dagger` int(11) NOT NULL DEFAULT '0',
  `unarmed` int(11) NOT NULL DEFAULT '0',
  `hammer` int(11) NOT NULL DEFAULT '0',
  `polearm` int(11) NOT NULL DEFAULT '0',
  `spear` int(11) NOT NULL DEFAULT '0',
  `staff` int(11) NOT NULL DEFAULT '0',
  `sword` int(11) NOT NULL DEFAULT '0',
  `archery` int(11) NOT NULL DEFAULT '0',
  `crossbow` int(11) NOT NULL DEFAULT '0',
  `sling` int(11) NOT NULL DEFAULT '0',
  `thrown` int(11) NOT NULL DEFAULT '0',
  `armor` int(11) NOT NULL DEFAULT '0',
  `dualweapon` int(11) NOT NULL DEFAULT '0',
  `shield` int(11) NOT NULL DEFAULT '0',
  `bardic` int(11) NOT NULL DEFAULT '0',
  `conjuring` int(11) NOT NULL DEFAULT '0',
  `druidic` int(11) NOT NULL DEFAULT '0',
  `illusion` int(11) NOT NULL DEFAULT '0',
  `necromancy` int(11) NOT NULL DEFAULT '0',
  `shamanic` int(11) NOT NULL DEFAULT '0',
  `sorcery` int(11) NOT NULL DEFAULT '0',
  `summoning` int(11) NOT NULL DEFAULT '0',
  `spellcraft` int(11) NOT NULL DEFAULT '0',
  `focus` int(11) NOT NULL DEFAULT '0',
  `armorsmithing` int(11) NOT NULL DEFAULT '0',
  `tailoring` int(11) NOT NULL DEFAULT '0',
  `fletching` int(11) NOT NULL DEFAULT '0',
  `weaponsmithing` int(11) NOT NULL DEFAULT '0',
  `lapidary` int(11) NOT NULL DEFAULT '0',
  `f_userId` int(11) NOT NULL,
  `developmentpoints` int(11) NOT NULL,
  `f_inventory` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  `strength` int(11) NOT NULL DEFAULT '0',
  `intelligence` int(11) NOT NULL DEFAULT '0',
  `constitution` int(11) NOT NULL DEFAULT '0',
  `dexterity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `axe` int(11) DEFAULT '0',
  `dagger` int(11) DEFAULT '0',
  `unarmed` int(11) DEFAULT '0',
  `hammer` int(11) DEFAULT '0',
  `polearm` int(11) DEFAULT '0',
  `spear` int(11) DEFAULT '0',
  `staff` int(11) DEFAULT '0',
  `sword` int(11) DEFAULT '0',
  `archery` int(11) DEFAULT '0',
  `crossbow` int(11) DEFAULT '0',
  `sling` int(11) DEFAULT '0',
  `thrown` int(11) DEFAULT '0',
  `armor` int(11) DEFAULT '0',
  `dualweapon` int(11) DEFAULT '0',
  `shield` int(11) DEFAULT '0',
  `bardic` int(11) DEFAULT '0',
  `conjuring` int(11) DEFAULT '0',
  `druidic` int(11) DEFAULT '0',
  `illusion` int(11) DEFAULT '0',
  `necromancy` int(11) DEFAULT '0',
  `shamanic` int(11) DEFAULT '0',
  `sorcery` int(11) DEFAULT '0',
  `summoning` int(11) NOT NULL DEFAULT '0',
  `spellcraft` int(11) DEFAULT '0',
  `focus` int(11) DEFAULT '0',
  `armorsmithing` int(11) DEFAULT '0',
  `tailoring` int(11) DEFAULT '0',
  `fletching` int(11) DEFAULT '0',
  `weaponsmithing` int(11) DEFAULT '0',
  `lapidary` int(11) DEFAULT '0',
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `classes`
--

INSERT INTO `classes` (`id`, `name`, `axe`, `dagger`, `unarmed`, `hammer`, `polearm`, `spear`, `staff`, `sword`, `archery`, `crossbow`, `sling`, `thrown`, `armor`, `dualweapon`, `shield`, `bardic`, `conjuring`, `druidic`, `illusion`, `necromancy`, `shamanic`, `sorcery`, `summoning`, `spellcraft`, `focus`, `armorsmithing`, `tailoring`, `fletching`, `weaponsmithing`, `lapidary`, `hp`, `mp`) VALUES
(1, 'Adventurer', 0, -5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5),
(3, 'Archer', 15, -5, 0, 15, 25, 5, 0, -5, -25, -10, -5, 0, 5, -5, 10, 5, 15, -5, 15, 15, 5, 10, 0, 5, -20, 10, 0, -10, 5, 15, 6, 4),
(4, 'Assassin', 0, -25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `races`
--

CREATE TABLE IF NOT EXISTS `races` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `axe` int(11) DEFAULT '0',
  `dagger` int(11) DEFAULT '0',
  `unarmed` int(11) DEFAULT '0',
  `hammer` int(11) DEFAULT '0',
  `polearm` int(11) DEFAULT '0',
  `spear` int(11) DEFAULT '0',
  `staff` int(11) DEFAULT '0',
  `sword` int(11) DEFAULT '0',
  `archery` int(11) DEFAULT '0',
  `crossbow` int(11) DEFAULT '0',
  `sling` int(11) DEFAULT '0',
  `thrown` int(11) DEFAULT '0',
  `armor` int(11) DEFAULT '0',
  `dualweapon` int(11) DEFAULT '0',
  `shield` int(11) DEFAULT '0',
  `bardic` int(11) DEFAULT '0',
  `conjuring` int(11) DEFAULT '0',
  `druidic` int(11) DEFAULT '0',
  `illusion` int(11) DEFAULT '0',
  `necromancy` int(11) DEFAULT '0',
  `shamanic` int(11) DEFAULT '0',
  `sorcery` int(11) DEFAULT '0',
  `summoning` int(11) NOT NULL DEFAULT '0',
  `spellcraft` int(11) DEFAULT '0',
  `focus` int(11) DEFAULT '0',
  `armorsmithing` int(11) DEFAULT '0',
  `tailoring` int(11) DEFAULT '0',
  `fletching` int(11) DEFAULT '0',
  `weaponsmithing` int(11) DEFAULT '0',
  `Lapidary` int(11) DEFAULT '0',
  `strength` int(11) NOT NULL,
  `intelligence` int(11) NOT NULL,
  `dexterity` int(11) NOT NULL,
  `constitution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `races`
--

INSERT INTO `races` (`id`, `name`, `axe`, `dagger`, `unarmed`, `hammer`, `polearm`, `spear`, `staff`, `sword`, `archery`, `crossbow`, `sling`, `thrown`, `armor`, `dualweapon`, `shield`, `bardic`, `conjuring`, `druidic`, `illusion`, `necromancy`, `shamanic`, `sorcery`, `summoning`, `spellcraft`, `focus`, `armorsmithing`, `tailoring`, `fletching`, `weaponsmithing`, `Lapidary`, `strength`, `intelligence`, `dexterity`, `constitution`) VALUES
(0, 'Human', 0, -5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 50);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fguildid` int(11) NOT NULL,
  `calculatedResult` varchar(512) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fguildid`, `calculatedResult`) VALUES
(12, 'jr00t', '967d54fd90b42faaadf045b7989788ef', 0, 'WoelMFHIPJggQ/cHwhrZ90GhAqJvMCTrdJWMI2IwAvLy47JhPxvkih3CMJs53lSqKTL5obOM9CftoWhp5yfzgaTwHcRDXTpzeZ9P8mWNwVDJpeAgUq/GT6g19WRhdQ9t|P/iE3vKZm/ohN+o0qn5qfclt/3yhP/mrzPLxzo2hsFQ='),
(13, 'john', '967d54fd90b42faaadf045b7989788ef', 0, '8rlrRVmopl7a387Z8kCXC/znw2l0jvv4sodZeHblKW+c+jDYdsR/YuAy9JN+BY+x+6bCC++W7bTFRqHh6LBWl/K9Cr6XLjlHwSXIDGWdu83gWf+lO8Hl1cBTxPI1em/j|4ibx7rUutkSlZXPoPQOxsY2NlmvzEoFPo1euZm10UI8=');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `characters`
--
ALTER TABLE `characters`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `f_inventory` (`f_inventory`);

--
-- Indizes für die Tabelle `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `races`
--
ALTER TABLE `races`
 ADD UNIQUE KEY `name` (`name`), ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `characters`
--
ALTER TABLE `characters`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `classes`
--
ALTER TABLE `classes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
