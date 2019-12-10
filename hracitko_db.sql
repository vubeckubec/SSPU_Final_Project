-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 10. pro 2019, 20:58
-- Verze serveru: 10.1.32-MariaDB
-- Verze PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `hracitko_db`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `album`
--

CREATE TABLE `album` (
  `album_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `pic_tn` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `album`
--

INSERT INTO `album` (`album_id`, `name`, `year`, `pic_tn`) VALUES
(1, 'Human', 1991, 'black_death/Death/.meta/Human_tn.jpg'),
(2, 'Individual Thought Patterns', 1993, 'black_death/Death/.meta/Individual Thought Patterns_tn.jpg'),
(3, 'Leprosy', 1988, 'black_death/Death/.meta/Leprosy_tn.jpg'),
(4, 'Scream Bloody Gore', 1987, 'black_death/Death/.meta/Scream Bloody Gore_tn.jpg'),
(5, 'Spiritual Healing', 1990, 'black_death/Death/.meta/Spiritual Healing_tn.jpg'),
(6, 'Symbolic', 1995, 'black_death/Death/.meta/Symbolic_tn.jpg'),
(7, 'The Sound of Perseverance', 1998, 'black_death/Death/.meta/The Sound of Perseverance_tn.jpg'),
(8, 'A Matter of Life and Death', 2006, 'hard_heavy/Iron Maiden/.meta/A Matter of Life and Death_tn.jpg'),
(9, 'Brave New World', 2000, 'hard_heavy/Iron Maiden/.meta/Brave New World_tn.jpg'),
(10, 'Dance of Death', 2003, 'hard_heavy/Iron Maiden/.meta/Dance of Death_tn.jpg'),
(11, 'Fear of the Dark', 1992, 'hard_heavy/Iron Maiden/.meta/Fear of the Dark_tn.jpg'),
(12, 'Iron Maiden', 1980, 'hard_heavy/Iron Maiden/.meta/Iron Maiden_tn.jpg'),
(13, 'Killers', 1981, 'hard_heavy/Iron Maiden/.meta/Killers_tn.jpg'),
(14, 'Live After Death', 1985, 'hard_heavy/Iron Maiden/.meta/Live After Death_tn.jpg'),
(15, 'No Prayer for the Dying', 1990, 'hard_heavy/Iron Maiden/.meta/No Prayer for the Dying_tn.jpg'),
(16, 'Piece of Mind', 1983, 'hard_heavy/Iron Maiden/.meta/Piece of Mind_tn.jpg'),
(17, 'Powerslave', 1984, 'hard_heavy/Iron Maiden/.meta/Powerslave_tn.jpg'),
(18, 'Seventh Son of a Seventh Son', 1988, 'hard_heavy/Iron Maiden/.meta/Seventh Son of a Seventh Son_tn.jpg'),
(19, 'Somewhere Back in Time', 2008, 'hard_heavy/Iron Maiden/.meta/Somewhere Back in Time_tn.jpg'),
(20, 'Somewhere in Time', 1986, 'hard_heavy/Iron Maiden/.meta/Somewhere in Time_tn.jpg'),
(21, 'The Book of Souls', 2015, 'hard_heavy/Iron Maiden/.meta/The Book of Souls_tn.jpg'),
(22, 'The Final Frontier', 2010, 'hard_heavy/Iron Maiden/.meta/The Final Frontier_tn.jpg'),
(23, 'The Number of the Beast', 1982, 'hard_heavy/Iron Maiden/.meta/The Number of the Beast_tn.jpg'),
(24, 'The X Factor', 1995, 'hard_heavy/Iron Maiden/.meta/The X Factor_tn.jpg'),
(25, 'Virtual XI', 1998, 'hard_heavy/Iron Maiden/.meta/Virtual XI_tn.jpg'),
(26, 'B-Sides & Rarities', 2013, 'thrash/Slayer/.meta/B-Sides & Rarities_tn.jpg'),
(27, 'Christ Illusion', 2006, 'thrash/Slayer/.meta/Christ Illusion_tn.jpg'),
(28, 'Criminally Insane', 1987, 'thrash/Slayer/.meta/Criminally Insane_tn.jpg'),
(29, 'Decade of Aggression', 1991, 'thrash/Slayer/.meta/Decade of Aggression_tn.jpg'),
(30, 'Diabolus in Musica', 1998, 'thrash/Slayer/.meta/Diabolus in Musica_tn.jpg'),
(31, 'Divine Intervention', 1994, 'thrash/Slayer/.meta/Divine Intervention_tn.jpg'),
(32, 'God Hates Us All', 2001, 'thrash/Slayer/.meta/God Hates Us All_tn.jpg'),
(33, 'Haunting the Chapel', 1984, 'thrash/Slayer/.meta/Haunting the Chapel_tn.jpg'),
(34, 'Hell Awaits', 1985, 'thrash/Slayer/.meta/Hell Awaits_tn.jpg'),
(35, 'Reign in Blood', 1986, 'thrash/Slayer/.meta/Reign in Blood_tn.jpg'),
(36, 'Repentless', 2015, 'thrash/Slayer/.meta/Repentless_tn.jpg'),
(37, 'Seasons in the Abyss', 1990, 'thrash/Slayer/.meta/Seasons in the Abyss_tn.jpg'),
(38, 'Serenity in Murder', 1995, 'thrash/Slayer/.meta/Serenity in Murder_tn.jpg'),
(39, 'Show No Mercy', 1983, 'thrash/Slayer/.meta/Show No Mercy_tn.jpg'),
(40, 'South of Heaven', 1988, 'thrash/Slayer/.meta/South of Heaven_tn.jpg'),
(41, 'Stain of Mind', 1998, 'thrash/Slayer/.meta/Stain of Mind_tn.jpg'),
(42, 'Undisputed Attitude', 1996, 'thrash/Slayer/.meta/Undisputed Attitude_tn.jpg'),
(43, 'World Painted Blood', 2009, 'thrash/Slayer/.meta/World Painted Blood_tn.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `artist`
--

INSERT INTO `artist` (`artist_id`, `name`) VALUES
(1, 'Death'),
(2, 'Iron Maiden'),
(3, 'Slayer');

-- --------------------------------------------------------

--
-- Struktura tabulky `artist_has_album`
--

CREATE TABLE `artist_has_album` (
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `artist_has_album`
--

INSERT INTO `artist_has_album` (`artist_id`, `album_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43);

-- --------------------------------------------------------

--
-- Struktura tabulky `playlist`
--

CREATE TABLE `playlist` (
  `idplaylist` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `playlist`
--

INSERT INTO `playlist` (`idplaylist`, `name`) VALUES
(1, 'viktors favorites'),
(2, 'guests favorites'),
(3, 'random');

-- --------------------------------------------------------

--
-- Struktura tabulky `playlist_has_songs`
--

CREATE TABLE `playlist_has_songs` (
  `playlist_idplaylist` int(10) UNSIGNED NOT NULL,
  `song_song_id` int(10) UNSIGNED NOT NULL,
  `song_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `playlist_has_songs`
--

INSERT INTO `playlist_has_songs` (`playlist_idplaylist`, `song_song_id`, `song_order`) VALUES
(1, 2, 1),
(1, 3, 2),
(1, 4, 3),
(1, 83, 4),
(1, 362, 8),
(2, 4, 5),
(2, 6, 6);

-- --------------------------------------------------------

--
-- Struktura tabulky `queue`
--

CREATE TABLE `queue` (
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `song_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `song`
--

CREATE TABLE `song` (
  `song_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `time` decimal(5,0) NOT NULL,
  `album_idalbum` int(10) UNSIGNED NOT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `song_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `song`
--

INSERT INTO `song` (`song_id`, `name`, `time`, `album_idalbum`, `path`, `song_order`) VALUES
(1, 'Cosmic Sea', '267', 1, 'black_death/Death/Human/07 - Cosmic Sea.mp3', 7),
(2, 'God of Thunder (Bonus Track)', '240', 1, 'black_death/Death/Human/09 - God of Thunder (Bonus Track).mp3', 9),
(3, 'Together as One', '250', 1, 'black_death/Death/Human/03 - Together as One.mp3', 3),
(4, 'Lack of Comprehension', '223', 1, 'black_death/Death/Human/05 - Lack of Comprehension.mp3', 5),
(5, 'Secret Face', '279', 1, 'black_death/Death/Human/04 - Secret Face.mp3', 4),
(6, 'Suicide Machine', '263', 1, 'black_death/Death/Human/02 - Suicide Machine.mp3', 2),
(7, 'See Through Dreams', '279', 1, 'black_death/Death/Human/06 - See Through Dreams.mp3', 6),
(8, 'Flattening of Emotions', '269', 1, 'black_death/Death/Human/01 - Flattening of Emotions.mp3', 1),
(9, 'Vacant Planets', '232', 1, 'black_death/Death/Human/08 - Vacant Planets.mp3', 8),
(10, 'Mentally Blind', '286', 2, 'black_death/Death/Individual Thought Patterns/06 - Mentally Blind.mp3', 6),
(11, 'Overactive Imagination', '210', 2, 'black_death/Death/Individual Thought Patterns/01 - Overactive Imagination.mp3', 1),
(12, 'Destiny', '244', 2, 'black_death/Death/Individual Thought Patterns/08 - Destiny.mp3', 8),
(13, 'The Philosopher', '250', 2, 'black_death/Death/Individual Thought Patterns/10 - The Philosopher.mp3', 10),
(14, 'In Human Form', '235', 2, 'black_death/Death/Individual Thought Patterns/02 - In Human Form.mp3', 2),
(15, 'Nothing Is Everything', '196', 2, 'black_death/Death/Individual Thought Patterns/05 - Nothing Is Everything.mp3', 5),
(16, 'Trapped in a Corner', '252', 2, 'black_death/Death/Individual Thought Patterns/04 - Trapped in a Corner.mp3', 4),
(17, 'Individual Thought Patterns', '241', 2, 'black_death/Death/Individual Thought Patterns/07 - Individual Thought Patterns.mp3', 7),
(18, 'Jealousy', '220', 2, 'black_death/Death/Individual Thought Patterns/03 - Jealousy.mp3', 3),
(19, 'Out of Touch', '259', 2, 'black_death/Death/Individual Thought Patterns/09 - Out of Touch.mp3', 9),
(20, 'Primitive Ways', '272', 3, 'black_death/Death/Leprosy/07 - Primitive Ways.mp3', 7),
(21, 'Forgotten Past (Live)', '273', 3, 'black_death/Death/Leprosy/13 - Forgotten Past (Live).mp3', 13),
(22, 'Forgotten Past', '276', 3, 'black_death/Death/Leprosy/03 - Forgotten Past.mp3', 3),
(23, 'Open Casket (Live)', '289', 3, 'black_death/Death/Leprosy/09 - Open Casket (Live).mp3', 9),
(24, 'Pull the Plug', '266', 3, 'black_death/Death/Leprosy/05 - Pull the Plug.mp3', 5),
(25, 'Left to Die', '277', 3, 'black_death/Death/Leprosy/04 - Left to Die.mp3', 4),
(26, 'Pull the Plug (Live)', '266', 3, 'black_death/Death/Leprosy/12 - Pull the Plug (Live).mp3', 12),
(27, 'Left to Die (Live)', '275', 3, 'black_death/Death/Leprosy/11 - Left to Die (Live).mp3', 11),
(28, 'Choke on It (Live)', '349', 3, 'black_death/Death/Leprosy/10 - Choke on It (Live).mp3', 10),
(29, 'Born Dead', '206', 3, 'black_death/Death/Leprosy/02 - Born Dead.mp3', 2),
(30, 'Open Casket', '294', 3, 'black_death/Death/Leprosy/06 - Open Casket.mp3', 6),
(31, 'Leprosy', '371', 3, 'black_death/Death/Leprosy/01 - Leprosy.mp3', 1),
(32, 'Choke on It', '355', 3, 'black_death/Death/Leprosy/08 - Choke on It.mp3', 8),
(33, 'Beyond the Unholy Grave', '185', 4, 'black_death/Death/Scream Bloody Gore/11 - Beyond the Unholy Grave.mp3', 11),
(34, 'Land of No Return', '180', 4, 'black_death/Death/Scream Bloody Gore/12 - Land of No Return.mp3', 12),
(35, 'Mutilation', '207', 4, 'black_death/Death/Scream Bloody Gore/05 - Mutilation.mp3', 5),
(36, 'Sacrificial', '221', 4, 'black_death/Death/Scream Bloody Gore/04 - Sacrificial.mp3', 4),
(37, 'Denial of Life', '215', 4, 'black_death/Death/Scream Bloody Gore/03 - Denial of Life.mp3', 3),
(38, 'Evil Dead', '179', 4, 'black_death/Death/Scream Bloody Gore/09 - Evil Dead.mp3', 9),
(39, 'Baptized in Blood', '269', 4, 'black_death/Death/Scream Bloody Gore/07 - Baptized in Blood.mp3', 7),
(40, 'Torn to Pieces', '215', 4, 'black_death/Death/Scream Bloody Gore/08 - Torn to Pieces.mp3', 8),
(41, 'Infernal Death', '172', 4, 'black_death/Death/Scream Bloody Gore/01 - Infernal Death.mp3', 1),
(42, 'Regurgitated Guts', '224', 4, 'black_death/Death/Scream Bloody Gore/06 - Regurgitated Guts.mp3', 6),
(43, 'Zombie Ritual', '272', 4, 'black_death/Death/Scream Bloody Gore/02 - Zombie Ritual.mp3', 2),
(44, 'Scream Bloody Gore', '272', 4, 'black_death/Death/Scream Bloody Gore/10 - Scream Bloody Gore.mp3', 10),
(45, 'Spiritual Healing', '394', 5, 'black_death/Death/Spiritual Healing/05 - Spiritual Healing.mp3', 5),
(46, 'Within the Mind', '334', 5, 'black_death/Death/Spiritual Healing/04 - Within the Mind.mp3', 4),
(47, 'Defensive Personalities', '286', 5, 'black_death/Death/Spiritual Healing/03 - Defensive Personalities.mp3', 3),
(48, 'Genetic Reconstruction', '292', 5, 'black_death/Death/Spiritual Healing/07 - Genetic Reconstruction.mp3', 7),
(49, 'Killing Spree', '256', 5, 'black_death/Death/Spiritual Healing/08 - Killing Spree.mp3', 8),
(50, 'Low Life', '323', 5, 'black_death/Death/Spiritual Healing/06 - Low Life.mp3', 6),
(51, 'Living Monstrosity', '308', 5, 'black_death/Death/Spiritual Healing/01 - Living Monstrosity.mp3', 1),
(52, 'Altering the Future', '327', 5, 'black_death/Death/Spiritual Healing/02 - Altering the Future.mp3', 2),
(53, 'Empty Words', '373', 6, 'black_death/Death/Symbolic/03 - Empty Words.mp3', 3),
(54, 'Perennial Quest', '401', 6, 'black_death/Death/Symbolic/09 - Perennial Quest.mp3', 9),
(55, 'Crystal Mountain', '307', 6, 'black_death/Death/Symbolic/07 - Crystal Mountain.mp3', 7),
(56, '1,000 Eyes', '268', 6, 'black_death/Death/Symbolic/05 - 1,000 Eyes.mp3', 5),
(57, 'Sacred Serenity', '267', 6, 'black_death/Death/Symbolic/04 - Sacred Serenity.mp3', 4),
(58, 'Zero Tolerance', '288', 6, 'black_death/Death/Symbolic/02 - Zero Tolerance.mp3', 2),
(59, 'Misanthrope', '304', 6, 'black_death/Death/Symbolic/08 - Misanthrope.mp3', 8),
(60, 'Without Judgement', '328', 6, 'black_death/Death/Symbolic/06 - Without Judgement.mp3', 6),
(61, 'Symbolic', '342', 6, 'black_death/Death/Symbolic/01 - Symbolic.mp3', 1),
(62, 'Spirit Crusher', '375', 7, 'black_death/Death/The Sound of Perseverance/03 - Spirit Crusher.mp3', 3),
(63, 'Painkiller (Judas Priest)', '363', 7, 'black_death/Death/The Sound of Perseverance/09 - Painkiller (Judas Priest).mp3', 9),
(64, 'To Forgive Is to Suffer', '340', 7, 'black_death/Death/The Sound of Perseverance/07 - To Forgive Is to Suffer.mp3', 7),
(65, 'Flesh and the Power It Holds', '349', 7, 'black_death/Death/The Sound of Perseverance/05 - Flesh and the Power It Holds.mp3', 5),
(66, 'Story to Tell', '394', 7, 'black_death/Death/The Sound of Perseverance/04 - Story to Tell.mp3', 4),
(67, 'Bite the Pain', '269', 7, 'black_death/Death/The Sound of Perseverance/02 - Bite the Pain.mp3', 2),
(68, 'A Moment of Clarity', '339', 7, 'black_death/Death/The Sound of Perseverance/08 - A Moment of Clarity.mp3', 8),
(69, 'Scavenger of Human Sorrow', '385', 7, 'black_death/Death/The Sound of Perseverance/01 - Scavenger of Human Sorrow.mp3', 1),
(70, 'Voice of the Soul', '222', 7, 'black_death/Death/The Sound of Perseverance/06 - Voice of the Soul.mp3', 6),
(71, 'The Legacy', '416', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/10 - The Legacy.mp3', 10),
(72, 'These Colours Don\'t Run', '392', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/02 - These Colours Don\'t Run.mp3', 2),
(73, 'Out of the Shadows', '336', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/06 - Out of the Shadows.mp3', 6),
(74, 'Different World', '258', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/01 - Different World.mp3', 1),
(75, 'For the Greater Good of God', '421', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/08 - For the Greater Good of God.mp3', 8),
(76, 'The Reincarnation of Benjamin Breeg', '359', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/07 - The Reincarnation of Benjamin Breeg.mp3', 7),
(77, 'Lord of Light', '403', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/09 - Lord of Light.mp3', 9),
(78, 'Brighter Than a Thousand Suns', '420', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/03 - Brighter Than a Thousand Suns.mp3', 3),
(79, 'The Longest Day', '392', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/05 - The Longest Day.mp3', 5),
(80, 'The Pilgrim', '307', 8, 'hard_heavy/Iron Maiden/A Matter of Life and Death/04 - The Pilgrim.mp3', 4),
(81, 'The Mercenary', '282', 9, 'hard_heavy/Iron Maiden/Brave New World/05 - The Mercenary.mp3', 5),
(82, 'Blood Brothers', '365', 9, 'hard_heavy/Iron Maiden/Brave New World/04 - Blood Brothers.mp3', 4),
(83, 'Brave New World', '378', 9, 'hard_heavy/Iron Maiden/Brave New World/03 - Brave New World.mp3', 3),
(84, 'Out of the Silent Planet', '376', 9, 'hard_heavy/Iron Maiden/Brave New World/09 - Out of the Silent Planet.mp3', 9),
(85, 'The Fallen Angel', '240', 9, 'hard_heavy/Iron Maiden/Brave New World/07 - The Fallen Angel.mp3', 7),
(86, 'The Nomad', '406', 9, 'hard_heavy/Iron Maiden/Brave New World/08 - The Nomad.mp3', 8),
(87, 'Dream of Mirrors', '427', 9, 'hard_heavy/Iron Maiden/Brave New World/06 - Dream of Mirrors.mp3', 6),
(88, 'The Wicker Man', '275', 9, 'hard_heavy/Iron Maiden/Brave New World/01 - The Wicker Man.mp3', 1),
(89, 'Ghost of the Navigator', '373', 9, 'hard_heavy/Iron Maiden/Brave New World/02 - Ghost of the Navigator.mp3', 2),
(90, 'The Thin Line Between Love & Hate', '404', 9, 'hard_heavy/Iron Maiden/Brave New World/10 - The Thin Line Between Love & Hate.mp3', 10),
(91, 'Journeyman', '422', 10, 'hard_heavy/Iron Maiden/Dance of Death/11 - Journeyman.mp3', 11),
(92, 'Dance of Death', '407', 10, 'hard_heavy/Iron Maiden/Dance of Death/05 - Dance of Death.mp3', 5),
(93, 'Montsegur', '350', 10, 'hard_heavy/Iron Maiden/Dance of Death/04 - Montsegur.mp3', 4),
(94, 'Face in the Sand', '391', 10, 'hard_heavy/Iron Maiden/Dance of Death/09 - Face in the Sand.mp3', 9),
(95, 'No More Lies', '368', 10, 'hard_heavy/Iron Maiden/Dance of Death/03 - No More Lies.mp3', 3),
(96, 'New Frontier', '304', 10, 'hard_heavy/Iron Maiden/Dance of Death/07 - New Frontier.mp3', 7),
(97, 'Paschendale', '363', 10, 'hard_heavy/Iron Maiden/Dance of Death/08 - Paschendale.mp3', 8),
(98, 'Gates of Tomorrow', '312', 10, 'hard_heavy/Iron Maiden/Dance of Death/06 - Gates of Tomorrow.mp3', 6),
(99, 'Wildest Dreams', '232', 10, 'hard_heavy/Iron Maiden/Dance of Death/01 - Wildest Dreams.mp3', 1),
(100, 'Rainmaker', '228', 10, 'hard_heavy/Iron Maiden/Dance of Death/02 - Rainmaker.mp3', 2),
(101, 'Age of Innocence', '370', 10, 'hard_heavy/Iron Maiden/Dance of Death/10 - Age of Innocence.mp3', 10),
(102, 'Afraid to Shoot Strangers', '416', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/03 - Afraid to Shoot Strangers.mp3', 3),
(103, 'The Apparition', '234', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/09 - The Apparition.mp3', 9),
(104, 'The Fugitive', '294', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/07 - The Fugitive.mp3', 7),
(105, 'Weekend Warrior', '339', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/11 - Weekend Warrior.mp3', 11),
(106, 'Fear of the Dark', '429', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/12 - Fear of the Dark.mp3', 12),
(107, 'Fear Is the Key', '335', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/04 - Fear Is the Key.mp3', 4),
(108, 'Childhood\'s End', '280', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/05 - Childhood\'s End.mp3', 5),
(109, 'From Here to Eternity', '218', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/02 - From Here to Eternity.mp3', 2),
(110, 'Judas Be My Guide', '188', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/10 - Judas Be My Guide.mp3', 10),
(111, 'Chains of Misery', '217', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/08 - Chains of Misery.mp3', 8),
(112, 'Wasting Love', '350', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/06 - Wasting Love.mp3', 6),
(113, 'Be Quick or Be Dead', '204', 11, 'hard_heavy/Iron Maiden/Fear of the Dark/01 - Be Quick or Be Dead.mp3', 1),
(114, 'Running Free', '196', 12, 'hard_heavy/Iron Maiden/Iron Maiden/03 - Running Free.mp3', 3),
(115, 'Charlotte the Harlot', '253', 12, 'hard_heavy/Iron Maiden/Iron Maiden/07 - Charlotte the Harlot.mp3', 7),
(116, 'Phantom of the Opera', '400', 12, 'hard_heavy/Iron Maiden/Iron Maiden/04 - Phantom of the Opera.mp3', 4),
(117, 'Transylvania', '245', 12, 'hard_heavy/Iron Maiden/Iron Maiden/05 - Transylvania.mp3', 5),
(118, 'Remember Tomorrow', '327', 12, 'hard_heavy/Iron Maiden/Iron Maiden/02 - Remember Tomorrow.mp3', 2),
(119, 'Iron Maiden', '215', 12, 'hard_heavy/Iron Maiden/Iron Maiden/08 - Iron Maiden.mp3', 8),
(120, 'Prowler', '234', 12, 'hard_heavy/Iron Maiden/Iron Maiden/01 - Prowler.mp3', 1),
(121, 'Strange World', '345', 12, 'hard_heavy/Iron Maiden/Iron Maiden/06 - Strange World.mp3', 6),
(122, 'Genghis Khan', '189', 13, 'hard_heavy/Iron Maiden/Killers/05 - Genghis Khan.mp3', 5),
(123, 'Another Life', '203', 13, 'hard_heavy/Iron Maiden/Killers/04 - Another Life.mp3', 4),
(124, 'Killers', '301', 13, 'hard_heavy/Iron Maiden/Killers/07 - Killers.mp3', 7),
(125, 'Murders in the Rue Morgue', '259', 13, 'hard_heavy/Iron Maiden/Killers/03 - Murders in the Rue Morgue.mp3', 3),
(126, 'Purgatory', '200', 13, 'hard_heavy/Iron Maiden/Killers/09 - Purgatory.mp3', 9),
(127, 'The Ides of March', '106', 13, 'hard_heavy/Iron Maiden/Killers/01 - The Ides of March.mp3', 1),
(128, 'Innocent Exile', '234', 13, 'hard_heavy/Iron Maiden/Killers/06 - Innocent Exile.mp3', 6),
(129, 'Prodigal Son', '360', 13, 'hard_heavy/Iron Maiden/Killers/08 - Prodigal Son.mp3', 8),
(130, 'Drifter', '287', 13, 'hard_heavy/Iron Maiden/Killers/10 - Drifter.mp3', 10),
(131, 'Wrathchild', '175', 13, 'hard_heavy/Iron Maiden/Killers/02 - Wrathchild.mp3', 2),
(132, 'Losfer Words (Big \'orra)', '255', 14, 'hard_heavy/Iron Maiden/Live After Death/CD3/01 - Losfer Words (Big \'orra).mp3', 1),
(133, 'Hallowed Be Thy Name', '403', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/09 - Hallowed Be Thy Name.mp3', 9),
(134, 'Sanctuary', '280', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/13 - Sanctuary.mp3', 13),
(135, 'The Trooper', '252', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/03 - The Trooper.mp3', 3),
(136, 'Running Free', '420', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/12 - Running Free.mp3', 12),
(137, 'Children of the Damned', '273', 14, 'hard_heavy/Iron Maiden/Live After Death/CD2/03 - Children of the Damned.mp3', 3),
(138, 'Iron Maiden', '261', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/10 - Iron Maiden.mp3', 10),
(139, 'Die With Your Boots On', '320', 14, 'hard_heavy/Iron Maiden/Live After Death/CD2/04 - Die With Your Boots On.mp3', 4),
(140, 'Phantom of the Opera', '418', 14, 'hard_heavy/Iron Maiden/Live After Death/CD2/05 - Phantom of the Opera.mp3', 5),
(141, 'Intro: Churchill\'s Speech / Aces High', '330', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/01 - Intro_ Churchill\'s Speech _ Aces High.mp3', 1),
(142, 'Powerslave', '366', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/07 - Powerslave.mp3', 7),
(143, '22 Acacia Avenue', '372', 14, 'hard_heavy/Iron Maiden/Live After Death/CD2/02 - 22 Acacia Avenue.mp3', 2),
(144, 'Revelations', '389', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/04 - Revelations.mp3', 4),
(145, 'Flight of Icarus', '211', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/05 - Flight of Icarus.mp3', 5),
(146, 'Run to the Hills', '241', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/11 - Run to the Hills.mp3', 11),
(147, 'Wrathchild', '185', 14, 'hard_heavy/Iron Maiden/Live After Death/CD2/01 - Wrathchild.mp3', 1),
(148, '2 Minutes to Midnight', '353', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/02 - 2 Minutes to Midnight.mp3', 2),
(149, 'Murders in the Rue Morgue', '272', 14, 'hard_heavy/Iron Maiden/Live After Death/CD3/02 - Murders in the Rue Morgue.mp3', 2),
(150, 'Rime of the Ancient Mariner', '389', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/06 - Rime of the Ancient Mariner.mp3', 6),
(151, 'The Number of the Beast', '288', 14, 'hard_heavy/Iron Maiden/Live After Death/CD1/08 - The Number of the Beast.mp3', 8),
(152, 'Holy Smoke', '229', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/02 - Holy Smoke.mp3', 2),
(153, 'Mother Russia', '330', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/10 - Mother Russia.mp3', 10),
(154, 'Hooks in You', '248', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/08 - Hooks in You.mp3', 8),
(155, 'Tailgunner', '255', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/01 - Tailgunner.mp3', 1),
(156, 'The Assassin', '275', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/06 - The Assassin.mp3', 6),
(157, 'No Prayer for the Dying', '263', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/03 - No Prayer for the Dying.mp3', 3),
(158, 'Bring Your Daughter... to the Slaughter', '285', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/09 - Bring Your Daughter... to the Slaughter.mp3', 9),
(159, 'Run Silent Run Deep', '275', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/07 - Run Silent Run Deep.mp3', 7),
(160, 'Fates Warning', '252', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/05 - Fates Warning.mp3', 5),
(161, 'Public Enema Number One', '253', 15, 'hard_heavy/Iron Maiden/No Prayer for the Dying/04 - Public Enema Number One.mp3', 4),
(162, 'Die With Your Boots On', '328', 16, 'hard_heavy/Iron Maiden/Piece of Mind/04 - Die With Your Boots On.mp3', 4),
(163, 'The Trooper', '251', 16, 'hard_heavy/Iron Maiden/Piece of Mind/05 - The Trooper.mp3', 5),
(164, 'To Tame a Land', '414', 16, 'hard_heavy/Iron Maiden/Piece of Mind/09 - To Tame a Land.mp3', 9),
(165, 'Flight of Icarus', '231', 16, 'hard_heavy/Iron Maiden/Piece of Mind/03 - Flight of Icarus.mp3', 3),
(166, 'Quest for Fire', '221', 16, 'hard_heavy/Iron Maiden/Piece of Mind/07 - Quest for Fire.mp3', 7),
(167, 'Sun and Steel', '206', 16, 'hard_heavy/Iron Maiden/Piece of Mind/08 - Sun and Steel.mp3', 8),
(168, 'Where Eagles Dare', '370', 16, 'hard_heavy/Iron Maiden/Piece of Mind/01 - Where Eagles Dare.mp3', 1),
(169, 'Still Life', '293', 16, 'hard_heavy/Iron Maiden/Piece of Mind/06 - Still Life.mp3', 6),
(170, 'Revelations', '408', 16, 'hard_heavy/Iron Maiden/Piece of Mind/02 - Revelations.mp3', 2),
(171, 'The Duellists', '366', 17, 'hard_heavy/Iron Maiden/Powerslave/05 - The Duellists.mp3', 5),
(172, 'Flash of the Blade', '242', 17, 'hard_heavy/Iron Maiden/Powerslave/04 - Flash of the Blade.mp3', 4),
(173, 'Losfer Words (Big \'orra)', '252', 17, 'hard_heavy/Iron Maiden/Powerslave/03 - Losfer Words (Big \'orra).mp3', 3),
(174, 'Powerslave', '389', 17, 'hard_heavy/Iron Maiden/Powerslave/07 - Powerslave.mp3', 7),
(175, 'Rime of the Ancient Mariner', '435', 17, 'hard_heavy/Iron Maiden/Powerslave/08 - Rime of the Ancient Mariner.mp3', 8),
(176, 'Back in the Village', '320', 17, 'hard_heavy/Iron Maiden/Powerslave/06 - Back in the Village.mp3', 6),
(177, 'Aces High', '269', 17, 'hard_heavy/Iron Maiden/Powerslave/01 - Aces High.mp3', 1),
(178, '2 Minutes to Midnight', '359', 17, 'hard_heavy/Iron Maiden/Powerslave/02 - 2 Minutes to Midnight.mp3', 2),
(179, 'Can I Play With Madness?', '211', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/03 - Can I Play With Madness.mp3', 3),
(180, 'The Clairvoyant', '267', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/07 - The Clairvoyant.mp3', 7),
(181, 'Seventh Son of a Seventh Son', '427', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/05 - Seventh Son of a Seventh Son.mp3', 5),
(182, 'The Evil That Men Do', '274', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/04 - The Evil That Men Do.mp3', 4),
(183, 'Infinite Dreams', '369', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/02 - Infinite Dreams.mp3', 2),
(184, 'Only the Good Die Young', '282', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/08 - Only the Good Die Young.mp3', 8),
(185, 'The Prophecy', '305', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/06 - The Prophecy.mp3', 6),
(186, 'Moonchild', '340', 18, 'hard_heavy/Iron Maiden/Seventh Son of a Seventh Son/01 - Moonchild.mp3', 1),
(187, 'The Number of the Beast', '292', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/07 - The Number of the Beast.mp3', 7),
(188, 'Iron Maiden - Live', '261', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/15 - Iron Maiden - Live.mp3', 15),
(189, 'The Trooper', '252', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/04 - The Trooper.mp3', 4),
(190, 'Wasted Years', '307', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/05 - Wasted Years.mp3', 5),
(191, 'Wrathchild - Live', '185', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/11 - Wrathchild - Live.mp3', 11),
(192, 'Hallowed Be Thy Name', '354', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/14 - Hallowed Be Thy Name.mp3', 14),
(193, 'Aces High - Live', '278', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/02 - Aces High - Live.mp3', 2),
(194, 'Children of the Damned', '276', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/06 - Children of the Damned.mp3', 6),
(195, 'Run to the Huills', '234', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/08 - Run to the Huills.mp3', 8),
(196, '2 Minutes to Midnight', '361', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/03 - 2 Minutes to Midnight.mp3', 3),
(197, 'Powerslave', '390', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/13 - Powerslave.mp3', 13),
(198, 'Phantom of the Opera - Live', '372', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/09 - Phantom of the Opera - Live.mp3', 9),
(199, 'Can I Play With Madness', '212', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/12 - Can I Play With Madness.mp3', 12),
(200, 'The Evil That Men Do', '275', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/10 - The Evil That Men Do.mp3', 10),
(201, 'Churchill\'s Speech', '49', 19, 'hard_heavy/Iron Maiden/Somewhere Back in Time/01 - Churchill\'s Speech.mp3', 1),
(202, 'Stranger in a Strange Land', '344', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/06 - Stranger in a Strange Land.mp3', 6),
(203, 'Caught Somewhere in Time', '388', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/01 - Caught Somewhere in Time.mp3', 1),
(204, 'Alexander the Great', '402', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/08 - Alexander the Great.mp3', 8),
(205, 'Wasted Years', '307', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/02 - Wasted Years.mp3', 2),
(206, 'The Loneliness of the Long Distance Runner', '391', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/05 - The Loneliness of the Long Distance Runner.mp3', 5),
(207, 'Heaven Can Wait', '379', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/04 - Heaven Can Wait.mp3', 4),
(208, 'Deja-Vu', '296', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/07 - Deja-Vu.mp3', 7),
(209, 'Sea of Madness', '342', 20, 'hard_heavy/Iron Maiden/Somewhere in Time/03 - Sea of Madness.mp3', 3),
(210, 'The Book of Souls', '378', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD1/06 - The Book of Souls.mp3', 6),
(211, 'If Eternity Should Fail', '391', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD1/01 - If Eternity Should Fail.mp3', 1),
(212, 'Shadows of the Valley', '430', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD2/02 - Shadows of the Valley.mp3', 2),
(213, 'The Man of Sorrows', '387', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD2/04 - The Man of Sorrows.mp3', 4),
(214, 'Speed of Light', '301', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD1/02 - Speed of Light.mp3', 2),
(215, 'The Red and the Black', '391', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD1/04 - The Red and the Black.mp3', 4),
(216, 'When the River Runs Deep', '352', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD1/05 - When the River Runs Deep.mp3', 5),
(217, 'Empire of the Clouds', '373', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD2/05 - Empire of the Clouds.mp3', 5),
(218, 'Death Or Glory', '312', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD2/01 - Death Or Glory.mp3', 1),
(219, 'The Great Unknown', '371', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD1/03 - The Great Unknown.mp3', 3),
(220, 'Tears of a Clown', '298', 21, 'hard_heavy/Iron Maiden/The Book of Souls/CD2/03 - Tears of a Clown.mp3', 3),
(221, 'Satellite 15... The Final Frontier', '387', 22, 'hard_heavy/Iron Maiden/The Final Frontier/01 - Satellite 15... The Final Frontier.mp3', 1),
(222, 'Isle of Avalon', '356', 22, 'hard_heavy/Iron Maiden/The Final Frontier/06 - Isle of Avalon.mp3', 6),
(223, 'The Talisman', '354', 22, 'hard_heavy/Iron Maiden/The Final Frontier/08 - The Talisman.mp3', 8),
(224, 'When the Wild Wind Blows', '379', 22, 'hard_heavy/Iron Maiden/The Final Frontier/10 - When the Wild Wind Blows.mp3', 10),
(225, 'El Dorado', '343', 22, 'hard_heavy/Iron Maiden/The Final Frontier/02 - El Dorado.mp3', 2),
(226, 'The Alchemist', '269', 22, 'hard_heavy/Iron Maiden/The Final Frontier/05 - The Alchemist.mp3', 5),
(227, 'Coming Home', '352', 22, 'hard_heavy/Iron Maiden/The Final Frontier/04 - Coming Home.mp3', 4),
(228, 'Starblind', '413', 22, 'hard_heavy/Iron Maiden/The Final Frontier/07 - Starblind.mp3', 7),
(229, 'The Man Who Would Be King', '344', 22, 'hard_heavy/Iron Maiden/The Final Frontier/09 - The Man Who Would Be King.mp3', 9),
(230, 'Mother of Mercy', '320', 22, 'hard_heavy/Iron Maiden/The Final Frontier/03 - Mother of Mercy.mp3', 3),
(231, '22 Acacia Avenue', '358', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/04 - 22 Acacia Avenue.mp3', 4),
(232, 'The Number of the Beast', '291', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/05 - The Number of the Beast.mp3', 5),
(233, 'Gangland', '229', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/07 - Gangland.mp3', 7),
(234, 'The Prisoner', '351', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/03 - The Prisoner.mp3', 3),
(235, 'Invaders', '204', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/01 - Invaders.mp3', 1),
(236, 'Run to the Hills', '234', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/06 - Run to the Hills.mp3', 6),
(237, 'Hallowed Be Thy Name', '353', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/08 - Hallowed Be Thy Name.mp3', 8),
(238, 'Children of the Damned', '275', 23, 'hard_heavy/Iron Maiden/The Number of the Beast/02 - Children of the Damned.mp3', 2),
(239, 'The Edge of Darkness', '372', 24, 'hard_heavy/Iron Maiden/The X Factor/09 - The Edge of Darkness.mp3', 9),
(240, 'Man on the Edge', '253', 24, 'hard_heavy/Iron Maiden/The X Factor/03 - Man on the Edge.mp3', 3),
(241, 'Judgement of Heaven', '312', 24, 'hard_heavy/Iron Maiden/The X Factor/07 - Judgement of Heaven.mp3', 7),
(242, 'The Unbeliever', '425', 24, 'hard_heavy/Iron Maiden/The X Factor/11 - The Unbeliever.mp3', 11),
(243, 'Look for the Truth', '310', 24, 'hard_heavy/Iron Maiden/The X Factor/05 - Look for the Truth.mp3', 5),
(244, 'Fortunes of War', '421', 24, 'hard_heavy/Iron Maiden/The X Factor/04 - Fortunes of War.mp3', 4),
(245, 'Lord of the Flies', '303', 24, 'hard_heavy/Iron Maiden/The X Factor/02 - Lord of the Flies.mp3', 2),
(246, '2 A.M.', '337', 24, 'hard_heavy/Iron Maiden/The X Factor/10 - 2 A.M..mp3', 10),
(247, 'Blood on the World\'s Hands', '357', 24, 'hard_heavy/Iron Maiden/The X Factor/08 - Blood on the World\'s Hands.mp3', 8),
(248, 'The Aftermath', '380', 24, 'hard_heavy/Iron Maiden/The X Factor/06 - The Aftermath.mp3', 6),
(249, 'Sign of the Cross', '354', 24, 'hard_heavy/Iron Maiden/The X Factor/01 - Sign of the Cross.mp3', 1),
(250, 'When Two Worlds Collide', '377', 25, 'hard_heavy/Iron Maiden/Virtual XI/05 - When Two Worlds Collide.mp3', 5),
(251, 'The Clansman', '399', 25, 'hard_heavy/Iron Maiden/Virtual XI/04 - The Clansman.mp3', 4),
(252, 'Don\'t Look to the Eyes of a Stranger', '425', 25, 'hard_heavy/Iron Maiden/Virtual XI/07 - Don\'t Look to the Eyes of a Stranger.mp3', 7),
(253, 'Lightning Strikes Twice', '290', 25, 'hard_heavy/Iron Maiden/Virtual XI/03 - Lightning Strikes Twice.mp3', 3),
(254, 'Futureal', '175', 25, 'hard_heavy/Iron Maiden/Virtual XI/01 - Futureal.mp3', 1),
(255, 'The Educated Fool', '378', 25, 'hard_heavy/Iron Maiden/Virtual XI/06 - The Educated Fool.mp3', 6),
(256, 'Como Estais Amigos', '330', 25, 'hard_heavy/Iron Maiden/Virtual XI/08 - Como Estais Amigos.mp3', 8),
(257, 'The Angel and the Gambler', '373', 25, 'hard_heavy/Iron Maiden/Virtual XI/02 - The Angel and the Gambler.mp3', 2),
(258, 'Seasons In The Abyss (Alternative Mix)', '361', 26, 'thrash/Slayer/B-Sides & Rarities/05. Slayer - Seasons In The Abyss (Alternative Mix).mp3', 5),
(259, 'In-A-Gadda-Da-Vida (Iron Butterfly Cover)', '199', 26, 'thrash/Slayer/B-Sides & Rarities/04. Slayer - In-A-Gadda-Da-Vida (Iron Butterfly Cover).mp3', 4),
(260, 'Unguarded Instinct', '222', 26, 'thrash/Slayer/B-Sides & Rarities/11. Slayer - Unguarded Instinct.mp3', 11),
(261, 'Sick Boy (GBH Cover)', '134', 26, 'thrash/Slayer/B-Sides & Rarities/07. Slayer - Sick Boy (GBH Cover).mp3', 7),
(262, 'Addict', '221', 26, 'thrash/Slayer/B-Sides & Rarities/15. Slayer - Addict.mp3', 15),
(263, 'Disorder (feat. Ice-T)', '299', 26, 'thrash/Slayer/B-Sides & Rarities/06. Slayer - Disorder (feat. Ice-T).mp3', 6),
(264, 'Final Six', '250', 26, 'thrash/Slayer/B-Sides & Rarities/20. Slayer - Final Six.mp3', 20),
(265, 'Memories of Tomorrow (Suicidal Tendencies Cov', '55', 26, 'thrash/Slayer/B-Sides & Rarities/08. Slayer - Memories of Tomorrow (Suicidal Tendencies Cover).mp3', 8),
(266, 'Atrocity Vendor', '169', 26, 'thrash/Slayer/B-Sides & Rarities/21. Slayer - Atrocity Vendor.mp3', 21),
(267, 'Scarstruck', '209', 26, 'thrash/Slayer/B-Sides & Rarities/14. Slayer - Scarstruck.mp3', 14),
(268, 'Aggressive Perfector (Fast Version)', '150', 26, 'thrash/Slayer/B-Sides & Rarities/02. Slayer - Aggressive Perfector (Fast Version).mp3', 2),
(269, 'Wicked', '353', 26, 'thrash/Slayer/B-Sides & Rarities/12. Slayer - Wicked.mp3', 12),
(270, 'Born to Be Wild (Steppenwolf Cover)', '184', 26, 'thrash/Slayer/B-Sides & Rarities/16. Slayer - Born to Be Wild (Steppenwolf Cover).mp3', 16),
(271, 'Black Serenade (Alternate Version)', '178', 26, 'thrash/Slayer/B-Sides & Rarities/19. Slayer - Black Serenade (Alternate Version).mp3', 19),
(272, 'Hand of Doom (Black Sabbath Cover)', '315', 26, 'thrash/Slayer/B-Sides & Rarities/13. Slayer - Hand of Doom (Black Sabbath Cover).mp3', 13),
(273, 'Criminally Insane (Remix)', '198', 26, 'thrash/Slayer/B-Sides & Rarities/03. Slayer - Criminally Insane (Remix).mp3', 3),
(274, 'No Remorse (I Wanna Die) (feat. Atari Teenage', '256', 26, 'thrash/Slayer/B-Sides & Rarities/09. Slayer - No Remorse (I Wanna Die) (feat. Atari Teenage Riot).mp3', 9),
(275, 'Piece By Piece (Studio Rough Mix/Outtake)', '133', 26, 'thrash/Slayer/B-Sides & Rarities/01. Slayer - Piece By Piece (Studio Rough Mix,Outtake).mp3', 1),
(276, 'Human Disease', '266', 26, 'thrash/Slayer/B-Sides & Rarities/10. Slayer - Human Disease.mp3', 10),
(277, 'Jihad (Radio Version)', '212', 26, 'thrash/Slayer/B-Sides & Rarities/18. Slayer - Jihad (Radio Version).mp3', 18),
(278, 'Cult (Radio Version)', '280', 26, 'thrash/Slayer/B-Sides & Rarities/17. Slayer - Cult (Radio Version).mp3', 17),
(279, 'Eyes of the Insane', '201', 27, 'thrash/Slayer/Christ Illusion/04 - Eyes of the Insane.mp3', 4),
(280, 'Jihad', '209', 27, 'thrash/Slayer/Christ Illusion/05 - Jihad.mp3', 5),
(281, 'Catatonic', '292', 27, 'thrash/Slayer/Christ Illusion/07 - Catatonic.mp3', 7),
(282, 'Skeleton Christ', '261', 27, 'thrash/Slayer/Christ Illusion/03 - Skeleton Christ.mp3', 3),
(283, 'Cult', '278', 27, 'thrash/Slayer/Christ Illusion/09 - Cult.mp3', 9),
(284, 'Flesh Storm', '251', 27, 'thrash/Slayer/Christ Illusion/01 - Flesh Storm.mp3', 1),
(285, 'Consfearacy', '184', 27, 'thrash/Slayer/Christ Illusion/06 - Consfearacy.mp3', 6),
(286, 'Black Serenade', '194', 27, 'thrash/Slayer/Christ Illusion/08 - Black Serenade.mp3', 8),
(287, 'Supremist', '230', 27, 'thrash/Slayer/Christ Illusion/10 - Supremist.mp3', 10),
(288, 'Catalyst', '186', 27, 'thrash/Slayer/Christ Illusion/02 - Catalyst.mp3', 2),
(289, 'Aggressive Perfector', '151', 28, 'thrash/Slayer/Criminally Insane/02 - Aggressive Perfector.mp3', 2),
(290, 'Postmortem / Criminally Insane (Remix)', '405', 28, 'thrash/Slayer/Criminally Insane/01 - Postmortem - Criminally Insane (Remix).mp3', 1),
(291, 'Jesus Saves', '252', 29, 'thrash/Slayer/Decade of Aggression/CD1/07 - Jesus Saves.mp3', 7),
(292, 'At Dawn They Sleep (Bonus)', '340', 29, 'thrash/Slayer/Decade of Aggression/CD2/08 - At Dawn They Sleep (Bonus).mp3', 8),
(293, 'Raining Blood', '152', 29, 'thrash/Slayer/Decade of Aggression/CD1/05 - Raining Blood.mp3', 5),
(294, 'Hell Awaits', '333', 29, 'thrash/Slayer/Decade of Aggression/CD1/01 - Hell Awaits.mp3', 1),
(295, 'Postmortem', '244', 29, 'thrash/Slayer/Decade of Aggression/CD2/09 - Postmortem.mp3', 9),
(296, 'Blood Red', '192', 29, 'thrash/Slayer/Decade of Aggression/CD2/02 - Blood Red.mp3', 2),
(297, 'Mandatory Suicide', '241', 29, 'thrash/Slayer/Decade of Aggression/CD1/10 - Mandatory Suicide.mp3', 10),
(298, 'Chemical Warfare', '325', 29, 'thrash/Slayer/Decade of Aggression/CD2/12 - Chemical Warfare.mp3', 12),
(299, 'South of Heaven', '265', 29, 'thrash/Slayer/Decade of Aggression/CD1/04 - South of Heaven.mp3', 4),
(300, 'War Ensemble', '293', 29, 'thrash/Slayer/Decade of Aggression/CD1/03 - War Ensemble.mp3', 3),
(301, 'Die by the Sword', '197', 29, 'thrash/Slayer/Decade of Aggression/CD2/03 - Die by the Sword.mp3', 3),
(302, 'Spirit in Black', '262', 29, 'thrash/Slayer/Decade of Aggression/CD2/10 - Spirit in Black.mp3', 10),
(303, 'Altar of Sacrifice', '168', 29, 'thrash/Slayer/Decade of Aggression/CD1/06 - Altar of Sacrifice.mp3', 6),
(304, 'Captor of Sin', '204', 29, 'thrash/Slayer/Decade of Aggression/CD2/05 - Captor of Sin.mp3', 5),
(305, 'Born of Fire', '179', 29, 'thrash/Slayer/Decade of Aggression/CD2/06 - Born of Fire.mp3', 6),
(306, 'Seasons in the Abyss', '387', 29, 'thrash/Slayer/Decade of Aggression/CD1/09 - Seasons in the Abyss.mp3', 9),
(307, 'Angel of Death', '310', 29, 'thrash/Slayer/Decade of Aggression/CD1/11 - Angel of Death.mp3', 11),
(308, 'Black Magic', '215', 29, 'thrash/Slayer/Decade of Aggression/CD2/04 - Black Magic.mp3', 4),
(309, 'Expendable Youth', '268', 29, 'thrash/Slayer/Decade of Aggression/CD2/11 - Expendable Youth.mp3', 11),
(310, 'Hallowed Point', '218', 29, 'thrash/Slayer/Decade of Aggression/CD2/01 - Hallowed Point.mp3', 1),
(311, 'The Antichrist', '234', 29, 'thrash/Slayer/Decade of Aggression/CD1/02 - The Antichrist.mp3', 2),
(312, 'Dead Skin Mask', '298', 29, 'thrash/Slayer/Decade of Aggression/CD1/08 - Dead Skin Mask.mp3', 8),
(313, 'Skeletons of Society (Bonus)', '291', 29, 'thrash/Slayer/Decade of Aggression/CD2/07 - Skeletons of Society (Bonus).mp3', 7),
(314, 'Love to Hate', '185', 30, 'thrash/Slayer/Diabolus in Musica/06 - Love to Hate.mp3', 6),
(315, 'Unguarded Instinct (Bonus Track for Japan)', '222', 30, 'thrash/Slayer/Diabolus in Musica/08 - Unguarded Instinct (Bonus Track for Japan).mp3', 8),
(316, 'Death\'s Head', '209', 30, 'thrash/Slayer/Diabolus in Musica/02 - Death\'s Head.mp3', 2),
(317, 'Perversions of Pain', '210', 30, 'thrash/Slayer/Diabolus in Musica/05 - Perversions of Pain.mp3', 5),
(318, 'Overt Enemy', '281', 30, 'thrash/Slayer/Diabolus in Musica/04 - Overt Enemy.mp3', 4),
(319, 'Screaming from the Sky', '192', 30, 'thrash/Slayer/Diabolus in Musica/11 - Screaming from the Sky.mp3', 11),
(320, 'Desire', '258', 30, 'thrash/Slayer/Diabolus in Musica/07 - Desire.mp3', 7),
(321, 'Bitter Peace', '272', 30, 'thrash/Slayer/Diabolus in Musica/01 - Bitter Peace.mp3', 1),
(322, 'Scrum', '138', 30, 'thrash/Slayer/Diabolus in Musica/10 - Scrum.mp3', 10),
(323, 'Wicked (Bonus Track)', '351', 30, 'thrash/Slayer/Diabolus in Musica/12 - Wicked (Bonus Track).mp3', 12),
(324, 'In the Name of God', '218', 30, 'thrash/Slayer/Diabolus in Musica/09 - In the Name of God.mp3', 9),
(325, 'Point', '253', 30, 'thrash/Slayer/Diabolus in Musica/13 - Point.mp3', 13),
(326, 'Stain of Mind', '205', 30, 'thrash/Slayer/Diabolus in Musica/03 - Stain of Mind.mp3', 3),
(327, 'SS-3', '246', 31, 'thrash/Slayer/Divine Intervention/07 - SS-3.mp3', 7),
(328, 'Fictional Reality', '217', 31, 'thrash/Slayer/Divine Intervention/03 - Fictional Reality.mp3', 3),
(329, '213', '292', 31, 'thrash/Slayer/Divine Intervention/09 - 213.mp3', 9),
(330, 'Dittohead', '150', 31, 'thrash/Slayer/Divine Intervention/04 - Dittohead.mp3', 4),
(331, 'Divine Intervention', '333', 31, 'thrash/Slayer/Divine Intervention/05 - Divine Intervention.mp3', 5),
(332, 'Mind Control', '184', 31, 'thrash/Slayer/Divine Intervention/10 - Mind Control.mp3', 10),
(333, 'Sex. Murder. Art.', '110', 31, 'thrash/Slayer/Divine Intervention/02 - Sex. Murder. Art..mp3', 2),
(334, 'Killing Fields', '237', 31, 'thrash/Slayer/Divine Intervention/01 - Killing Fields.mp3', 1),
(335, 'Circle of Beliefs', '269', 31, 'thrash/Slayer/Divine Intervention/06 - Circle of Beliefs.mp3', 6),
(336, 'Serenity in Murder', '156', 31, 'thrash/Slayer/Divine Intervention/08 - Serenity in Murder.mp3', 8),
(337, 'War Zone', '164', 32, 'thrash/Slayer/God Hates Us All/11 - War Zone.mp3', 11),
(338, 'New Faith', '185', 32, 'thrash/Slayer/God Hates Us All/04 - New Faith.mp3', 4),
(339, 'Cast Down', '206', 32, 'thrash/Slayer/God Hates Us All/05 - Cast Down.mp3', 5),
(340, 'Addict', '221', 32, 'thrash/Slayer/God Hates Us All/15 - Addict.mp3', 15),
(341, 'Exile', '235', 32, 'thrash/Slayer/God Hates Us All/07 - Exile.mp3', 7),
(342, 'Seven Faces', '221', 32, 'thrash/Slayer/God Hates Us All/08 - Seven Faces.mp3', 8),
(343, 'Threshold', '149', 32, 'thrash/Slayer/God Hates Us All/06 - Threshold.mp3', 6),
(344, 'Disciple', '215', 32, 'thrash/Slayer/God Hates Us All/02 - Disciple.mp3', 2),
(345, 'Payback', '183', 32, 'thrash/Slayer/God Hates Us All/14 - Payback.mp3', 14),
(346, 'Scarstruck', '209', 32, 'thrash/Slayer/God Hates Us All/12 - Scarstruck.mp3', 12),
(347, 'God Send Death', '225', 32, 'thrash/Slayer/God Hates Us All/03 - God Send Death.mp3', 3),
(348, 'Here Comes the Pain', '272', 32, 'thrash/Slayer/God Hates Us All/13 - Here Comes the Pain.mp3', 13),
(349, 'Bloodline', '200', 32, 'thrash/Slayer/God Hates Us All/09 - Bloodline.mp3', 9),
(350, 'Darkness of Christ', '90', 32, 'thrash/Slayer/God Hates Us All/01 - Darkness of Christ.mp3', 1),
(351, 'Deviance', '189', 32, 'thrash/Slayer/God Hates Us All/10 - Deviance.mp3', 10),
(352, 'Captor of Sin', '209', 33, 'thrash/Slayer/Haunting the Chapel/02 - Captor of Sin.mp3', 2),
(353, 'Haunting the Chapel', '236', 33, 'thrash/Slayer/Haunting the Chapel/03 - Haunting the Chapel.mp3', 3),
(354, 'Aggressive Perfector', '208', 33, 'thrash/Slayer/Haunting the Chapel/04 - Aggressive Perfector.mp3', 4),
(355, 'Chemical Warfare', '329', 33, 'thrash/Slayer/Haunting the Chapel/01 - Chemical Warfare.mp3', 1),
(356, 'Kill Again', '296', 34, 'thrash/Slayer/Hell Awaits/02 - Kill Again.mp3', 2),
(357, 'Crypts of Eternity', '300', 34, 'thrash/Slayer/Hell Awaits/08 - Crypts of Eternity.mp3', 8),
(358, 'Hell Awaits', '362', 34, 'thrash/Slayer/Hell Awaits/01 - Hell Awaits.mp3', 1),
(359, 'Necrophiliac', '226', 34, 'thrash/Slayer/Hell Awaits/06 - Necrophiliac.mp3', 6),
(360, 'At Dawn They Sleep', '311', 34, 'thrash/Slayer/Hell Awaits/03 - At Dawn They Sleep.mp3', 3),
(361, 'Hardening of the Arteries', '235', 34, 'thrash/Slayer/Hell Awaits/09 - Hardening of the Arteries.mp3', 9),
(362, 'Captor of Sin', '209', 34, 'thrash/Slayer/Hell Awaits/07 - Captor of Sin.mp3', 7),
(363, 'Haunting the Chapel', '236', 34, 'thrash/Slayer/Hell Awaits/04 - Haunting the Chapel.mp3', 4),
(364, 'Praise of Death', '321', 34, 'thrash/Slayer/Hell Awaits/05 - Praise of Death.mp3', 5),
(365, 'Piece by Piece', '122', 35, 'thrash/Slayer/Reign in Blood/02 - Piece by Piece.mp3', 2),
(366, 'Raining Blood', '257', 35, 'thrash/Slayer/Reign in Blood/10 - Raining Blood.mp3', 10),
(367, 'Epidemic', '143', 35, 'thrash/Slayer/Reign in Blood/08 - Epidemic.mp3', 8),
(368, 'Angel of Death', '291', 35, 'thrash/Slayer/Reign in Blood/01 - Angel of Death.mp3', 1),
(369, 'Criminally Insane', '143', 35, 'thrash/Slayer/Reign in Blood/06 - Criminally Insane.mp3', 6),
(370, 'Postmortem', '207', 35, 'thrash/Slayer/Reign in Blood/09 - Postmortem.mp3', 9),
(371, 'Necrophobic', '100', 35, 'thrash/Slayer/Reign in Blood/03 - Necrophobic.mp3', 3),
(372, 'Reborn', '131', 35, 'thrash/Slayer/Reign in Blood/07 - Reborn.mp3', 7),
(373, 'Jesus Saves', '174', 35, 'thrash/Slayer/Reign in Blood/05 - Jesus Saves.mp3', 5),
(374, 'Altar of Sacrifice', '170', 35, 'thrash/Slayer/Reign in Blood/04 - Altar of Sacrifice.mp3', 4),
(375, 'Implode', '229', 36, 'thrash/Slayer/Repentless/08 - Implode.mp3', 8),
(376, 'When the Stillness Comes', '261', 36, 'thrash/Slayer/Repentless/06 - When the Stillness Comes.mp3', 6),
(377, 'Delusions of Saviour', '115', 36, 'thrash/Slayer/Repentless/01 - Delusions of Saviour.mp3', 1),
(378, 'Repentless', '199', 36, 'thrash/Slayer/Repentless/02 - Repentless.mp3', 2),
(379, 'Atrocity Vendor', '174', 36, 'thrash/Slayer/Repentless/10 - Atrocity Vendor.mp3', 10),
(380, 'Pride in Prejudice', '254', 36, 'thrash/Slayer/Repentless/12 - Pride in Prejudice.mp3', 12),
(381, 'You Against You', '260', 36, 'thrash/Slayer/Repentless/11 - You Against You.mp3', 11),
(382, 'Cast the First Stone', '223', 36, 'thrash/Slayer/Repentless/05 - Cast the First Stone.mp3', 5),
(383, 'Vices', '212', 36, 'thrash/Slayer/Repentless/04 - Vices.mp3', 4),
(384, 'Take Control', '193', 36, 'thrash/Slayer/Repentless/03 - Take Control.mp3', 3),
(385, 'Piano Wire', '168', 36, 'thrash/Slayer/Repentless/09 - Piano Wire.mp3', 9),
(386, 'Chasing Death', '224', 36, 'thrash/Slayer/Repentless/07 - Chasing Death.mp3', 7),
(387, 'Born of Fire', '188', 37, 'thrash/Slayer/Seasons in the Abyss/09 - Born of Fire.mp3', 9),
(388, 'Spirit in Black', '247', 37, 'thrash/Slayer/Seasons in the Abyss/03 - Spirit in Black.mp3', 3),
(389, 'Skeletons of Society', '280', 37, 'thrash/Slayer/Seasons in the Abyss/07 - Skeletons of Society.mp3', 7),
(390, 'Expendable Youth', '250', 37, 'thrash/Slayer/Seasons in the Abyss/04 - Expendable Youth.mp3', 4),
(391, 'Dead Skin Mask', '319', 37, 'thrash/Slayer/Seasons in the Abyss/05 - Dead Skin Mask.mp3', 5),
(392, 'Blood Red', '168', 37, 'thrash/Slayer/Seasons in the Abyss/02 - Blood Red.mp3', 2),
(393, 'Seasons in the Abyss', '357', 37, 'thrash/Slayer/Seasons in the Abyss/10 - Seasons in the Abyss.mp3', 10),
(394, 'Temptation', '205', 37, 'thrash/Slayer/Seasons in the Abyss/08 - Temptation.mp3', 8),
(395, 'Hallowed Point', '203', 37, 'thrash/Slayer/Seasons in the Abyss/06 - Hallowed Point.mp3', 6),
(396, 'War Ensemble', '292', 37, 'thrash/Slayer/Seasons in the Abyss/01 - War Ensemble.mp3', 1),
(397, 'At Dawn They Sleep (Live)', '385', 38, 'thrash/Slayer/Serenity in Murder/01 - At Dawn They Sleep (Live).mp3', 1),
(398, 'Special Message', '176', 38, 'thrash/Slayer/Serenity in Murder/06 - Special Message.mp3', 6),
(399, 'Dead Skin Mask (Live)', '321', 38, 'thrash/Slayer/Serenity in Murder/02 - Dead Skin Mask (Live).mp3', 2),
(400, 'Serenity in Murder (Album Version)', '159', 38, 'thrash/Slayer/Serenity in Murder/05 - Serenity in Murder (Album Version).mp3', 5),
(401, 'Dittohead (Live)', '166', 38, 'thrash/Slayer/Serenity in Murder/04 - Dittohead (Live).mp3', 4),
(402, 'Divine Intervention (Live)', '308', 38, 'thrash/Slayer/Serenity in Murder/03 - Divine Intervention (Live).mp3', 3),
(403, 'The Antichrist', '169', 39, 'thrash/Slayer/Show No Mercy/02 - The Antichrist.mp3', 2),
(404, 'Show No Mercy', '186', 39, 'thrash/Slayer/Show No Mercy/10 - Show No Mercy.mp3', 10),
(405, 'The Final Command', '152', 39, 'thrash/Slayer/Show No Mercy/08 - The Final Command.mp3', 8),
(406, 'Evil Has No Boundaries', '189', 39, 'thrash/Slayer/Show No Mercy/01 - Evil Has No Boundaries.mp3', 1),
(407, 'Black Magic', '243', 39, 'thrash/Slayer/Show No Mercy/06 - Black Magic.mp3', 6),
(408, 'Crionics', '209', 39, 'thrash/Slayer/Show No Mercy/09 - Crionics.mp3', 9),
(409, 'Die by the Sword', '216', 39, 'thrash/Slayer/Show No Mercy/03 - Die by the Sword.mp3', 3),
(410, 'Tormentor', '225', 39, 'thrash/Slayer/Show No Mercy/07 - Tormentor.mp3', 7),
(411, 'Chemical Warfare', '362', 39, 'thrash/Slayer/Show No Mercy/11 - Chemical Warfare.mp3', 11),
(412, 'Metal Storm / Face the Slayer', '293', 39, 'thrash/Slayer/Show No Mercy/05 - Metal Storm , Face the Slayer.mp3', 5),
(413, 'Fight Till Death', '217', 39, 'thrash/Slayer/Show No Mercy/04 - Fight Till Death.mp3', 4),
(414, 'Silent Scream', '186', 40, 'thrash/Slayer/South of Heaven/02 - Silent Scream.mp3', 2),
(415, 'Spill the Blood', '291', 40, 'thrash/Slayer/South of Heaven/10 - Spill the Blood.mp3', 10),
(416, 'Cleanse the Soul', '182', 40, 'thrash/Slayer/South of Heaven/08 - Cleanse the Soul.mp3', 8),
(417, 'Ghosts of War', '233', 40, 'thrash/Slayer/South of Heaven/06 - Ghosts of War.mp3', 6),
(418, 'South of Heaven', '298', 40, 'thrash/Slayer/South of Heaven/01 - South of Heaven.mp3', 1),
(419, 'Live Undead', '230', 40, 'thrash/Slayer/South of Heaven/03 - Live Undead.mp3', 3),
(420, 'Dissident Aggressor', '155', 40, 'thrash/Slayer/South of Heaven/09 - Dissident Aggressor.mp3', 9),
(421, 'Read Between the Lies', '200', 40, 'thrash/Slayer/South of Heaven/07 - Read Between the Lies.mp3', 7),
(422, 'Mandatory Suicide', '245', 40, 'thrash/Slayer/South of Heaven/05 - Mandatory Suicide.mp3', 5),
(423, 'Behind the Crooked Cross', '194', 40, 'thrash/Slayer/South of Heaven/04 - Behind the Crooked Cross.mp3', 4),
(424, 'Stain of Mind', '206', 41, 'thrash/Slayer/Stain of Mind/01 - Stain of Mind.mp3', 1),
(425, 'Raining Blood (Live)', '141', 41, 'thrash/Slayer/Stain of Mind/02 - Raining Blood (Live).mp3', 2),
(426, 'Chemical Warfare (Live)', '332', 41, 'thrash/Slayer/Stain of Mind/05 - Chemical Warfare (Live).mp3', 5),
(427, 'Mandatory Suicide (Live)', '239', 41, 'thrash/Slayer/Stain of Mind/04 - Mandatory Suicide (Live).mp3', 4),
(428, 'Angel of Death (Live)', '297', 41, 'thrash/Slayer/Stain of Mind/03 - Angel of Death (Live).mp3', 3),
(429, 'Spiritual Law', '180', 42, 'thrash/Slayer/Undisputed Attitude/09 - Spiritual Law.mp3', 9),
(430, 'Memories of Tomorrow', '55', 42, 'thrash/Slayer/Undisputed Attitude/13 - Memories of Tomorrow.mp3', 13),
(431, 'Superficial Love', '107', 42, 'thrash/Slayer/Undisputed Attitude/03 - Superficial Love.mp3', 3),
(432, 'Gemini', '294', 42, 'thrash/Slayer/Undisputed Attitude/16 - Gemini.mp3', 16),
(433, 'Violent Pacification', '158', 42, 'thrash/Slayer/Undisputed Attitude/12 - Violent Pacification.mp3', 12),
(434, 'Sick Boy', '134', 42, 'thrash/Slayer/Undisputed Attitude/10 - Sick Boy.mp3', 10),
(435, 'Free Money', '101', 42, 'thrash/Slayer/Undisputed Attitude/01 - Free Money.mp3', 1),
(436, 'I Hate You', '136', 42, 'thrash/Slayer/Undisputed Attitude/07 - I Hate You.mp3', 7),
(437, 'I\'m Gonna Be Your God', '178', 42, 'thrash/Slayer/Undisputed Attitude/15 - I\'m Gonna Be Your God.mp3', 15),
(438, 'Ddamm', '61', 42, 'thrash/Slayer/Undisputed Attitude/05 - Ddamm.mp3', 5),
(439, 'Can\'t Stand You', '87', 42, 'thrash/Slayer/Undisputed Attitude/04 - Can\'t Stand You.mp3', 4),
(440, 'Mr. Freeze', '143', 42, 'thrash/Slayer/Undisputed Attitude/11 - Mr. Freeze.mp3', 11),
(441, 'Richard Hung Himself', '201', 42, 'thrash/Slayer/Undisputed Attitude/14 - Richard Hung Himself.mp3', 14),
(442, 'Leeches', '118', 42, 'thrash/Slayer/Undisputed Attitude/02 - Leeches.mp3', 2),
(443, 'Guilty of Being White', '67', 42, 'thrash/Slayer/Undisputed Attitude/06 - Guilty of Being White.mp3', 6),
(444, 'I Don\'t Want to Hear It', '148', 42, 'thrash/Slayer/Undisputed Attitude/08 - I Don\'t Want to Hear It.mp3', 8),
(445, 'Hate Worldwide', '172', 43, 'thrash/Slayer/World Painted Blood/05 - Hate Worldwide.mp3', 5),
(446, 'Beauty Through Order', '276', 43, 'thrash/Slayer/World Painted Blood/04 - Beauty Through Order.mp3', 4),
(447, 'Not of This God', '260', 43, 'thrash/Slayer/World Painted Blood/11 - Not of This God.mp3', 11),
(448, 'Human Strain', '189', 43, 'thrash/Slayer/World Painted Blood/07 - Human Strain.mp3', 7),
(449, 'Psychopathy Red', '146', 43, 'thrash/Slayer/World Painted Blood/09 - Psychopathy Red.mp3', 9),
(450, 'Snuff', '222', 43, 'thrash/Slayer/World Painted Blood/03 - Snuff.mp3', 3),
(451, 'World Painted Blood', '353', 43, 'thrash/Slayer/World Painted Blood/01 - World Painted Blood.mp3', 1),
(452, 'Public Display of Dismemberment', '154', 43, 'thrash/Slayer/World Painted Blood/06 - Public Display of Dismemberment.mp3', 6),
(453, 'Americon', '202', 43, 'thrash/Slayer/World Painted Blood/08 - Americon.mp3', 8),
(454, 'Playing with Dolls', '253', 43, 'thrash/Slayer/World Painted Blood/10 - Playing with Dolls.mp3', 10),
(455, 'Unit 731', '159', 43, 'thrash/Slayer/World Painted Blood/02 - Unit 731.mp3', 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `user`
--

CREATE TABLE `user` (
  `iduser` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`) VALUES
(12, 'viktor1', '$2y$10$mo0UeHPZNvfRWf6YBWAtIOm15Mx73MEK8DViXFzwQFEmDAGe.v5oS'),
(13, 'guest', '$2y$10$qDAEjPiLYrlGcRKHe3KopO6EbUeTNGfU99ZMPBM8ybg6Ca7IkbKRa'),
(14, 'viktor2', '$2y$10$pgIZN8fS2N00m8TiG0jbAufW84JKbrPPx.wjf2hSjC.SzxC6swz6C');

-- --------------------------------------------------------

--
-- Struktura tabulky `user_has_playlist`
--

CREATE TABLE `user_has_playlist` (
  `user_iduser` int(10) UNSIGNED NOT NULL,
  `playlist_idplaylist` int(10) UNSIGNED NOT NULL,
  `isfavorites` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `user_has_playlist`
--

INSERT INTO `user_has_playlist` (`user_iduser`, `playlist_idplaylist`, `isfavorites`) VALUES
(12, 3, 0),
(12, 1, 1),
(13, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `user_likes_album`
--

CREATE TABLE `user_likes_album` (
  `user_iduser` int(10) UNSIGNED NOT NULL,
  `album_album_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `user_likes_album`
--

INSERT INTO `user_likes_album` (`user_iduser`, `album_album_id`) VALUES
(12, 1),
(12, 3),
(12, 6),
(12, 16),
(12, 27);

-- --------------------------------------------------------

--
-- Struktura tabulky `user_likes_artist`
--

CREATE TABLE `user_likes_artist` (
  `user_iduser` int(10) UNSIGNED NOT NULL,
  `artist_artist_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `user_likes_artist`
--

INSERT INTO `user_likes_artist` (`user_iduser`, `artist_artist_id`) VALUES
(12, 1),
(12, 3);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`) USING BTREE,
  ADD UNIQUE KEY `idalbum_UNIQUE` (`album_id`) USING BTREE;

--
-- Klíče pro tabulku `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`) USING BTREE,
  ADD UNIQUE KEY `idartist_UNIQUE` (`artist_id`);

--
-- Klíče pro tabulku `artist_has_album`
--
ALTER TABLE `artist_has_album`
  ADD PRIMARY KEY (`artist_id`,`album_id`),
  ADD KEY `fk_artist_has_album_artist1_idx` (`artist_id`),
  ADD KEY `fk_artist_has_album_album1_idx` (`album_id`) USING BTREE;

--
-- Klíče pro tabulku `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`idplaylist`),
  ADD UNIQUE KEY `idplaylist_UNIQUE` (`idplaylist`);

--
-- Klíče pro tabulku `playlist_has_songs`
--
ALTER TABLE `playlist_has_songs`
  ADD PRIMARY KEY (`song_order`),
  ADD UNIQUE KEY `duplicity_check` (`playlist_idplaylist`,`song_song_id`) USING BTREE,
  ADD KEY `fk_playlist_has_songs_songs1_idx` (`song_song_id`) USING BTREE,
  ADD KEY `fk_playlist_has_songs_playlist1_idx` (`song_song_id`) USING BTREE;

--
-- Klíče pro tabulku `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`song_order`),
  ADD KEY `user_idx` (`user_id`);

--
-- Klíče pro tabulku `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`) USING BTREE,
  ADD UNIQUE KEY `song_id_UNIQUE` (`song_id`) USING BTREE,
  ADD KEY `fk_songs_album1_idx` (`album_idalbum`);

--
-- Klíče pro tabulku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `iduser_UNIQUE` (`iduser`);

--
-- Klíče pro tabulku `user_has_playlist`
--
ALTER TABLE `user_has_playlist`
  ADD PRIMARY KEY (`user_iduser`,`playlist_idplaylist`),
  ADD UNIQUE KEY `constraint_favorites` (`user_iduser`,`isfavorites`),
  ADD KEY `fk_user_has_playlist_playlist1_idx` (`playlist_idplaylist`),
  ADD KEY `fk_user_has_playlist_user_idx` (`user_iduser`);

--
-- Klíče pro tabulku `user_likes_album`
--
ALTER TABLE `user_likes_album`
  ADD PRIMARY KEY (`user_iduser`,`album_album_id`),
  ADD KEY `fk_user_has_album_album1_idx` (`album_album_id`),
  ADD KEY `fk_user_has_album_user1_idx` (`user_iduser`);

--
-- Klíče pro tabulku `user_likes_artist`
--
ALTER TABLE `user_likes_artist`
  ADD PRIMARY KEY (`user_iduser`,`artist_artist_id`) USING BTREE,
  ADD KEY `fk_user_has_artist_artist1_idx` (`artist_artist_id`),
  ADD KEY `fk_user_has_artist_user1_idx` (`user_iduser`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pro tabulku `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `playlist`
--
ALTER TABLE `playlist`
  MODIFY `idplaylist` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `playlist_has_songs`
--
ALTER TABLE `playlist_has_songs`
  MODIFY `song_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `queue`
--
ALTER TABLE `queue`
  MODIFY `song_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- AUTO_INCREMENT pro tabulku `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `artist_has_album`
--
ALTER TABLE `artist_has_album`
  ADD CONSTRAINT `fk_artist_has_album_album1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_artist_has_album_artist1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `playlist_has_songs`
--
ALTER TABLE `playlist_has_songs`
  ADD CONSTRAINT `fk_playlist_has_songs_playlist1` FOREIGN KEY (`playlist_idplaylist`) REFERENCES `playlist` (`idplaylist`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_playlist_has_songs_songs1` FOREIGN KEY (`song_song_id`) REFERENCES `song` (`song_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `fk_songs_album1` FOREIGN KEY (`album_idalbum`) REFERENCES `album` (`album_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `user_has_playlist`
--
ALTER TABLE `user_has_playlist`
  ADD CONSTRAINT `fk_user_has_playlist_playlist1` FOREIGN KEY (`playlist_idplaylist`) REFERENCES `playlist` (`idplaylist`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_has_playlist_user` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Omezení pro tabulku `user_likes_album`
--
ALTER TABLE `user_likes_album`
  ADD CONSTRAINT `fk_user_has_album_album1` FOREIGN KEY (`album_album_id`) REFERENCES `album` (`album_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_album_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `user_likes_artist`
--
ALTER TABLE `user_likes_artist`
  ADD CONSTRAINT `fk_user_has_artist_artist1` FOREIGN KEY (`artist_artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_artist_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
