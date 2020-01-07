-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 07. led 2020, 17:21
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
-- Databáze: `viktrola_db`
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
(266, 'A Matter of Life and Death', 2006, 'a2/56/6b4e5a5c3158394d28e02008da730e1a86c63742ce4f16899dfed6bc4124.jpg'),
(267, 'Brave New World', 2000, 'a5/b5/19633f337a90576787345778af6e3fd64fc18d56b0c1965c9e475ebd5301.jpg'),
(268, 'Dance of Death', 2003, 'ae/83/eec193cb5fe4e164bb89a6677477a5e9caaca0bf5d6f17366c596eca635b.jpg'),
(269, 'Fear of the Dark', 1992, 'cb/38/00e979246ef8443881dd6f882c5358317e769ddbd96e7287aea20136f606.jpg'),
(270, 'Iron Maiden', 1980, '35/61/c308e30b54e3f9771f326fc9738c335e3e4d023db1a7f528eaab3d1843b3.jpg'),
(271, 'Killers', 1981, 'ab/3e/08f97ac54cbf877316affccfa9f57a2bfbc951ce846f4bc7bb4b34c78550.jpg'),
(272, 'Live After Death', 1985, '04/ab/19cc3e839c198c2d8b554847001dbee9070634661a2dfae3e98d25b05041.jpg'),
(273, 'No Prayer for the Dying', 1990, 'f9/2b/2ba078f5aa1849cce6064869393007023374ec540e0345722be66651ac07.jpg'),
(274, 'Piece of Mind', 1983, '26/0d/3749560adffab2389a628c89df14ab64de6c69f9b3c73d2de780c8c13073.jpg'),
(275, 'Powerslave', 1984, 'd1/4c/ac243e2ae023d7774ce04ed9641e68ee5a2291ed794c778ff9fc137d4732.jpg'),
(276, 'Seventh Son of a Seventh Son', 1988, '2a/c2/7b68afed9c0f684fad8637af3935ee5d9db6849547a3fb6037599cf83854.jpg'),
(277, 'Somewhere Back in Time', 2008, '30/f1/84285b5fa6ffef2211ba74abe35005e0973493ca9144911fa7e5fd292d84.jpg'),
(278, 'Somewhere in Time', 1986, '85/6b/987fe570d64a608cf14d600ed1978cb684d0fd8e26b8f1f8e36bddc122e3.jpg'),
(279, 'The Book of Souls', 2015, '64/b3/bdf56f1e1b233e0b994418e18e8c3be9306beb453471fe79791f351c4612.jpg'),
(280, 'The Final Frontier', 2010, '1b/4d/8fe8da2281a1a15b883b7f6b66700101f81cdf65b463e63a7530b3b0dd33.jpg'),
(281, 'The Number of the Beast', 1982, '1f/99/fc9b24b896849d7b88c777280a05dbe5d279337702dbd0a20abe3be6e1aa.jpg'),
(282, 'The X Factor', 1995, '0c/f1/18eae7d469f9429b27d27593b3827af19464459b5dae9f070280b6e4ded5.jpg'),
(283, 'Virtual XI', 1998, 'd1/e1/1e4df6f3f5bcb2b9c835b9b3510f2b22fb60d0d0fd216010a5cd2d8b5e89.jpg'),
(284, 'B-Sides & Rarities', 2013, '60/f8/5019a40cd2fbfc5a32f674bdc179faf298e9a29a669bf2dadfb082887443.jpg'),
(285, 'Christ Illusion', 2006, 'c7/fd/9e89a4fd4fd6a5f51043398fc3963111e84b0cf122aa5970c2c0cd16e68d.jpg'),
(286, 'Criminally Insane', 1987, '09/70/4a715c5550226bc272a375174c805b2d16e79d39f66a14d350d9b3c43b00.jpg'),
(287, 'Decade of Aggression', 1991, 'c4/8b/2e6e888bf373ec7ca1dffa05004843b7ab55e2b42674436436b7f432b146.jpg'),
(288, 'Diabolus in Musica', 1998, '5f/be/482ce14e2fb283913ccc304ef74b7a258c002e6fd3db4ba079ff0ce63536.jpg'),
(289, 'Divine Intervention', 1994, 'c1/86/37af02f5b696d3a99b2c84ec8ff0ddbd67b32c7c10cc69faf1424391e3a7.jpg'),
(290, 'God Hates Us All', 2001, '62/a8/144293b3cda839ffd27b2009e18b7602170020277e02949a2acc00e498b5.jpg'),
(291, 'Haunting the Chapel', 1984, '18/3c/d4d8713ea511316f9a07d9b3045978c5d0a800bb1c949f05d3372493b05f.jpg'),
(292, 'Hell Awaits', 1985, '87/0e/8c2a0d91d132a0081d7842f5a004a94301600eb34de39d1f2b9c5584574e.jpg'),
(293, 'Reign in Blood', 1986, '1b/6b/5ac960b0a12392c7d8081eb04b430d6821b9e5ee290e644fd68ac438690e.jpg'),
(294, 'Repentless', 2015, '56/69/a60da73968ad6ddb78de1b8ec4132645d020d193f5f336bfd41b89325814.jpg'),
(295, 'Seasons in the Abyss', 1990, '17/57/532c693ec58f7164f8ce258f76cc5fb85fac550c2b50d1f9a75815852bec.jpg'),
(296, 'Serenity in Murder', 1995, '2b/3e/02c9bbae5a73b8499366217b8ccf2611b83bc82b516805be666d49a2d1a1.jpg'),
(297, 'Show No Mercy', 1983, 'd0/cd/95bc892ea9e3cc395ede67b8bf175fa9c497ec374e4919d36f728260f572.jpg'),
(298, 'South of Heaven', 1988, '87/f6/1d15b772840f98b6d76039e7e9ea1d8a5d2ae8dc909512a31536cf7eefd4.jpg'),
(299, 'Stain of Mind', 1998, 'a7/9f/d6b671eb4a842a187b3d86b23de07b5694845885deef1eef76b60d3a958d.jpg'),
(300, 'Undisputed Attitude', 1996, 'e3/50/fa21843100e135f44b3e8f6e1f9715c27e4bed206a8418ed742bead856cb.jpg'),
(301, 'World Painted Blood', 2009, '38/78/3ebb3555506304ab1679ce3e19fda3772b894ac10c0cbf9ec99b51357402.jpg'),
(302, 'Between the Worlds', 2004, '92/18/491c17b95cf43d36b2e4ab471cf5d875cb81c1f630ec391545bf43d12e7b.jpg'),
(303, 'Каменного Сердца Кровь', 2007, '3d/db/7603ea08ad6cfcfcfb314ef3f199472b8769755271424869e54fdcaffaa8.jpg'),
(304, 'Октаграмма', 2018, 'fe/3e/44325dba69cfe21adedda89292ab0ad025c8863d6e389fa633c2315d2617.jpg'),
(305, 'На Крыльях Зова', 2010, '44/ec/7093c208c0a5c0f2db7fb223a21c4a585f41caf6931f6a574175992d879c.jpg'),
(306, 'Песни Белой Лилии', 2016, '6c/29/c4ef00917937a16bc6d81028d9bcb441c484df40c247c9ed2d37c355cad4.jpg'),
(307, 'Путь Непройденный', 2006, '38/57/4d1a4bc3115d571b618408a4fe0f819b5f2a4da1736aa3261a4beba79e0d.jpg'),
(308, 'Русалка', 2016, '35/c6/d4e9b0f84d2842c4dc48ff47dffd6238e0bad82eed51a72a8aead6d01ce8.jpg'),
(309, 'Сказки Странствий', 2013, 'b2/4d/fbebef67cbcfad53038626576bd623d8200b0ee4250cc2e0b1a0f899f1f6.jpg'),
(310, 'Songs of the Eternal Oak', 2000, 'd7/fa/3ccc217503ff54a90ca9eb49d173e0383f6662cb3875a1421114ed27949e.jpg'),
(311, 'Tales of Wanderings', 2015, 'aa/ad/73a7de28c481fe98a4c56c5452fb34d76e2498d9c8b5e19e543cc251a65c.jpg'),
(312, 'Панихида', 2019, 'df/a0/a5a0ce3f644d8079b097421342116089da746114a0ccf5d054044f777ff8.jpg'),
(313, 'Hospodi', 2019, '00/55/f08883e4ccf63beaf99832ea69a417a318a949274ef5574d96a0834eb719.jpg'),
(314, 'Litourgiya', 2015, 'c0/87/3261b4f06924638ce1aaedb5a1250049804bf6e7b90b00ffcda8577b62cd.jpg'),
(315, 'Human', 1991, '8b/3b/2ad84f6fd90e9f9bd8c6f975b9fc83d201d7ca6a1f0e6a8e2d5b8afd5110.jpg'),
(316, 'Individual Thought Patterns', 1993, '11/32/64636f5c3260bf880ab29f51e85f8890102c19a316b25229cf1d4d560bbe.jpg'),
(317, 'Leprosy', 1988, 'd6/36/2594c08cbb92d3867f50eff52de1fc5882b2e838a6f3184dd268da5a675a.jpg'),
(318, 'Scream Bloody Gore', 1987, '2e/a5/a048ba99cc500ef8e66fe9a92e924294a7a0a87adb4b6d20dffcdcb6a739.jpg'),
(319, 'Spiritual Healing', 1990, 'f2/56/36e26177178e57fd6462fca48a3e5d57c7d5a1e4a730f36a5a19c326ed9c.jpg'),
(320, 'Symbolic', 1995, '12/bf/8110b5801e26cc07013779ae164d75bc0184bc1412a273fc704806dab91e.jpg'),
(321, 'The Sound of Perseverance', 1998, '64/cd/525200e2521e260474206523cffbed6387959373cfe0c6658df34cf23196.jpg'),
(322, 'Blues pro Hitchcocka', 1994, '');

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
(37, 'Iron Maiden'),
(38, 'Slayer'),
(39, 'Alkonost'),
(40, 'Batushka'),
(41, 'Death'),
(42, 'František Sahula a Synové výčepu');

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
(37, 266),
(37, 267),
(37, 268),
(37, 269),
(37, 270),
(37, 271),
(37, 272),
(37, 273),
(37, 274),
(37, 275),
(37, 276),
(37, 277),
(37, 278),
(37, 279),
(37, 280),
(37, 281),
(37, 282),
(37, 283),
(38, 284),
(38, 285),
(38, 286),
(38, 287),
(38, 288),
(38, 289),
(38, 290),
(38, 291),
(38, 292),
(38, 293),
(38, 294),
(38, 295),
(38, 296),
(38, 297),
(38, 298),
(38, 299),
(38, 300),
(38, 301),
(39, 302),
(39, 303),
(39, 304),
(39, 305),
(39, 306),
(39, 307),
(39, 308),
(39, 309),
(39, 310),
(39, 311),
(40, 312),
(40, 313),
(40, 314),
(41, 315),
(41, 316),
(41, 317),
(41, 318),
(41, 319),
(41, 320),
(41, 321),
(42, 322);

-- --------------------------------------------------------

--
-- Struktura tabulky `playlist`
--

CREATE TABLE `playlist` (
  `idplaylist` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `playlist`
--

INSERT INTO `playlist` (`idplaylist`, `name`, `private`) VALUES
(24, 'viktor1\'s favorites', 0),
(31, 'bruh', 1),
(32, 'ahoj', 1),
(33, 'mnam', 0),
(35, 'ahojky', 1);

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
(24, 2850, 15),
(24, 2855, 16),
(24, 2856, 17),
(24, 3049, 2),
(24, 3050, 7),
(24, 3053, 3),
(24, 3057, 4),
(24, 3058, 5),
(32, 3050, 9),
(32, 3052, 10),
(32, 3056, 12);

-- --------------------------------------------------------

--
-- Struktura tabulky `queue`
--

CREATE TABLE `queue` (
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `song_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `queue`
--

INSERT INTO `queue` (`user_id`, `song_id`, `song_order`) VALUES
(12, 3049, 5550),
(12, 3050, 5551),
(12, 3051, 5552),
(12, 3052, 5553),
(12, 3053, 5554),
(12, 3054, 5555),
(12, 3055, 5556),
(12, 3056, 5557),
(12, 3057, 5558),
(12, 3058, 5559),
(12, 3251, 5565);

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
  `song_order` int(11) NOT NULL,
  `bytes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `song`
--

INSERT INTO `song` (`song_id`, `name`, `time`, `album_idalbum`, `path`, `song_order`, `bytes`) VALUES
(2755, 'Different World', '258', 266, '3c/e5/5c721fffb93e8034710fbf28ab85d09df8de1d6ad3281bc41135f6df77f2.mp3', 1, 10396048),
(2756, 'These Colours Don\'t Run', '412', 266, '84/b9/2b8300ef4bd2f97a997728cf8f1f2807a41a44c3a2f0f81a90d5252ef186.mp3', 2, 16536949),
(2757, 'Brighter Than a Thousand Suns', '526', 266, 'e0/5b/14d13f00ec66a71084a4c4e3de0b6cf53085e0c5500de8c659a905b90ede.mp3', 3, 21100031),
(2758, 'The Pilgrim', '307', 266, 'd2/c9/99db2abcd17ecf3607bebf773ded160611da88058d0ec8364968212c644d.mp3', 4, 12354177),
(2759, 'The Longest Day', '467', 266, '55/c7/e5aa82756ec7f7b51d27c4c3ee390705289da8244a2402c702123b293ae1.mp3', 5, 18762566),
(2760, 'Out of the Shadows', '336', 266, '6d/83/fc2596ac5ba2d46707c9bc8ffda9682dfa3f13733a107295ccf97abdd0f8.mp3', 6, 13525543),
(2761, 'The Reincarnation of Benjamin Breeg', '442', 266, 'bb/25/878c93a47e331026fe731ce23e9a335fd50840f74687c8a1bad6aedda3ee.mp3', 7, 17733364),
(2762, 'For the Greater Good of God', '564', 266, 'e4/a1/3fd36134a6393f6ae7ed114a9d281de9912ca9d8dced0ca7c72aa634e2d6.mp3', 8, 22644354),
(2763, 'Lord of Light', '444', 266, '94/07/5717d8ed005ed07a01abbb68f37235a8aa1911251089bc5e92f365f5af92.mp3', 9, 17834693),
(2764, 'The Legacy', '563', 266, 'd6/8f/54654b51abbfc7894c7ba554e3fbc804189d06e5c3fe492666e96af5e28a.mp3', 10, 22569097),
(2765, 'The Wicker Man', '275', 267, '78/37/223872c80536163982d3c1286ab3b2493eb6947b4378cd3a371be09c271b.mp3', 1, 11161758),
(2766, 'Ghost of the Navigator', '410', 267, '5b/64/9218ef8e40571a5ab0920fe34fbb2d5726794343766c8fbe659c8c8a2bfd.mp3', 2, 16542839),
(2767, 'Brave New World', '378', 267, 'e3/dd/aa265b8c4d08ef1543e505cf49e25e536ccee98dc09e3ee1e16919373e3c.mp3', 3, 15299396),
(2768, 'Blood Brothers', '434', 267, '1e/7d/d39a6e606099f2557f6a02a9b6214f5aad736e990400cc535cf0dae93e72.mp3', 4, 17517713),
(2769, 'The Mercenary', '282', 267, '9f/f5/276fa10f32db5a304bdfb0d57a02b1ec007ca9236712f558133da7f6d4f5.mp3', 5, 11439539),
(2770, 'Dream of Mirrors', '561', 267, '5b/dc/cc842938095afeebd795ac6f4be664f941d27be5ba4aa7820521e33926f6.mp3', 6, 22586517),
(2771, 'The Fallen Angel', '240', 267, '99/67/5f0f4073848b8c12c9c925bf945989ab6fe54b514fcd644c9a9c745d7e21.mp3', 7, 9768753),
(2772, 'The Nomad', '546', 267, '17/f2/da306ed6ff7e31cb73a05dcee6f65f2ff56fa273411d5e4cc6cce83f7101.mp3', 8, 21984641),
(2773, 'Out of the Silent Planet', '385', 267, 'd2/03/76957c4553f9e9b333be0e119f445a8a024310d9959ed18011c3fc42dd43.mp3', 9, 15561684),
(2774, 'The Thin Line Between Love & Hate', '506', 267, '6f/0a/da3b4a447712729a10cb3aca894593152a6f362574650f58c81d765a9e4e.mp3', 10, 20412118),
(2775, 'Wildest Dreams', '232', 268, '8f/67/9f2d4b388482d7b129b36f2269c0d13bc035dfb9d46ae63c51cbbee937be.mp3', 1, 9456553),
(2776, 'Rainmaker', '228', 268, '6c/48/b3675357ffc9aebfa7017f7cdce65a7102daf202f93188d8a71536ca25ec.mp3', 2, 9290352),
(2777, 'No More Lies', '441', 268, 'fe/9c/6d94b3cc8732c77fa2554570c07e151839782ca07baca1dd8a3a9e0980d5.mp3', 3, 17816725),
(2778, 'Montsegur', '350', 268, '9e/aa/8b7449917ae7a75c253c59b89b470f4cf7bce175506d46ead073ddff3041.mp3', 4, 14164801),
(2779, 'Dance of Death', '516', 268, '59/47/b9061c6ad4cb7e2d954c1c18b03f93b055ca72c183a849e010f98e9b8ed2.mp3', 5, 20811406),
(2780, 'Gates of Tomorrow', '312', 268, 'd4/10/23ecbd9e8e332232117dacd4df3eb16e353ac3d2ca792c57529bd9e1a9e6.mp3', 6, 12626727),
(2781, 'New Frontier', '304', 268, 'bd/b6/a237cd01a42db045fdc612d4e08f02710b6462e29f6fefd7a267a6dce3a9.mp3', 7, 12325786),
(2782, 'Paschendale', '508', 268, 'bc/08/edc803aafc6009a90d763dbcb2ee781ede822f11563f1e201de169e1c6de.mp3', 8, 20469719),
(2783, 'Face in the Sand', '391', 268, 'ba/10/b8d791c208e77f0d473d6ac018f33906642ac05f47b43eab08a6c7b72e94.mp3', 9, 15789631),
(2784, 'Age of Innocence', '370', 268, '59/d8/0ef7f5e023a289df61d6cae54009f3cb06885fbc0cf76c01d0a73a7704a0.mp3', 10, 14964161),
(2785, 'Journeyman', '427', 268, '9f/6b/cf8ccb298ae8e2e83c4df8308c94ec6df4d319e07b0311e05475e7cb6684.mp3', 11, 17226354),
(2786, 'Be Quick or Be Dead', '204', 269, 'bc/e0/4bf1f4a572133d3492926596f60332efd30819c7864d83b7571387674622.mp3', 1, 8308082),
(2787, 'From Here to Eternity', '218', 269, '67/c2/7f957ed1189d173a057a62508a881d9a7e4ed70e81ad9067d0a5330dbee6.mp3', 2, 8861722),
(2788, 'Afraid to Shoot Strangers', '416', 269, '22/ae/7e2989ace65629bfcaa50a47a7a517d8edd07252bf8a5369fcbfb406c4db.mp3', 3, 16787281),
(2789, 'Fear Is the Key', '335', 269, '45/ce/c91c5cf8e97e342131b94d73784df1832a293dbd3876df436feb6e0c944f.mp3', 4, 13539718),
(2790, 'Childhood\'s End', '280', 269, '76/ad/606858121c0c2bc3fe170b0a56148568378df77a165761609fb4fa02b77d.mp3', 5, 11351701),
(2791, 'Wasting Love', '350', 269, '06/3f/ab3e12c27dffda8bc85d784a02f80a8c1668909b259ff7bbbed6db0aad9f.mp3', 6, 14166651),
(2792, 'The Fugitive', '294', 269, '99/4a/f6fdf3322fbc350cf084a6bd910be0f9b402c1d6b2a6ccd16dd9f6f10bfa.mp3', 7, 11891908),
(2793, 'Chains of Misery', '217', 269, '15/95/7f43b20d19c6f4139ed71cf280f11666b74ea3e43393646f14cfc21c1bcb.mp3', 8, 8825140),
(2794, 'The Apparition', '234', 269, 'd0/7e/a975bd3e919303d75193dc3d3dd0bf883f42a3025d0d1765036209001679.mp3', 9, 9511634),
(2795, 'Judas Be My Guide', '188', 269, '87/a3/5c371ae484ef11cf7f4caaf901346ba6d4c20270205524ef73119e0acd63.mp3', 10, 7678889),
(2796, 'Weekend Warrior', '339', 269, '35/e5/ebb2d1482d276580fa7cf12be0142e80a4132d33503837e2a76d2c8af158.mp3', 11, 13717350),
(2797, 'Fear of the Dark', '436', 269, '2d/ca/78cbcacba9114172df488dd7feaeef947bdd1c9e6e70ecef0eabf7414dfa.mp3', 12, 17606463),
(2798, 'Prowler', '234', 270, 'af/61/aba5c2fc49096b6bb2c9eb26fcd4767d5d3835fd1d894a191ddbad133220.mp3', 1, 9495242),
(2799, 'Remember Tomorrow', '327', 270, 'bb/93/b84c302637b6e4db56335fe2ab643f361adbbb97d53177cd2f1ffef6b99d.mp3', 2, 13209900),
(2800, 'Running Free', '196', 270, 'cc/c3/bb95fd647bf16f6ad25c23feccc54b0400f6702bcc5682b37e4f4711f135.mp3', 3, 7973906),
(2801, 'Phantom of the Opera', '441', 270, '36/88/d51444eecd87f51d50ad3134be8d592600d12449982b25dda7935fe39403.mp3', 4, 17749962),
(2802, 'Transylvania', '245', 270, '4f/37/b6f600201c8c14de579fff3b55053c12774984727c97481ec9b78ded87d2.mp3', 5, 9918435),
(2803, 'Strange World', '345', 270, 'c2/49/6874468cce998f93cb6869a4737d865465f211c712dc6648b611c0f326b8.mp3', 6, 13908903),
(2804, 'Charlotte the Harlot', '253', 270, 'c6/b4/36a841988aeeb5413907a29971a5625c1629ef37a673545f59e9b57ef839.mp3', 7, 10223562),
(2805, 'Iron Maiden', '215', 270, '2f/9a/14de501619f4710742842665447ef022cbdedc1cc9423a5cf60d0ff5a119.mp3', 8, 8703217),
(2806, 'The Ides of March', '106', 271, '0c/3e/71509d0cad8b78dba99d616651363010a057eacfdeeb9a42eff72f0311a6.mp3', 1, 4263263),
(2807, 'Wrathchild', '175', 271, '54/a6/b9369cd0223b2eddba12a688d93414ab38776d7d7e96572469dd106144ea.mp3', 2, 7025959),
(2808, 'Murders in the Rue Morgue', '259', 271, '15/e7/87e2767ae62481ab0988259e3ae9560367a4d94e4ee15bd719dc30e89e95.mp3', 3, 10386381),
(2809, 'Another Life', '203', 271, 'cd/96/17c4dc982e169355b3721e9290d25ed938c0ce2a3532ff6252121200004f.mp3', 4, 8154453),
(2810, 'Genghis Khan', '189', 271, '18/b0/8e223d8711e095bc4b5f8df4f92a7d2bbaae07db89df5cb4950fbe553c43.mp3', 5, 7589163),
(2811, 'Innocent Exile', '234', 271, 'd0/96/5a4569d4d20cb816b650bf9877daf1d317a52005ebd31c3bc5652361d935.mp3', 6, 9390571),
(2812, 'Killers', '301', 271, 'b2/85/eaec38654343b266a9ca1ccf6f24181d485c46b4901c503792cb419f53b5.mp3', 7, 12093734),
(2813, 'Prodigal Son', '372', 271, '0c/c8/a2c21ee26b186be53b10e055017a814618ceed0f76ac129b9be746253b13.mp3', 8, 14924347),
(2814, 'Purgatory', '200', 271, '8c/35/c2ee3bd2f130a24b961827b19ca8e17820799f2dabae268d016d53fd14fa.mp3', 9, 8040553),
(2815, 'Drifter', '287', 271, '95/4d/967acee20ec89ac7320bb52e5bd93f2f9f3a3291ee416f89ef5980394567.mp3', 10, 11532115),
(2816, 'Intro: Churchill\'s Speech / Aces High', '330', 272, 'af/b0/7f09c8a2e8fdbdfba968b51689a2c4f82a8a4a89773a9cc939422c28b089.mp3', 1, 13247346),
(2817, '2 Minutes to Midnight', '353', 272, '02/cc/a1b00c8c2da294b99e4b348a73de2bc936c3d9d3af6d75f462a2c8870b9b.mp3', 2, 14179588),
(2818, 'The Trooper', '252', 272, 'b8/86/0a508ce5fad5700819eb938e608124855ff8abadd2b4e3901a910c59b170.mp3', 3, 10162238),
(2819, 'Revelations', '389', 272, '05/a2/575ddcddaad15a100480773e4f1f96eca267cfe22473c5246e83783fb350.mp3', 4, 15614012),
(2820, 'Flight of Icarus', '211', 272, '31/20/00225d01a811ac744fd17aa26d4a9d58cbf4a1d024c4878435f1f364e715.mp3', 5, 8503350),
(2821, 'Rime of the Ancient Mariner', '803', 272, '10/ae/3f763258ad4e4c1da07de99d64f376a119ca2a7b0ed86f58dd70dea49b22.mp3', 6, 32147866),
(2822, 'Powerslave', '435', 272, '4d/49/7daaca3b5e16792b25863545f2f2b17e7bc0116b77799b5d1d01bb84c301.mp3', 7, 17448318),
(2823, 'The Number of the Beast', '288', 272, 'a7/b7/14988a22a7c86aa487aeeae9d27752e5bffd1ba4849c7a68175277b33e29.mp3', 8, 11572706),
(2824, 'Hallowed Be Thy Name', '437', 272, '47/b6/0978ec3e26a8172df3574d5bd82df59ce89f2189cd43d8d3ec196512ca16.mp3', 9, 17550644),
(2825, 'Iron Maiden', '261', 272, '89/76/4a412ffdba02a1fd5f87429da0ac966b17f34859095634b9f9ed72e510b5.mp3', 10, 10520330),
(2826, 'Run to the Hills', '241', 272, '38/94/135fe37556f38dd30cab217ef80d60ab0a53f69cafed27fda4892a19de97.mp3', 11, 9723768),
(2827, 'Running Free', '522', 272, '19/4b/b3300e8966d93ef663a5a81003f7f73f4fdd68626660d0a82460021d6002.mp3', 12, 20954084),
(2828, 'Sanctuary', '280', 272, '8f/9f/ea7a3c263ea7ca568d0029c3598977bf46c7a9514eabd523b4bfee4f285e.mp3', 13, 11288839),
(2829, 'Wrathchild', '185', 272, '85/9f/ce6f45bc14efbae0e31f57a00177757be9da55ec9b3ac2c1865b21886a36.mp3', 14, 7467682),
(2830, '22 Acacia Avenue', '372', 272, 'fd/d5/cf76fcc145ab3b43f71deba2abb01233bf02fdba254381c571e9882f382c.mp3', 15, 14951098),
(2831, 'Children of the Damned', '273', 272, '6d/39/29cadddc2d631256226fab053775c7fe7ea992c18819a72d90bcb5f72c8a.mp3', 16, 10990162),
(2832, 'Die With Your Boots On', '320', 272, 'd8/f7/0c5442c45c6adfc9985d3901294e755dd1f32bf44975ac3c55c3b7d5a18e.mp3', 17, 12861042),
(2833, 'Phantom of the Opera', '440', 272, '6f/52/051d4c420df3a3e5025fe8da1a014fc57d4d674dc57e2c5093fb7ee17d27.mp3', 18, 17669670),
(2834, 'Losfer Words (Big \'orra)', '255', 272, '99/98/cb14442d84ddb112bb1207888c55c427fe7168603a6f796fe4e7dea284a7.mp3', 19, 10270064),
(2835, 'Murders in the Rue Morgue', '272', 272, 'd0/fc/a82a6243256449c9f3c9b71cd99a1b8d9785e8b8b82f28e5a3d2051ded59.mp3', 20, 10954474),
(2836, 'Tailgunner', '255', 273, 'e0/47/9af5dae32683ee74def340c7830ea0283f38b10334a923d562cab2f59f11.mp3', 1, 10219648),
(2837, 'Holy Smoke', '229', 273, '5f/35/81bc5fde7b2f63491953a856fcd7faebebdb0edaf6b6fae23870ac3789f6.mp3', 2, 9199744),
(2838, 'No Prayer for the Dying', '263', 273, 'b7/09/329a67736cd1dafb3b0ba792054a386c4c57a4e21d99c2701730e36b3a72.mp3', 3, 10543232),
(2839, 'Public Enema Number One', '253', 273, 'ba/29/6380665dbaebc0086cf3d0dac2e514bc798d010a31abfcdc14092dd471c6.mp3', 4, 10152084),
(2840, 'Fates Warning', '252', 273, '0c/7d/f973ddbf658294041dd171607eac78efee9fc83a355147cec6cf9ea8d7e6.mp3', 5, 10111104),
(2841, 'The Assassin', '275', 273, '03/2c/806be1e73bd848f624f3df3c53ee4c8b8f621097a639dea5ce611ec5e39a.mp3', 6, 11032704),
(2842, 'Run Silent Run Deep', '275', 273, '40/91/5b65cd5eaf5fc9c3e90a7128af2fd35f8562637211aa6f71827db9c6bd93.mp3', 7, 11042944),
(2843, 'Hooks in You', '248', 273, 'e7/7c/c9fa2d7fe08101e5d48816de7cf0bcb4e1a33cbd167cf2bc94d685cf28bb.mp3', 8, 9933960),
(2844, 'Bring Your Daughter... to the Slaughter', '285', 273, 'dc/c5/e9bc8be1307a0dd7fd728b39a73b99982a9e70cd91a54574d81853d7015d.mp3', 9, 11420877),
(2845, 'Mother Russia', '330', 273, 'af/b9/8f27cbdecb4c81e0d5878f32a812d73f0abaafe829329055a59376567c8b.mp3', 10, 13240448),
(2846, 'Where Eagles Dare', '370', 274, '0f/1c/9c35ae244b723f85ee696ad6cfd096ca11e4721b5e8ed904502c210dfdb1.mp3', 1, 14820273),
(2847, 'Revelations', '408', 274, 'da/13/83483d40e73bc2478d761682cab5d5ae0483bd4ea328bc5f577ef4eab319.mp3', 2, 16334067),
(2848, 'Flight of Icarus', '231', 274, 'c5/5c/77f5f9de77635274545cadee23f211a7e11c04a61dad0664674208c7f875.mp3', 3, 9258828),
(2849, 'Die With Your Boots On', '328', 274, 'a7/69/1721e04bd77c8c93b6f81b6e299eec06a45fdce66250c7808f072e1704ac.mp3', 4, 13152986),
(2850, 'The Trooper', '251', 274, '8b/5b/dcdcc123e4a94e5126fecfce838561c02b615f5c2db0de3e16881f431f39.mp3', 5, 10050225),
(2851, 'Still Life', '293', 274, '53/04/96e4610e00be7c71fcc814bbd84ffde2da4540110e7c280b4227d13f64c8.mp3', 6, 11750925),
(2852, 'Quest for Fire', '221', 274, '98/28/ba816ca4cf73c82b4b31586bf1d745a9e476f1db554575f8068e42513b4f.mp3', 7, 8870424),
(2853, 'Sun and Steel', '206', 274, 'ca/0a/ca96e5006caa911d42d14afc959fe6b42105ddfa1a0a4eeb5588c68f59f9.mp3', 8, 8273286),
(2854, 'To Tame a Land', '445', 274, 'cf/81/687e2135b7fb828ba144b69494ac7f15c2f7c69c4c0ff7d181d3dbd01732.mp3', 9, 17822811),
(2855, 'Aces High', '269', 275, 'eb/91/0fa3d376c21657ba4f007d395b6e6b2fa05160ab6ed5a21773495ebcc38f.mp3', 1, 10799300),
(2856, '2 Minutes to Midnight', '359', 275, 'f4/91/9fdea021eab1149f4d20932b0079cf9fc5c9e9f4e9b51203fc86a2acb8be.mp3', 2, 14410523),
(2857, 'Losfer Words (Big \'orra)', '252', 275, '7a/45/25f75fa366c91ed164076cd689998b270e33513aafa31f2703552112a53f.mp3', 3, 10133730),
(2858, 'Flash of the Blade', '242', 275, 'ab/c9/e57f88278cec2ae6b26a8954675ebae242992fe4725a63ebb0234f4f2429.mp3', 4, 9727258),
(2859, 'The Duellists', '366', 275, '76/65/20e531eb6dc997e6fd53d475df7f91230083b80f1f123cf592cc40c3aa4d.mp3', 5, 14676924),
(2860, 'Back in the Village', '320', 275, '02/f3/5e6fd6f4d98555228e2e9b9b150b66fd2a1e68fa2a31fa562b5d170ad0e0.mp3', 6, 12840037),
(2861, 'Powerslave', '407', 275, 'd3/8a/5d1aad9fff9de0dab911919a6c800cdd970bee18a0a6060271e9d5a1e329.mp3', 7, 16330997),
(2862, 'Rime of the Ancient Mariner', '816', 275, '15/7f/5054532934f9e4c2bd6a6c8a2d470989201ebef10485e018683285159f8b.mp3', 8, 32678454),
(2863, 'Moonchild', '340', 276, '1e/ba/b184b1e99575ad451ffcdaca5b4518639051b2783659506b72d1559533e7.mp3', 1, 13663582),
(2864, 'Infinite Dreams', '369', 276, 'de/a5/f709da0c8ad177086006847b4a58be45faa1b4cce6e0a78f413d5ca84db6.mp3', 2, 14792064),
(2865, 'Can I Play With Madness?', '211', 276, '72/de/61df567d0ce724394e3bc78004796789e8501d54b5aa9ad77b52abb5e323.mp3', 3, 8473620),
(2866, 'The Evil That Men Do', '274', 276, 'f4/00/7d9e765753de57b6a732acf614247b6832d00b6bef3f44ed383c4bcb7914.mp3', 4, 10991816),
(2867, 'Seventh Son of a Seventh Son', '593', 276, '9f/69/235d6ac2a00dbc0f38b12ff1c69ade021bf29376df970af93a206c293a0a.mp3', 5, 23774033),
(2868, 'The Prophecy', '305', 276, '65/c6/6157148a0a883cb4270fd12b89f7466e4a185c1fc8c4421f1e38da0a3497.mp3', 6, 12251927),
(2869, 'The Clairvoyant', '267', 276, '71/59/c08483effd00d68830a7a7073be13966140f39a69c5f99bb2ecd790c8a8c.mp3', 7, 10712782),
(2870, 'Only the Good Die Young', '282', 276, '09/2d/4455dad7c1aa1732220a09bff37f2013ee92c53305774e43b1718bde4e3c.mp3', 8, 11342894),
(2871, 'Churchill\'s Speech', '49', 277, '37/31/caa285599cb619018c723b0c54a9350c28ca52ea7aac550c128b3dbccb86.mp3', 1, 3360885),
(2872, 'Aces High - Live', '278', 277, '9a/48/1dbe0f72ccfad5e6f2758efce3423fc85610c1d12435fed0a64f309c2e62.mp3', 2, 12514187),
(2873, '2 Minutes to Midnight', '361', 277, '3a/61/9f45790a114f27273c920d84518dc615753b3451743dba889e65dee09c4e.mp3', 3, 15849511),
(2874, 'The Trooper', '252', 277, '28/2c/9a3d4c1d5eebb6a75b180834af264aa1894d0fd6337b42a7f99d3f62f3e2.mp3', 4, 11464054),
(2875, 'Wasted Years', '307', 277, '60/92/c3c98a2017c299aa5a00b964f798f39a51d12b3c07a781c9c4ca48e3e7bc.mp3', 5, 13655207),
(2876, 'Children of the Damned', '276', 277, '49/4b/2450b5b905064ec2d47cdb54ea76c5fe39f08f801e91d9ebd7ccde4c1eb9.mp3', 6, 12440011),
(2877, 'The Number of the Beast', '292', 277, 'a4/0b/f0c48360f67853bc8c770a398ec9c56e89410d957804826c498f478084be.mp3', 7, 13069042),
(2878, 'Run to the Huills', '234', 277, '25/4d/d1ee79bdc2d80478151c58516f53139a6794e29b7e4c4ff3fb12e84cb2ae.mp3', 8, 10743087),
(2879, 'Phantom of the Opera - Live', '430', 277, '2e/4a/da9b5d89b5ecae847bc145c896a9f0dbd5805682c7bfe16ea62b9b6d981b.mp3', 9, 18599695),
(2880, 'The Evil That Men Do', '275', 277, '84/5d/9f049821233efc359d54613789940d792e6280db7e017cff8a2d0d92fdd6.mp3', 10, 12387762),
(2881, 'Wrathchild - Live', '185', 277, 'a5/18/93e4bc250034d27ea32c5070cef6a2fa397f0ff0c84628573464c67b675a.mp3', 11, 8779724),
(2882, 'Can I Play With Madness', '212', 277, 'bc/b8/5e82edd92f1993341d577123c7eb5281f8f2e368c77fe57d001f5f1b9863.mp3', 12, 9868519),
(2883, 'Powerslave', '409', 277, '4d/a3/839c621e3aee75cd6679380044118e742d01ce2c90635e059804cf824274.mp3', 13, 17754338),
(2884, 'Hallowed Be Thy Name', '433', 277, 'de/15/74cb3c6d8f0f77bc0ac7e30c2a058396e5d2fa4858c04b8dcf38bb48291f.mp3', 14, 18717754),
(2885, 'Iron Maiden - Live', '261', 277, 'd1/53/39a841ab0f9380fbcacd0bc275e430f9ec4014bf20478d90d7c2b0c63174.mp3', 15, 11831872),
(2886, 'Caught Somewhere in Time', '445', 278, '06/7e/928d907bfc31de22866324caf4e5240c900690e3af2fa6b777b74a390aa7.mp3', 1, 17853429),
(2887, 'Wasted Years', '307', 278, '3a/68/08ea84603a6787e8d1a9d01fc5a225efc5bdf86d4c609d4475b4b22a68d7.mp3', 2, 12323805),
(2888, 'Sea of Madness', '342', 278, '97/c5/49d963e80150a4228cd721f6f27d83243e564ef9b42cf999b343eb35a490.mp3', 3, 13698895),
(2889, 'Heaven Can Wait', '441', 278, '74/2c/59fe7f131819efab71db42604fa10ea3428c7387ad5badcac598ea79690a.mp3', 4, 17676823),
(2890, 'The Loneliness of the Long Distance Runner', '391', 278, 'e9/4f/6334ae8348c74285e305aa2d6335a1849b68295dd000d4842b8eb9887a80.mp3', 5, 15673808),
(2891, 'Stranger in a Strange Land', '344', 278, 'f1/9c/4dc34087a6bcb2593e4fc351994ef4bf61328de657febdaeedbb825a5eb6.mp3', 6, 13799229),
(2892, 'Deja-Vu', '296', 278, '9b/fb/c903f15389c1f3c977e8abefba604f004414d5b45b5ed36c4bbc63be3bb0.mp3', 7, 11867200),
(2893, 'Alexander the Great', '515', 278, '87/8c/dad651e2965d36bc78c7eac82704734cf1a8d1f1b2fa7c8f52d926562763.mp3', 8, 20646431),
(2894, 'If Eternity Should Fail', '508', 279, '96/4e/d9a465643fda2ae5e46ded32428d69c3244ec6e25c013b8f58bbbf1e6e9a.mp3', 1, 20419470),
(2895, 'Speed of Light', '301', 279, '44/6d/bc01423520156c0155a4c27f17fdbca9f830fe23f8c6929f5c9653ab0482.mp3', 2, 12161624),
(2896, 'The Great Unknown', '397', 279, '6d/ba/3a2e2f29f65197d6babd7536b7009f117f15c5ca38dcba6ba9880cf0d64c.mp3', 3, 15997450),
(2897, 'The Red and the Black', '813', 279, '73/65/1e52ab46313d74d616570be81adc95124e45dcf8e112cf0e9e2cc887cf4c.mp3', 4, 32640593),
(2898, 'When the River Runs Deep', '352', 279, '1a/97/adde8e129a8f910f1b9726809e52560e78ac3dd7e0ac9cf4c4b5c5cfd855.mp3', 5, 14206509),
(2899, 'The Book of Souls', '631', 279, '26/b9/8dc2be5db5a38823647d599a2b791411191ccc9562359c58a26c321d358f.mp3', 6, 25356601),
(2900, 'Death Or Glory', '312', 279, 'cf/d2/2ffd92de5d461145f5ef3794a16386489f12581315205156b13e80ec6ddb.mp3', 7, 12605705),
(2901, 'Shadows of the Valley', '452', 279, '78/3f/41722a1fadb983ca049913e74f1bcebc39b043b5aecb91d4c4057e939d84.mp3', 8, 18189654),
(2902, 'Tears of a Clown', '298', 279, '7a/3f/46360230c28bfd0b981d50d6ecafd79c550225ccb0bc3034e56074c8a940.mp3', 9, 12047734),
(2903, 'The Man of Sorrows', '387', 279, '42/5f/c08c275153a29c11102acf51af3d71544d2b54f33b0aa4506b6032411276.mp3', 10, 15593077),
(2904, 'Empire of the Clouds', '1085', 279, '66/0d/a5a171abae4bf87d1521cb37e9745574de244cfd8a8011ba096317a1424a.mp3', 11, 43503351),
(2905, 'Satellite 15... The Final Frontier', '521', 280, 'ec/41/c719beef0b2cc7fe7f28e958e8bab1e92c3631ce0d70d5b39f6fb6497962.mp3', 1, 22064851),
(2906, 'El Dorado', '408', 280, 'b6/cf/2cf4f700068fadb9c3e5788403141ef2b34c31d51e90f2d17c62e4f5c064.mp3', 2, 17579055),
(2907, 'Mother of Mercy', '320', 280, '4b/8b/c7d07d36c0e676569d5eda3341bf6ac6a8ef307f4a0bb464bc0526b7e1dd.mp3', 3, 14032683),
(2908, 'Coming Home', '352', 280, 'a9/e2/769e8ff46e3655344ff89eb5045308995f5b2f1f22d06efd4ec2c405e83d.mp3', 4, 15325214),
(2909, 'The Alchemist', '269', 280, '31/91/306efbf193087a144949735db9cd984a06b38ca6625f236b88666a26320b.mp3', 5, 11986769),
(2910, 'Isle of Avalon', '546', 280, '63/c4/296ef1a2e3b39a25eb5c7d700a03c16c2474ad16da9e503e2c45fcda8c78.mp3', 6, 23068958),
(2911, 'Starblind', '468', 280, '22/7c/9a23656acc05e74316d1330ad0734b6cc377cb6e665352b27a31d4e73f80.mp3', 7, 19961422),
(2912, 'The Talisman', '543', 280, 'd8/da/0bf73513cdbd6d3ceb3f86b78415ccbb37d2e3a5f9be0a9784d3087ee663.mp3', 8, 22951926),
(2913, 'The Man Who Would Be King', '508', 280, 'fb/c5/51432d2f1df12aeba759eca37ce338c2372f092ca7928fd7e8f0ab56d874.mp3', 9, 21554923),
(2914, 'When the Wild Wind Blows', '660', 280, '8e/e0/24c0651b7e16d1f0300074d4c72e6b01aa10969da0a88d0c550291ef6afd.mp3', 10, 27657125),
(2915, 'Invaders', '204', 281, '84/cc/cae6d5eaa3066708754476074c9e8dde299d123bb714fad63d46aba0c793.mp3', 1, 8338688),
(2916, 'Children of the Damned', '275', 281, 'fb/6b/347ef0b938a5eed47d6b681cc137a49ae568d8bdec347a12a066ead89e1e.mp3', 2, 11190242),
(2917, 'The Prisoner', '363', 281, '48/b7/f433be6021b72fc95e068142501307f59e5e827ca02cf6abc17387b9f8c1.mp3', 3, 14694836),
(2918, '22 Acacia Avenue', '397', 281, 'a4/81/3671ccd395631106463db79763afdea0ff5729f28c37d3fb82468cff8a28.mp3', 4, 16067840),
(2919, 'The Number of the Beast', '291', 281, '80/46/0a4c26970e76ad9063bdd1dcc17fa8bac607c7d11a706e9dbfd75bc56687.mp3', 5, 11817183),
(2920, 'Run to the Hills', '234', 281, '67/41/0ac4d6aaa9aa7c48b37850ba0a594938c669d5a747b21ba4cb0ab1004a68.mp3', 6, 9520483),
(2921, 'Gangland', '229', 281, '98/b5/6f9be28756232cda21377d8da488f7db1ec2fa2ebc16b201a49c8b1550b2.mp3', 7, 9320940),
(2922, 'Hallowed Be Thy Name', '432', 281, '16/a8/a8199663b447a2af1f644fe618e55689cdd4d407db1fdcd3624395eaee8c.mp3', 8, 17474254),
(2923, 'Sign of the Cross', '678', 282, '6e/82/e97ffa420d09b5667f958ca6048560181b8d64f16ef3e6b35ea3138ea085.mp3', 1, 27288446),
(2924, 'Lord of the Flies', '303', 282, 'da/c3/dd5bf4becb0f03982a1cea9a6589413ac0b1b6c66b062c12e07143274b0a.mp3', 2, 12315943),
(2925, 'Man on the Edge', '253', 282, '7e/94/cec94318ee9cc0da32305e51047041cb26aea2526d366fa22d7cdda97fa1.mp3', 3, 10304511),
(2926, 'Fortunes of War', '443', 282, 'c8/1a/5210cd3f2056d4b6c8a73b7fe05efccdee57d925abf68ceda0e1a9780da8.mp3', 4, 17927041),
(2927, 'Look for the Truth', '310', 282, 'ae/14/1db3444ccced81100aead37cf3ed4c34a857461d1081c5ea6bd7e6b9fc8d.mp3', 5, 12577170),
(2928, 'The Aftermath', '380', 282, 'ff/71/ab91925036b7e1563e8d485b9ef781b37e44de5b71cf4b1244850470edfb.mp3', 6, 15399429),
(2929, 'Judgement of Heaven', '312', 282, 'ee/cf/2e7098e1a91f87d44dd8ca7616c0d8db798c58f8b23195610178c453f40d.mp3', 7, 12667033),
(2930, 'Blood on the World\'s Hands', '357', 282, 'bf/4c/a65ed031b879284996e19812b512311d9f2aeeddcb0ece59e3562985c386.mp3', 8, 14479945),
(2931, 'The Edge of Darkness', '399', 282, '6c/a5/f3de9f5024369df8a87ffa731104266108a03bb31f02f331933dd777c6d8.mp3', 9, 16141321),
(2932, '2 A.M.', '337', 282, '1f/7f/682de7d68ae394223a06087d0212310d6896a1d5124c8955b492292d6e92.mp3', 10, 13674289),
(2933, 'The Unbeliever', '490', 282, '60/0d/b9d9c39eafb0d72f250597ae08ef99869b4d495d7e6db0fbc67132a0ed11.mp3', 11, 19784868),
(2934, 'Futureal', '175', 283, '21/28/eabf858a86a3630f4f9848f95490b718a0b169e39211207b20c0f0441ceb.mp3', 1, 7175330),
(2935, 'The Angel and the Gambler', '592', 283, 'f0/4e/2f50fbbf88036ef07d876936bb1d55ec9498d2b14c229617f829da1af095.mp3', 2, 23853865),
(2936, 'Lightning Strikes Twice', '290', 283, '73/79/89c2e406937bbc36b2bafe11c617a2ced8e130b75bf3a1b4564c443baef2.mp3', 3, 11759167),
(2937, 'The Clansman', '539', 283, 'c4/63/a915b4a47ff4872893770458ff22be8c160b34ceee5bf97c1917bf58a778.mp3', 4, 21731651),
(2938, 'When Two Worlds Collide', '377', 283, 'd0/fc/f08f60d0b13c489bcc6f607f7b40676d19b92978cc381a138c48a959d3a5.mp3', 5, 15236588),
(2939, 'The Educated Fool', '404', 283, '81/89/eff7a2829344780e6272b546738f05c399fb1ca59d5f457027f0271ad2f3.mp3', 6, 16334763),
(2940, 'Don\'t Look to the Eyes of a Stranger', '483', 283, '9a/ac/6922b9d8f15c656c30594ed2082c29ad287a122b3bf2d86be53912df1493.mp3', 7, 19490393),
(2941, 'Como Estais Amigos', '330', 283, '3d/d1/c7806a1a563377d8bc12b03c6d0da0ca554ba41acb3ead2fe50eff1caa9b.mp3', 8, 13355761),
(2942, 'Piece By Piece (Studio Rough Mix/Outtake)', '133', 284, 'ec/13/a93b0522a07c4b08f58801a6f430e2742231ccce8c90ee19562d61662db5.mp3', 1, 5557487),
(2943, 'Aggressive Perfector (Fast Version)', '150', 284, '6b/ec/808b0dd9f17a9fbdb2893f7dd31e3a6e9e876df052c65f78057b45fba697.mp3', 2, 6243973),
(2944, 'Criminally Insane (Remix)', '198', 284, '92/b7/2d1bc43efc963af38b926fd8a9f9f5fac8e57ee4b98d9a9ad4f884ffa5d2.mp3', 3, 8145668),
(2945, 'In-A-Gadda-Da-Vida (Iron Butterfly Cover)', '199', 284, '69/55/c4e4877642d7227ad0a0ac483a58fc698e8c750d66557cbb063b92f2d48f.mp3', 4, 8190671),
(2946, 'Seasons In The Abyss (Alternative Mix)', '397', 284, '09/8e/2e05331c450361c22a93468dbde91c827cccc6cb7684d9ca5fecd89a7da8.mp3', 5, 16113040),
(2947, 'Disorder (feat. Ice-T)', '299', 284, '07/7c/817396c0190ac1b07680481fff3e7bf4c5e600d80cf3cb729a0ad4a693e6.mp3', 6, 12196731),
(2948, 'Sick Boy (GBH Cover)', '134', 284, '54/c6/ae0fc8f8c7debfeefbf1907bf17108f950cccf4b915f14d32f41c9bf4564.mp3', 7, 5588811),
(2949, 'Memories of Tomorrow (Suicidal Tendencies Cov', '55', 284, '3d/17/3d529ecbe7856441e0e5e8ff5b007d5b5fb181a70be884b0694a4ffe04e8.mp3', 8, 2418679),
(2950, 'No Remorse (I Wanna Die) (feat. Atari Teenage', '256', 284, '70/6b/5152437f747fedc2740a242d8c24078a0bb556fa4afb1d9bc1db2d874e36.mp3', 9, 10467483),
(2951, 'Human Disease', '266', 284, '0a/e5/5eab6253131613c4638a7545678912d79cf5174f88c2407cc73fb596f1c2.mp3', 10, 10864468),
(2952, 'Unguarded Instinct', '222', 284, '73/ca/68da35b72e237c0767e33ac7f7e17d0511c119226c1889f1fd762ee08986.mp3', 11, 9133082),
(2953, 'Wicked', '360', 284, '2b/15/2775a87f5caaf6f3a5bc9e3320ced803d6881a06b3319ecbd833a68b834e.mp3', 12, 14645940),
(2954, 'Hand of Doom (Black Sabbath Cover)', '315', 284, 'b8/da/04cb0e1dc9cd94407497d713a365646419bd8521cf12a75d1c1c765f4f00.mp3', 13, 12842541),
(2955, 'Scarstruck', '209', 284, '05/36/4a42116c654598e650555a0dfd48653182d7ae4eb0ec1c7ab38977a92dcd.mp3', 14, 8592854),
(2956, 'Addict', '221', 284, '7a/2f/b048b0e0da6412f51333863d7170371f50d1e1d6b5544fe00615c9a074fe.mp3', 15, 9082903),
(2957, 'Born to Be Wild (Steppenwolf Cover)', '184', 284, '0b/97/e43122c3420bf2017ed11696fb62a199092ecad3485e8e84da6bea639771.mp3', 16, 7605510),
(2958, 'Cult (Radio Version)', '280', 284, 'fc/0c/e7330be23a92bcdefbeb12033cf3b71106733cbcc933b1029dac8829253a.mp3', 17, 11441266),
(2959, 'Jihad (Radio Version)', '212', 284, '8b/ad/2d21907414107544557c232f7725e760c4031bdb2dfe1a296d9d0705c1cd.mp3', 18, 8715129),
(2960, 'Black Serenade (Alternate Version)', '178', 284, 'fb/bf/4aefeb1df17816d7c2002f2b0787181018119bb77453f6ad0e80cd859813.mp3', 19, 7374551),
(2961, 'Final Six', '250', 284, '55/0c/7c09190415f82338da72e98638dbb38aba57796d59ac59c1537fbdae0efe.mp3', 20, 10257374),
(2962, 'Atrocity Vendor', '169', 284, '75/27/72411d869db8d57833dc33bfde2db71f2723aee14432e69edcec5803e448.mp3', 21, 7015068),
(2963, 'Flesh Storm', '251', 285, 'f5/a6/8d8b0cfc446ba94e601a5250e4ab0c7fb34f561fd69b82bcd6998c38f0ed.mp3', 1, 9606433),
(2964, 'Catalyst', '186', 285, '55/b4/84876accac18dcbcfbd96793b69c1656abe05487ecf9dbe23c36a98bab06.mp3', 2, 7426817),
(2965, 'Skeleton Christ', '261', 285, 'e1/f2/d160466b26e001eee1566b734c46299aa20d694b98dc73acb81a49cfbb9b.mp3', 3, 10195762),
(2966, 'Eyes of the Insane', '201', 285, 'c8/b0/61166813eb3fe0e3373875a309f3df7a7dea74b45015a770ea9bdc4973c8.mp3', 4, 7812262),
(2967, 'Jihad', '209', 285, '39/a3/7d8b98508ee81b7081dd35e602a311cf1dbe9ff5f58d7f99624da9cde04e.mp3', 5, 7956517),
(2968, 'Consfearacy', '184', 285, '58/35/6bfded019132fb750aad0c34b0ddf64cac5d6b0cd6a43432f24b0ae380c1.mp3', 6, 7553215),
(2969, 'Catatonic', '292', 285, '57/65/c13743a6cf60609ff00564705ab8360e634c98ae60686821cfa2a1c3c663.mp3', 7, 11055062),
(2970, 'Black Serenade', '194', 285, 'cd/63/876719f14976e45d62d1be2e5d06d544ecb6695341613c0150aac7d1049a.mp3', 8, 7680889),
(2971, 'Cult', '278', 285, 'bd/d2/857c589fc2df69d02f43626dd307b0545fc9a95d4f34a2e54368f8e12419.mp3', 9, 9823573),
(2972, 'Supremist', '230', 285, '49/08/32e0e0cbc1f3563ca091a934deeece8e94009fd0e71ae614eb126124676d.mp3', 10, 8866021),
(2973, 'Postmortem / Criminally Insane (Remix)', '405', 286, 'b5/f4/1cb6a0e3cf8f770ff5b4e6ba72c5241c08806451657a84a1480680e973b8.mp3', 1, 16299667),
(2974, 'Aggressive Perfector', '151', 286, '4f/c0/f16f06592dc3b0b0848dea0d0666b8a59514dd01f4612442566c6c432883.mp3', 2, 6156240),
(2975, 'Hell Awaits', '410', 287, '96/a6/75c305ea2b346444cc7d157e0818080cb1b4bcd1ff0d7b7b6dfe76997249.mp3', 1, 18287241),
(2976, 'The Antichrist', '234', 287, '29/45/6e97ca91be9347a5e1920b7b0aa228658d5ccdaf0a196457810eb049f676.mp3', 2, 11261127),
(2977, 'War Ensemble', '293', 287, 'f4/68/bb4c2e4e13dcec390afc0ebd9a59e9941b30e398cfe2f838b4839b269d09.mp3', 3, 13614299),
(2978, 'South of Heaven', '265', 287, 'a4/0a/ff0562d9572b42e57729f38e279fc9420cd051535a0fb324839808f169c1.mp3', 4, 12486785),
(2979, 'Raining Blood', '152', 287, 'fc/8d/1ab859b2c29f7d2ebae7581850d5a233411114bee9b292b62fb488631e96.mp3', 5, 7959997),
(2980, 'Altar of Sacrifice', '168', 287, 'bc/14/4dab974090d2c9979b1bb1a9dc15f0051dcbaef74daf11bd696236908c58.mp3', 6, 8604155),
(2981, 'Jesus Saves', '252', 287, '27/56/15524c1e60f44b4a41772a931fb72b42c219539fced4548aa3ff655bee5e.mp3', 7, 11958513),
(2982, 'Dead Skin Mask', '298', 287, '6c/37/f5f69f055c5e3c4c67f00c8f48acb78662230852ed267fb7117222292597.mp3', 8, 13810575),
(2983, 'Seasons in the Abyss', '421', 287, '98/15/2bd32eead33d7adfeda9cf0b9f1f4039a1624dbb82a73fcb00e1742e251b.mp3', 9, 18714255),
(2984, 'Mandatory Suicide', '241', 287, '52/95/c912599e6dacb8491a0725278181831a7d75f13348c69df36dc01bfa8cfc.mp3', 10, 11524221),
(2985, 'Angel of Death', '322', 287, 'f9/70/c743c181ce3686c29fe18e939be6a473d1699d96c13747ea456d3ab8bce0.mp3', 11, 14786715),
(2986, 'Hallowed Point', '218', 287, '90/21/d9a0a0f99e117a7e08d0b89e46ba489fb1ccec537eddc1e99a42b4ce9e00.mp3', 12, 10600275),
(2987, 'Blood Red', '192', 287, 'b3/dc/8a70099ed04c0c96774a1039391d1e259231821a8d2098049899f4230f9b.mp3', 13, 9567749),
(2988, 'Die by the Sword', '197', 287, 'cf/e9/16a1888642e6f0ce831a41975e8275f063e4f709645821b92aa14cdee3f5.mp3', 14, 9764035),
(2989, 'Black Magic', '215', 287, 'be/cb/af8c9542d1c85b55da48df9a96e6932f47dccf6ecc3a0de9cddc44e5dd42.mp3', 15, 10477077),
(2990, 'Captor of Sin', '204', 287, '9c/77/1a47a1afbafde1762a62b67ce2e434db6463db9050eeded812e19a1f562c.mp3', 16, 10059481),
(2991, 'Born of Fire', '179', 287, '22/1f/df34c4d73fed381f79f2cd18cd2ceb894658f8329cdea41fbe85c79bded7.mp3', 17, 9073943),
(2992, 'Skeletons of Society (Bonus)', '291', 287, 'e2/0e/098a4cb0ce63716649316a891cd08a2f97facf39413b3c527e2dd0409d27.mp3', 18, 13531855),
(2993, 'At Dawn They Sleep (Bonus)', '386', 287, '91/18/86fce4d4cbb8b2f03e8d8409964e8bd0caa2dcc3b368c53b0f450b74a637.mp3', 19, 17311131),
(2994, 'Postmortem', '244', 287, '6c/1b/a1b8fe500b5d2d15c97564327103da1559dffa92d0a0d09f74fec01d420a.mp3', 20, 11663059),
(2995, 'Spirit in Black', '262', 287, 'b5/a8/9e2fdc990191e48d6c5f38e1248da6c1eeb0c419047e69761654b562e64f.mp3', 21, 12353153),
(2996, 'Expendable Youth', '268', 287, '3a/1f/4b9214fbc3ab320d7f9dfc6e46a6595241ab6fd7a3086dc8bb0694508261.mp3', 22, 12593275),
(2997, 'Chemical Warfare', '325', 287, '3a/a7/2c484da4c034fd4efe484fc207eb2a159dc14a906632d10c0b0a2ed5ce08.mp3', 23, 14891119),
(2998, 'Bitter Peace', '272', 288, '8d/10/1e52f7e0d6ab314a34822615d3e059ca0f8aaa19c5000fcfc2c836d90225.mp3', 1, 12312690),
(2999, 'Death\'s Head', '209', 288, '4d/15/97a4ce0f22130a01a2012fd783d19b1fb7ccb7e13350890c1df8fbd7a060.mp3', 2, 9798738),
(3000, 'Stain of Mind', '205', 288, 'c2/30/7ecf3a02993621ad321e10d6e0e7a33e9e8c9818f7fd96546a1701bd1fb8.mp3', 3, 9625436),
(3001, 'Overt Enemy', '281', 288, '45/e8/dc4172f15423783d8ad2e4b0f334e37ac1ecb7378549947ad377b009071f.mp3', 4, 12685396),
(3002, 'Perversions of Pain', '210', 288, 'ca/64/81eb991c7a9434daf92298251001f5eb7472098c0cb89fefd252c952f903.mp3', 5, 9848864),
(3003, 'Love to Hate', '185', 288, 'fc/5f/e9e4cc6f6b5d23e0d26c46243f897094192fbb76543b0d99963f622ed114.mp3', 6, 8859138),
(3004, 'Desire', '258', 288, 'f1/3b/26f5b0f84e363fddb078b7fcc0b100fdd61a4842f3ce11c7f07dcb5d2452.mp3', 7, 11766666),
(3005, 'Unguarded Instinct (Bonus Track for Japan)', '222', 288, '2a/10/3a6b5a323de9b2dab4287a916a07cb6aa33e1e7caf7bd42346afb189294e.mp3', 8, 10335414),
(3006, 'In the Name of God', '218', 288, 'c4/a4/b53b9fabf606a99f633f24f6af0f07765dbe247c5da253aa82c698d4018f.mp3', 9, 10148490),
(3007, 'Scrum', '138', 288, '69/12/2a4fd99e245b6082066b55a1c66a3c23ca4b292efc8d573eb775a0800b13.mp3', 10, 6976792),
(3008, 'Screaming from the Sky', '192', 288, '9e/51/c6a5f289dc10cc471e6be8fea7a6adce99895887befada215bc9daa972e4.mp3', 11, 9128510),
(3009, 'Wicked (Bonus Track)', '360', 288, '89/8a/acdc8ee3943d92dfa7abe83ac0c96f2d766535b6434dd9a9b9d76aa0b691.mp3', 12, 15843514),
(3010, 'Point', '253', 288, 'd7/1f/c7307bdea0c7fc5253636e686f0f0c70d13a1de68916df6a25b4d2baaa35.mp3', 13, 11573524),
(3011, 'Killing Fields', '237', 289, '01/64/5424c553af04250aad593287a4a3736b44838c979624fc53ec77c0536502.mp3', 1, 10994429),
(3012, 'Sex. Murder. Art.', '110', 289, '1b/cb/79be1881e31b3f8e49c9c1e4cbf0ad774b278091f8a8309420576a72dddd.mp3', 2, 5903891),
(3013, 'Fictional Reality', '217', 289, 'ed/ff/c7cac33818b66a50093432cca02158dfa02130d75366fc7a62d2db1f36a2.mp3', 3, 10204127),
(3014, 'Dittohead', '150', 289, 'b1/af/4faebc9c8d67fb9ad63bfb8c73b5a476ef30d53890a4c502b5bf9a0b55f6.mp3', 4, 7527295),
(3015, 'Divine Intervention', '333', 289, 'c7/e8/a354fe95aff263c7d21d9bc1a9fb1128fcd15ad2f7a6bc685aa267fe71f2.mp3', 5, 14820699),
(3016, 'Circle of Beliefs', '269', 289, '4d/a0/4f27ff193b2428e2f7545ee08c2a34603b1aa78ee567778be9d53abdb6d2.mp3', 6, 12282731),
(3017, 'SS-3', '246', 289, 'a9/cf/a010fb653c2153abc64201bae0d00cc1827ce09c5f5d9ae1f505c8001c01.mp3', 7, 11353545),
(3018, 'Serenity in Murder', '156', 289, 'e8/91/f077d4b3c3366e29fcb215a58cb66fc463cc670c3ad7a13846b85d4b1b3a.mp3', 8, 7758037),
(3019, '213', '292', 289, '8d/8a/e466b8cb73da1d416b70b5070874dda413c10f5acc672673ce41653b5024.mp3', 9, 13171147),
(3020, 'Mind Control', '184', 289, 'f8/58/545a2989c8ca84f461f1fd31022065c0268ac52ba87ce35cb1eca06875a5.mp3', 10, 8864866),
(3021, 'Darkness of Christ', '90', 290, 'be/39/49a17cb6ded35a3b9a9f6c28afd521746d3555c3a9913489b1dc3a873e26.mp3', 1, 3680312),
(3022, 'Disciple', '215', 290, '04/34/e1eef1f0d7665bd3d370c6e7b06a1ac80488830090e55a744ac056827c78.mp3', 2, 8680129),
(3023, 'God Send Death', '225', 290, 'ce/7f/4dd8114d9a2f63d08f888caa1274a0e077aa5cb6f57e07ef33e2cff7768e.mp3', 3, 9080337),
(3024, 'New Faith', '185', 290, '6e/64/65dc1a54a6c4cc6e472c4cebfe81f9e5c8a5a7218170e7de0dfcf39de377.mp3', 4, 7480588),
(3025, 'Cast Down', '206', 290, '41/29/2d4f29508c6de347bdc43e2a0a0878f28e09e8ce1b7a9f98bbd230f00640.mp3', 5, 8319641),
(3026, 'Threshold', '149', 290, 'dc/33/8688e6d58a279bab2903d5e8bcece5c4c765dcdf4e9d2aa248c03c55e19b.mp3', 6, 6039673),
(3027, 'Exile', '235', 290, '2a/2f/6c697680506964e6047801349dfed511744ce1557f0da721550104c1da5b.mp3', 7, 9480514),
(3028, 'Seven Faces', '221', 290, 'cc/82/85f76e4fa656a6d7f97277d56388c6ce88c550c742c1d155277612332001.mp3', 8, 8920461),
(3029, 'Bloodline', '200', 290, '62/9d/bb23acb7a0031a402a392c750755b834e3ddc63f9490484389a1dd96d202.mp3', 9, 8080359),
(3030, 'Deviance', '189', 290, 'ed/19/3e7524c096a34e27ddff1cce8e1fd1020ed93d29f5f9b28a7e8db71a6c27.mp3', 10, 7640455),
(3031, 'War Zone', '164', 290, '75/f9/9395866120b76ab6ab0e848c5d777aabdef8c8ee29e8e18d3cdada62a75e.mp3', 11, 6640488),
(3032, 'Scarstruck', '209', 290, 'd6/00/07528c262a47002d27c786c2574a0064a8b88e626cafceafcd4e18b8e28d.mp3', 12, 8439806),
(3033, 'Here Comes the Pain', '272', 290, '26/6c/86f8a2dcb315891bdff4275768c5be31ac87d06c950dbdf76c617f20f275.mp3', 13, 10960118),
(3034, 'Payback', '183', 290, 'ad/e6/2c527993346220044a4853cebc233640ba022d388bbc250f1459d94321a3.mp3', 14, 7400127),
(3035, 'Addict', '221', 290, '50/0d/ca31743796650a412702988ed2fe0ca6b70e321de2952980b321856a8b8b.mp3', 15, 8920451),
(3036, 'Chemical Warfare', '362', 291, '0c/94/a4ad952f44de3f5138562811925727ff8f86aff1f37246703a67a447d136.mp3', 1, 15563704),
(3037, 'Captor of Sin', '209', 291, '4f/38/b4b71f730f70811dfd8ccb4aaf46704dfce06b7c968dc718ef034887c9ce.mp3', 2, 9456298),
(3038, 'Haunting the Chapel', '236', 291, 'b3/a3/1d33f2efc3e5e10dc11d1b8cd67d11604ab09f7fa92ac8c30200edbda51b.mp3', 3, 10533718),
(3039, 'Aggressive Perfector', '208', 291, 'a1/b8/e1d54e68649d3b5e0a9c2e51c4bb1b09131865be6d0cc42e90091a32c3d4.mp3', 4, 9438564),
(3040, 'Hell Awaits', '376', 292, '11/dc/32103983d7a3b67975875bebbfece2957c504fb7de0b51bc407039f78934.mp3', 1, 16658148),
(3041, 'Kill Again', '296', 292, 'f1/3e/26b1549c77fff9dd13c05b001d34e55ee2e60ef5c965cb9b14eb5dfaa26d.mp3', 2, 13456198),
(3042, 'At Dawn They Sleep', '377', 292, '85/0c/bb3ec58c2fa2c805cd112f36ace8d7cab7b2fef6142f51bb668724ebd909.mp3', 3, 16706186),
(3043, 'Haunting the Chapel', '236', 292, '6c/ae/9191613e7d30405c3cb73b08ef6315ebcf24665db164d088f5a70fb11970.mp3', 4, 11060236),
(3044, 'Praise of Death', '321', 292, '93/f1/c5dd5192781811b5fcc27e0528067c9926e59a4d2ce51fb596d1c2586408.mp3', 5, 14455316),
(3045, 'Necrophiliac', '226', 292, '21/3d/1b2c6e07793cec9236df082edbf53824d716b94f7cd5c2bddf4e2c5f380a.mp3', 6, 10669766),
(3046, 'Captor of Sin', '209', 292, 'f5/a0/dda684d3d9dad2f9d32fc48db3cac6046db54e59f0969f174f240aebdb0d.mp3', 7, 9982816),
(3047, 'Crypts of Eternity', '400', 292, '04/ee/d29b54c96794a440bd5cee18ce1ba349f3fb87c1ab7e23b23f7d90c6421c.mp3', 8, 17614466),
(3048, 'Hardening of the Arteries', '235', 292, 'e6/5f/4f8f77a0095e6c81ce560f9bce25e7c7eade04d0cdd5b1f4f7eecfd72aac.mp3', 9, 11028928),
(3049, 'Angel of Death', '291', 293, '4d/f8/701482f466330a3dc527f572876da3bdd4c86a038c8ea23135eb9d37414b.mp3', 1, 13391025),
(3050, 'Piece by Piece', '122', 293, '3c/54/676ce9b7ce8d66ffc48e4b46c481bd4b324901dc25b43065efc913295fad.mp3', 2, 6629037),
(3051, 'Necrophobic', '100', 293, '64/88/53323ccb4fe1bc576845a26bf6b557f035af7d5c27ee8ccae4ef08308aee.mp3', 3, 5747895),
(3052, 'Altar of Sacrifice', '170', 293, '17/d1/01046243ebdd27d4f9f2ce930430c531aa838f17a7ebfccc5140904c2a45.mp3', 4, 8543741),
(3053, 'Jesus Saves', '174', 293, '0f/6f/65e115b0d9fab547da13a2d3807bb178a07bd1f63af06c97b8adbefc6cea.mp3', 5, 8690931),
(3054, 'Criminally Insane', '143', 293, '8f/44/da7a748051837fb74d20a54a9bf2f5bd759de3b771ea90bc1c5f936dce22.mp3', 6, 7445451),
(3055, 'Reborn', '131', 293, 'ea/e9/0f118684d092a5ba2db0e7b1817b7756cfb6317dd76a4009dc3aecb10296.mp3', 7, 6987113),
(3056, 'Epidemic', '143', 293, 'e3/ea/3bca1b87ce5ff99fe8d63dceae3e9456e5d546a1703d91ed892ce858315c.mp3', 8, 7447521),
(3057, 'Postmortem', '207', 293, '35/55/e5005729ce8aca7d1db3578e1119780c5f4ef4ccdac1965ce40a50547ce2.mp3', 9, 10022029),
(3058, 'Raining Blood', '257', 293, 'cd/74/b391fd5edb54b5a745d1a843fbc813857c3fca6236b69d5d33da4f401aeb.mp3', 10, 12001459),
(3059, 'Delusions of Saviour', '115', 294, '09/a8/9aa0197a13be43d5f3a9517abb6312672bb8168925f3f5c5b96007ddf3ea.mp3', 1, 3972589),
(3060, 'Repentless', '199', 294, '06/02/de6dd100a74024b5d04e7bd385e0b781841107f5cd40ccbfd649d49fc187.mp3', 2, 7317530),
(3061, 'Take Control', '193', 294, '11/49/1d634b500cea886bb0b0a451604fc445c4b36cb40591cbf9e9e3f2d263c7.mp3', 3, 7095524),
(3062, 'Vices', '212', 294, '19/fa/eafd19fc31dbb6ad36363091c5f239d521013db207ed939a5011940cfa3c.mp3', 4, 7830109),
(3063, 'Cast the First Stone', '223', 294, '71/4d/6c3771257fd8c513dc6afc98710a014ccfea925e2bf2ef7bf2c50fe8b1fc.mp3', 5, 7723739),
(3064, 'When the Stillness Comes', '261', 294, '6e/a9/0a73681d86ba18bd66be4369d9a1921249766379377fdfbdfa3c78a33170.mp3', 6, 8747224),
(3065, 'Chasing Death', '224', 294, '1e/39/cdd373eae0d28ad6b54a1723e90810355e6dd9dad75b1f3f5c30f75803e0.mp3', 7, 7938295),
(3066, 'Implode', '229', 294, 'a6/2e/bf1a9b69499484495fcc2d7df96a1d261571da1810db0d509adb9de7e21e.mp3', 8, 8060626),
(3067, 'Piano Wire', '168', 294, 'ca/da/36dc67b8ce37084741a8981ba52ca23cb07840edaf787185c556235864ba.mp3', 9, 5850735),
(3068, 'Atrocity Vendor', '174', 294, 'dc/da/01f353ca1bb71aadfc5d4fb1e8a89a3aaa04f191827987aa6e2031027288.mp3', 10, 6449495),
(3069, 'You Against You', '260', 294, 'de/06/eee658ebd178fbb0b535227380b41c66764992e372fee8c9fd757d02381b.mp3', 11, 9611538),
(3070, 'Pride in Prejudice', '254', 294, 'd9/4a/ddac3d1faa745c713cf65856df5ae30582fe769fc523af9e0d25c1f6974c.mp3', 12, 8923057),
(3071, 'War Ensemble', '292', 295, 'aa/8d/8aece64de2f763ad9f539d0f8826e66cd386922bfd7ff9cfd3bd91e57c4f.mp3', 1, 13331731),
(3072, 'Blood Red', '168', 295, '3a/10/835570a2a4bb1727347d462a9852ba2b23f610ec659130675690fde680b6.mp3', 2, 8366461),
(3073, 'Spirit in Black', '247', 295, '6d/69/696b5c9c9c08773e2f8bf7d4ba9b1893baa443429ea931bdc358e46762e4.mp3', 3, 11540233),
(3074, 'Expendable Youth', '250', 295, 'f9/6d/df20c78645013dc59d54cabb54f0d9a3524ad6179d1159c398b0c7cfc0e6.mp3', 4, 11645679),
(3075, 'Dead Skin Mask', '319', 295, 'e3/60/61f1a8d0c886804161dd6e8906c5666a142bcf495df58827442b6dc382b4.mp3', 5, 14421671),
(3076, 'Hallowed Point', '203', 295, '9d/59/7ca0943cd9de8af747e6d9bcb36db15f928ab715f68b228671567a9b7c44.mp3', 6, 9794663),
(3077, 'Skeletons of Society', '280', 295, 'b6/f9/6c1242d647f0e85cd43b4d5b1c944c0303f115c57c4448df2c05425d5afe.mp3', 7, 12862991),
(3078, 'Temptation', '205', 295, '61/70/932f8625b71b68fe791b7e4d3a7194c365c878d1e1638e58fa3b58c1fa96.mp3', 8, 9880263),
(3079, 'Born of Fire', '188', 295, 'ea/45/27f56ced3d95719405382ffa362681984f512aff8d49e7f4b9a5d3438fb5.mp3', 9, 9161995),
(3080, 'Seasons in the Abyss', '394', 295, '37/3a/cca2f89355121af1de685ed2d5f30df255c1f949bd888a3a33337ede0164.mp3', 10, 17412743),
(3081, 'At Dawn They Sleep (Live)', '387', 296, '02/a1/618ccd3f038aed84ed149b09a5aae186e0c15fbe6457d6fb4aacba53c5d0.mp3', 1, 16909061),
(3082, 'Dead Skin Mask (Live)', '321', 296, 'bc/4d/dbd66197dd883a2c7e9d8f82cf9f48b731f0e926cd3bc5d64718ed457129.mp3', 2, 14259381),
(3083, 'Divine Intervention (Live)', '308', 296, '2b/06/f4f3f44810003e66cd71f2dbac66363822bb00edf5cd597ed48215e124a7.mp3', 3, 13768711),
(3084, 'Dittohead (Live)', '166', 296, 'de/3e/4b4d0de1ffe7446ffdaca524e0cc185a0cf8526700b777e9ea8746bc578e.mp3', 4, 8090375),
(3085, 'Serenity in Murder (Album Version)', '159', 296, '92/a4/9f27c2d9933630671118593058fbe0939ac72c5b8d0b5b423a80437a5311.mp3', 5, 7800179),
(3086, 'Special Message', '176', 296, '17/8c/07b8be8798c61cdfdcf95247d99a66f6c998dc02f445459e20fb032b35df.mp3', 6, 8478741),
(3087, 'Evil Has No Boundaries', '189', 297, '1d/9c/dfc1621b6deaab49de3d77b7f0b2787cea907883ceacf782802840eac4eb.mp3', 1, 8985199),
(3088, 'The Antichrist', '169', 297, 'ed/8d/fcba7c6132b4a9fd9d9b9f79991d8df77bce69bfff58261c43d4424968bb.mp3', 2, 8196963),
(3089, 'Die by the Sword', '216', 297, 'eb/93/1c5b84360f3c56034712dc19608f63779a6a07e65fe63cb92d6a8e33616c.mp3', 3, 10090783),
(3090, 'Fight Till Death', '217', 297, 'a4/a1/60b3d39c5ae71faa8e06a61dcd09e1d7e03c085e35380c76dc7c078679ac.mp3', 4, 10107487),
(3091, 'Metal Storm / Face the Slayer', '293', 297, '98/16/0126d55be06ada81ead4ec9a3638646718669969a794bb18988416db703f.mp3', 5, 13137201),
(3092, 'Black Magic', '243', 297, 'b9/42/2a99d1024feec77f0145e825ce68cacf102e6dd418d5c80b43ef5dc5d469.mp3', 6, 11147301),
(3093, 'Tormentor', '225', 297, '60/02/470b155c63ae77fd00dcc8c7dc874f06ebb18b3b5581ecd84990dc014e8c.mp3', 7, 10426937),
(3094, 'The Final Command', '152', 297, 'c7/93/2164e0d2431dcf32da16043eac74876c3bd2cbb12427b804b09cddce824b.mp3', 8, 7502709),
(3095, 'Crionics', '209', 297, '09/f1/b3ca35e5674499c5e67aa35baefcd3b7407c757214e6a29c9926b1af6aac.mp3', 9, 9784875),
(3096, 'Show No Mercy', '186', 297, 'd1/34/2ae5e0f0c145ed3e36193fe205449cf01003464c8c3733568ec9cd7badca.mp3', 10, 8854681),
(3097, 'Chemical Warfare', '362', 297, '0e/7b/bc23df3e73a4fffbfb4f43fe531fb36260461536c343fa8fc90f66b562c3.mp3', 11, 15887071),
(3098, 'South of Heaven', '298', 298, 'bd/06/6070886aad32794491c5cbb6180c5726995e679bfee1e7420a42de6ce88c.mp3', 1, 13473293),
(3099, 'Silent Scream', '186', 298, '00/f9/d115266c63dbd2cefd4a0eb209f9099de8558f9bd134ae0a5d142bebbc4e.mp3', 2, 8998705),
(3100, 'Live Undead', '230', 298, 'd5/4e/8da7ecb97d32b9877654b6d74f8ac5bbe7a4573326920290a1ef2013691a.mp3', 3, 10734873),
(3101, 'Behind the Crooked Cross', '194', 298, '96/2e/84f64abd5da9972257fb92b577ea846696bdb21dc0c8cc60f670791738a8.mp3', 4, 9323411),
(3102, 'Mandatory Suicide', '245', 298, '90/0c/99bfa1f0b5ddf4a08cc1092ee37e9a6287c7a7d236665ea6e677635bc70d.mp3', 5, 11339361),
(3103, 'Ghosts of War', '233', 298, 'e0/5e/e08bf9ccfe513a9aa758e929dd90e51c98520abb06441a8c2a76ebc977ef.mp3', 6, 10871641),
(3104, 'Read Between the Lies', '200', 298, '02/93/4714afc1ab56a3add5514fe1bbdf635568380d049b5bd12707ca4fbf441e.mp3', 7, 9543689),
(3105, 'Cleanse the Soul', '182', 298, 'f0/c5/076eb4b4f8be11f5eca49f8f1e5b50f8c4922c05be6fcd48957d81345dee.mp3', 8, 8816011),
(3106, 'Dissident Aggressor', '155', 298, 'c6/1a/498a27c2ce78fe96fb837ef561c277080ebb8f72996082e4d10a218cbbfa.mp3', 9, 7744873),
(3107, 'Spill the Blood', '291', 298, '4a/0d/420d5504d8f7ab6f347c81790a700c6727c0cad1cd762427817c9bf4ac81.mp3', 10, 13173665),
(3108, 'Stain of Mind', '206', 299, '54/d9/1ce63658dd3991b7974eef6859595ee86aba20fc8825407fa4250ac6f515.mp3', 1, 9376445),
(3109, 'Raining Blood (Live)', '141', 299, 'f6/2b/2e787135715c997a037d15e6f2858503fcd4bcc29d176e43b35277bc9874.mp3', 2, 6797779),
(3110, 'Angel of Death (Live)', '297', 299, '20/8c/05dbcf9e6c202ef95ec4b41db2348cd28855e8a91012948d2e2d3ab75287.mp3', 3, 13024197),
(3111, 'Mandatory Suicide (Live)', '239', 299, 'd1/96/bb13cf54b64d3b9c02594b56224c99d5ec639e32f6f75b0af09130290146.mp3', 4, 10711743),
(3112, 'Chemical Warfare (Live)', '332', 299, 'fe/41/581c827f5cda1ee3731faa6960e39a263575833967d61f667f4029673a02.mp3', 5, 14428381),
(3113, 'Free Money', '101', 300, '14/a5/c220bbc0da564262da72c2cf05c63d000cc27fb0be077ab9d941b1a755ae.mp3', 1, 5303601),
(3114, 'Leeches', '118', 300, '5d/e6/34507958c9dbdee61a5e98ccd7242dc0ad6b1b380c7fcf3a4e61336b415f.mp3', 2, 5964447),
(3115, 'Superficial Love', '107', 300, '4d/85/0542386c65e028301c6f9e292df0b17ee5c340d3317fdace3cc276223a8f.mp3', 3, 5538513),
(3116, 'Can\'t Stand You', '87', 300, '56/bf/aa78a46f0335338af053a2e3466e2506fd47702609bdde91ae1cab7260d9.mp3', 4, 4748203),
(3117, 'Ddamm', '61', 300, '94/8f/ce298dcee0a67f75918681755f646c443863b5b06635c5d1463fb4371704.mp3', 5, 3703139),
(3118, 'Guilty of Being White', '67', 300, 'a2/98/e3e6bdd1845580025308140e0b7e773bba870c5aaeaa52d3ae0405cf971c.mp3', 6, 3923455),
(3119, 'I Hate You', '136', 300, '5d/7c/ea97b307a06adedc139b9c6cc98fb4fa5686928838962a5a50d9d97f4e2d.mp3', 7, 6700473),
(3120, 'I Don\'t Want to Hear It', '148', 300, '6e/49/e6de47c67a69aa7a2b002088adf9e4de910ef4cdb373d59cdc418c3aaa6e.mp3', 8, 7179695),
(3121, 'Spiritual Law', '180', 300, '22/23/869aee5592c579c0b4843a681f3bc35c3446abbc663f73c696ca670a7150.mp3', 9, 8441871),
(3122, 'Sick Boy', '134', 300, '12/c1/1287eed4b469534e265bf8c298cf5c5e96693350222433418d477041f8ac.mp3', 10, 6611729),
(3123, 'Mr. Freeze', '143', 300, 'ad/26/eb6a36635fb5cebf1b458e91ffd66822c5c14da5b9668c7bcebe9e0bfa65.mp3', 11, 6998013),
(3124, 'Violent Pacification', '158', 300, '2f/99/c2950a3c0630023ad3d855b9c5a99b1727b25115a3b4e541b36a76b4e4d2.mp3', 12, 7569101),
(3125, 'Memories of Tomorrow', '55', 300, '60/08/8410e4c5edcc11eeeb5bf50727062a890cc01a3609646d75f864b3bb8f39.mp3', 13, 3444257),
(3126, 'Richard Hung Himself', '201', 300, 'b6/0b/db184ec80c3f8ffc1ff1226eeddaf769d5f17507eee672ea5c25fe7a5de8.mp3', 14, 9317801),
(3127, 'I\'m Gonna Be Your God', '178', 300, '00/b7/7bb5eef017467a7a4fe2636289e9b1991c9cc4b8f79acdf0e260a48766e4.mp3', 15, 8382379),
(3128, 'Gemini', '294', 300, '29/7d/6d8f2f003ae5f31fd91d462e4c2e1074ba92cf3fe040d07878b77df825d6.mp3', 16, 12996829),
(3129, 'World Painted Blood', '353', 301, '47/5e/04da955000a658a61d6b48c0cdf455ae038f9a749b23bb7de067ea2ebe28.mp3', 1, 10873444),
(3130, 'Unit 731', '159', 301, '1e/06/b2344fb1ad8fd7d85d8a47b7b0c97bc14dc88911edc71f41f3babf9bda0a.mp3', 2, 5154229),
(3131, 'Snuff', '222', 301, '10/a0/d02ca30a58fbed13eb62fa75bd40ffbda52c89ac58bcc619b300cd231e43.mp3', 3, 6938352),
(3132, 'Beauty Through Order', '276', 301, '19/12/9a73aada9795a77d6863277300426b1469c6fc0045e5b935dd8f8cf99adc.mp3', 4, 8354209),
(3133, 'Hate Worldwide', '172', 301, '67/7a/5d2691639320355068f764b4cadc47d12e30789b79ee16e6307a51e6ae5e.mp3', 5, 5232883),
(3134, 'Public Display of Dismemberment', '154', 301, '2e/91/c2a0a0a61e6baf760903acc67c5e3a39e6776dd05f875ca5e8745da6b03e.mp3', 6, 5120131),
(3135, 'Human Strain', '189', 301, '85/09/15b4f22c537d15ffafe53a58370a9dad6f51d90ac7945e6c96efebc0d7c7.mp3', 7, 5588993),
(3136, 'Americon', '202', 301, '10/40/51bea649e2255091f3628a5cb5e4b84235ebd3aa9afad879e76e354ffb16.mp3', 8, 6244660),
(3137, 'Psychopathy Red', '146', 301, 'e0/2d/28271568940b123d95e533bce96751e74c349afb1896d933053477323990.mp3', 9, 5041742),
(3138, 'Playing with Dolls', '253', 301, '04/77/21a014e5415fe40d1a9e3e848dd2869b980bbb4eff71100a9124ead14a49.mp3', 10, 7889879),
(3139, 'Not of This God', '260', 301, 'ed/a5/047ed769fcf297e30db1b656922dd6be7de85e771a0a8ed7e0e260e561c2.mp3', 11, 7982021),
(3140, 'Bloody Grasses', '292', 302, '44/6c/e6aec9f10e86f50c6d481cc210e85abb489d5ca92af6e972b8c78c0c11cb.mp3', 1, 11838873),
(3141, 'Nevertimes', '294', 302, 'db/ee/c077add95fd6fcb2db1b30ea773a8d7613333947f81713fe0043238811b8.mp3', 2, 11936041),
(3142, 'The Abyss', '273', 302, '49/ed/97b196cecfe69d88b2d77dc9182810d3f78842fedb6cbd75ebbc85492743.mp3', 3, 11082357),
(3143, 'Waiting', '368', 302, '9a/08/e59545173150a006b3297bb8755ac75070d841b7d26b384dcc8d6740d567.mp3', 4, 14902500),
(3144, 'Evil Times', '346', 302, '0f/b8/68898f2289205339d8b6379d7d3d4be8bbefc5e240c2d5d768e997323434.mp3', 5, 14023747),
(3145, 'Unknown Lands', '312', 302, 'd9/06/270f4f8f3cd995f36a5c9e2e6e876e3eb5e5374eb236c19603e28ca093ab.mp3', 6, 12650757),
(3146, 'Before the Epoch of Twilight', '289', 302, 'bc/59/cc32a530060c6ddc75ee20cd8225534512a1b56355460b2450b466271cf1.mp3', 7, 11726052),
(3147, 'Mother of Sadness', '213', 302, 'a3/84/6d6b2e3cf267f5c391370751cfd1bbf92a7ebcc6acb98b4327a9b40cb051.mp3', 8, 8698961),
(3148, 'Братство Стали', '291', 303, '03/fa/dbb87f9de295f71b3a13ac4a32b987ea703d9b8faa98609c591bb3236539.mp3', 1, 11810935),
(3149, 'Тени Тёмных Дней', '386', 303, '88/3d/5c6511e7e36294b23ad3892a0c72340af96974091bfe50f0e77921bd3424.mp3', 2, 15604963),
(3150, 'Храм Леса', '310', 303, '17/6f/f6801f530ca648635f584d45a14edb3e00349318fce3f60dbcd2793dff9d.mp3', 3, 12564296),
(3151, 'Время Ярости', '348', 303, '74/30/3c9a9ee05b35d957fcdb0191bd22533a833097b60ed22d70ca90de3f6f6b.mp3', 4, 14094033),
(3152, 'Молодость', '251', 303, 'ff/87/dbe476d161bb99924b902f8eecb3562720a6d06db8c4c5a0636e116ada2e.mp3', 5, 10198647),
(3153, 'Рассвет', '206', 303, 'a7/e3/eaf7985cb1eeadb6cde3322663dfb0f34a1e54464b44b5e1201b590a980b.mp3', 6, 8416047);
INSERT INTO `song` (`song_id`, `name`, `time`, `album_idalbum`, `path`, `song_order`, `bytes`) VALUES
(3154, 'Узоры Печали', '434', 303, 'ac/bd/e3b23f41d370e03b743e2615e9bab7bc789ff6de346142738735001b15cc.mp3', 7, 17519208),
(3155, 'Каменного Сердца Кровь (Outro)', '147', 303, '63/b8/cf7b7f02e072d75da09e125a232e6cb7333ba571430c6a432ac90ed4e3ba.mp3', 8, 6026411),
(3156, 'Intro', '284', 304, 'df/2f/e49ce0a3e20642b96d7ae040e768218589c285c4c6f0ae79f0cc0f66ca2a.mp3', 1, 11378428),
(3157, 'Тропа k Весне', '316', 304, '11/5c/0f976006d7044773ddc5bb5a8985b3c1d63ad7a88f06a809dd31adb40e21.mp3', 2, 12673073),
(3158, 'Вслед Молодой Заре', '240', 304, '9f/73/68f7e84f99d05eded723d04c2ed663a7d46e58347f571007aa9b18c0a31c.mp3', 3, 9618846),
(3159, 'Танец Цветенья', '326', 304, '8a/0d/ca4ac495d782ef3f05f7ff028413094e31e53fd5e0e4e1579a9664fe2e58.mp3', 4, 13058642),
(3160, 'Папоротник', '308', 304, 'd1/42/eb3f7dd44317e271569594a168d1c8e901eeff83e3e2498c9676e53977d1.mp3', 5, 12338699),
(3161, 'Хозяин Яблок', '308', 304, '85/5f/cc44f9af47cd61b2b1b362ad8cbf122048a32c55446871dc48e13e245bed.mp3', 6, 12338703),
(3162, 'Листопад', '253', 304, '00/61/9ab8a7297d09a4225971cb79e1b128b59fbf6e082c7e9b384a893cbd1db4.mp3', 7, 10142320),
(3163, 'Врата Зимы', '344', 304, '79/f2/3d4388f3efb0f7055952c7cb5827a580c8980bb221e4b22edf488bd27bbb.mp3', 8, 13778569),
(3164, 'Сны Тёмного Моря', '384', 304, '2c/5f/b63714e20784ccc847c0940a7adb04c6a0add3617827d8bc3c4f24bfa893.mp3', 9, 15378319),
(3165, 'Корабль-Птица', '360', 305, '69/5c/c7c6855d50ae057cc7481073ccd329f428bd1c29429a747da7e5793a8791.mp3', 1, 14540926),
(3166, 'Хладный Огнь Ночи', '330', 305, '4c/6d/89e9a09c83a0e10d6f886e117ba5d9dd9229514ab22c62e9e5547add3226.mp3', 2, 13368558),
(3167, 'Древы-Думы', '335', 305, '4a/31/3b2e08f84dbd0994a39c699aca690215deb42ec18fd8a1ee077a7307a887.mp3', 3, 13556626),
(3168, 'Несказанный Свет', '332', 305, 'ee/22/c91ab5c82ab20b1622da2d12da2b1c883bef1b23493a68d8ea784d5f5a28.mp3', 4, 13442744),
(3169, 'Чудосветная Быль', '415', 305, '83/ee/629e38e8c1c29c5ccfbb079813fc37d2fd2a97b5e64ccee3c4911521d3e4.mp3', 5, 16750891),
(3170, 'Алый Цвет', '333', 305, '3c/74/4637f5cd81392a877447185349666ff20ab06e39f089441e2eb3bdd14613.mp3', 6, 13458404),
(3171, 'Плач Княжны', '415', 305, '98/b8/84871dff5f34bb0072a74ffca77cddd69e8aeaaae6551433c912b6026bf3.mp3', 7, 16739453),
(3172, 'Новые Неведомые Земли', '314', 305, 'a5/ce/f0629a91fe7d6adc2c264c09f282829714dc617f184d5bcdb8e9db14827e.mp3', 8, 12712370),
(3173, 'Безвременье', '270', 305, 'bf/ae/049eba05df0aedd85a9f2e7d1db3978f8e709588fa6397f699afaaebec21.mp3', 9, 10967371),
(3174, 'Река', '294', 306, 'cf/cb/77bf3c35ec4261605be97f149712c4f87852d3080c94804bd61289cbed5a.mp3', 1, 12121783),
(3175, 'Жемчужина', '259', 306, '1f/5f/6bba887a41879505c2ad4f574eea3e97fca4a52de85256ed44ceac12a0e8.mp3', 2, 10728944),
(3176, 'Русалка', '277', 306, '32/b3/f0b57623f19c00e971ab0a19fa149e3e0da5aa87159064bb20c953061c6b.mp3', 3, 11462459),
(3177, 'Невеста Лешего', '247', 306, '1d/ff/ccf79cec14ed565c4855dd6720cdc89722c9c60f5c1efb4b20a6d87d53ac.mp3', 4, 10274424),
(3178, 'Сражение С Бездной', '301', 306, 'a2/cb/54aaad8835fbf0e363f4437df257f9a34aaf54420a1775710411c6a9110a.mp3', 5, 12425877),
(3179, 'Ветер, Вей!', '268', 306, '73/37/626479c97c84469860c9901956476820d6bb038b64951d58a1ce528a9668.mp3', 6, 11117650),
(3180, 'Травница', '235', 306, '7e/ac/4a5241448b42e65b61f622d10d5381e6844224985dcb991eff6306f4d175.mp3', 7, 9790624),
(3181, 'Хмель', '275', 306, 'fb/65/0106ccdcf29ead780d8b7ea88476ab4cb6a867090ddecf8dcbd26a92f9ec.mp3', 8, 11370504),
(3182, 'Птица-Печаль', '199', 306, 'bd/fa/6bb6f9cd08c8de47cfc69a686fcd8d3d4ac333e5cdd1a8a6228f183e7535.mp3', 9, 8343448),
(3183, 'Русалка (Acoustic)', '236', 306, '2b/f3/68e74171ea35cefbf13d76416969517d4ee57661c0c123163559add617fb.mp3', 10, 9821963),
(3184, 'Птица-Печаль (Acoustic)', '191', 306, 'd7/7e/650890d6a41242b85c23f4aaca42cb606b2cabee13c3676dd759fb153d11.mp3', 11, 8027883),
(3185, 'Голос Лесов', '374', 307, '32/d9/7d2e7fa656a06f18b5c5158b1fbdc302a889a7ba4e922fdb3e6b9b000c91.mp3', 1, 14968585),
(3186, 'Путь Неприметный', '384', 307, 'c2/a4/20debf577cc7f966b8bc0922ce371279903ccd58d1c1abc917c73b844c7e.mp3', 2, 15370877),
(3187, 'Ночь Перед Битвой', '518', 307, 'dd/45/b295918c80a7df7a5bcc16a63f5149555898fd1c7b0fe56703f82dfb5a26.mp3', 3, 20724939),
(3188, 'Нивушка Нива...', '463', 307, '62/a6/a82135b7c17a40c697eac998e5f178a087e097874b57c577497edd9e81e8.mp3', 4, 18536909),
(3189, 'Темень', '515', 307, '79/b1/fecfebcdfc540e5b887d389a4d8e4bb14ada4beea696a53b1fd2dd711cc9.mp3', 5, 20619385),
(3190, 'Море-Сон', '496', 307, '2e/c6/1a0f7a8a99f50e2495021257227ddc9791666d2fd3db71f20a2d59240d54.mp3', 6, 19869154),
(3191, 'Думы Мои - Зарницы Дальние..', '542', 307, 'f4/d7/10d5c350c3c083aaf182f19b28d3284d2908092220675ab7506545b026c7.mp3', 7, 21720723),
(3192, 'Русалка', '287', 308, '37/48/e8728cd37a734bda247196abf0a7d03df32c505ae40a95fbb39aa3968b04.mp3', 1, 11491026),
(3193, 'Кровавые Травы \'14', '217', 308, 'da/1e/ab5f0c6f1c1aa93694017e546dc5102a355225cfbf79e34be4c1851c100a.mp3', 2, 8688631),
(3194, 'Песня Сольвейг', '203', 308, 'f6/2e/ef39b16f53ea9c878a16c5ea951ee536eae38ac357c02787f764bd381ca4.mp3', 3, 8130648),
(3195, 'Damage Case (Motorhead cover)', '181', 308, 'b7/41/8d84538b9c470b27aa53cc9b458a8ffc0849964e08a270d5dea90fec3bfc.mp3', 4, 7271802),
(3196, 'Земля грёз', '247', 308, '6a/ec/17fb4d5b72c9e7b11dd812538c35fb713b6761ce285f6361c1c449458630.mp3', 5, 9909056),
(3197, 'Mouth (Paradise Lost cover)', '242', 308, 'be/19/28eb3699520419b665630328a0e06e506b52f2c587d2d6f4917c856bcbb4.mp3', 6, 9718200),
(3198, 'Intro', '282', 309, '67/5a/4eedcc55949dd43b829a410a6b61ac1fc46155139d3ed75a3eae3639543b.mp3', 1, 11395720),
(3199, 'Два Меча', '311', 309, 'd1/aa/5b01c8d9f30f3e869e943bf9139c1203b0c0b02ef9a51f44c8efb6d9fd01.mp3', 2, 12564967),
(3200, 'Туманы Холодных Снов', '270', 309, 'a5/f1/6c6c22f28d4495f866802791668a3c430e0612a1b9ce5ca003fcaa9749cf.mp3', 3, 10924501),
(3201, 'Сказки Странствий', '355', 309, 'f2/1f/77690a835c8b79958c09d217370d159ddadc198e0fea9682af6b2e9e0a3c.mp3', 4, 14299516),
(3202, 'Подруга Ночь', '214', 309, '1a/db/25e494fa16a4dde1a2339741c996ab443b7dc09417291e4d5c58b53f5907.mp3', 5, 8683179),
(3203, 'Земля Грёз', '247', 309, '1d/81/4ea174c2738ac22c9d3e658feed004ff8f3d5a69c0cd9c1f116a7c920fc3.mp3', 6, 10006016),
(3204, 'Ветры-Бури', '283', 309, '69/4c/6a511f2195c005ac210634e3870270ceb8e2dcfbdfd881044e736174852c.mp3', 7, 11456334),
(3205, 'Одиночество Моё', '272', 309, '71/4e/06af19134d20358d53e2345045c545768920c754c0f21f7361901eb9ddc0.mp3', 8, 11001814),
(3206, 'The Eerie', '235', 309, '4d/09/26b9324d1724ac8a851b6604212b3767360843bca1f8e50676053e803b14.mp3', 9, 9525427),
(3207, 'Years of Prophecy', '353', 310, '7c/70/0960c98c97f7b3e235e5a2fc4eea402f4f13ebfaf601eff5272d81ba92ab.mp3', 1, 11319090),
(3208, 'Sun Shine Our Land', '295', 310, '69/99/2c8cf3436c298300f4364545d0ce8630c14ed21cb745ce94af40be31746e.mp3', 2, 9453696),
(3209, 'Song of Smith (Sledge Hammer!)', '399', 310, '8b/5e/b4e4c2cb3cc6ff5a541318f6f80c5e8aa765e796b95b1432922e67ba79ff.mp3', 3, 12779648),
(3210, 'War Is Closed By Us', '437', 310, '44/42/7f8180e16a4a1520fbd00938670a008567c82f7e1e250d254257f22b5187.mp3', 4, 14006400),
(3211, 'Holyday of Fathers', '573', 310, 'a4/68/eecbb57605c145ee7aeda8f5b3c9db1cacee74db14e4cdc822018e1af811.mp3', 5, 18360448),
(3212, 'Rain of Former Days', '523', 310, 'ea/6c/99d340a142ba4b894c812e03c45751a2f72469d6d4205d943490ad62db73.mp3', 6, 16738432),
(3213, 'The Sword of Fate', '310', 311, '7c/a6/e906fb3e26ca3d2edbcde348a2d9baa98ee15e7434bc43c6f6f430f92c43.mp3', 1, 12424925),
(3214, 'Behind the Horizon', '268', 311, '8e/54/41cd87d4997808dd6c26c4512c3908a8edc09072ecf96189f1b78f32f32b.mp3', 2, 10729055),
(3215, 'Tales of Wanderings', '353', 311, '63/ee/1759b408f431bd9583da9f0f66edb509ec24df5a91bdf0403b21ae04240c.mp3', 3, 14127064),
(3216, 'Night Time', '212', 311, 'e9/63/dc3564555619966aa58fed848e42f6b2ec29fc693c6d68bedcaa79d5cbd2.mp3', 4, 8513872),
(3217, 'Wonderland', '245', 311, 'ca/ba/61216f1f833d2a915b4aff0287ea2499f92ae3d4055a38ed1e0c69a11df3.mp3', 5, 9806410),
(3218, 'Winds & Storms', '283', 311, '8b/1c/f600be20266251bdde420216a770a7e16b0e7dfb6c7f3a0de618ee046f17.mp3', 6, 11326737),
(3219, 'All Alone (Loneliness Time)', '269', 311, 'bc/97/6af9b117b2a2071619e29cc831965cdc4c7a0d2e756a7c2c9c17ad252ce9.mp3', 7, 10790704),
(3220, 'The Eerie (Gods Tower Cover)', '234', 311, 'b9/d4/0a0ce92c96c200c1368f58878c7bfd28e88b200b7f1b2b0f3f7f4a03921c.mp3', 8, 9366508),
(3221, 'Песнь 1', '249', 312, 'b5/a4/8485095cc6833ec3b38cbe2258e7cb37fa54178fbf7d3dee7c6bb2346534.mp3', 1, 11472896),
(3222, 'Песнь 2', '456', 312, 'd1/b3/134d071ff67e28b811fa41c795babbb8fab39d32531aab783283f725dd1c.mp3', 2, 19759104),
(3223, 'Песнь 3', '279', 312, 'db/cd/6d57b733562d2912b82a21cf589d4a26c7a834b7badd8e3d7282fb7cdaed.mp3', 3, 12664832),
(3224, 'Песнь 4', '282', 312, '3c/0c/5207a279bf5f6c38f0a31a3a52ba4102e47782e1884819923ad38cd68581.mp3', 4, 12800000),
(3225, 'Песнь 5', '334', 312, 'f7/55/7121a8676ec900a0ba65d2fd77d68d8cf7a53f24ee7f0fc4ceacde05356f.mp3', 5, 14893056),
(3226, 'Песнь 6', '317', 312, '83/67/69ea639a71b75477ba18a8d3ade47b12f0790f579d1b71c09dc5c451a803.mp3', 6, 14221312),
(3227, 'Песнь 7', '234', 312, '14/0f/baddcb2a4659597a74365543da95e3d89171e3001c86e52bccdc733ae42a.mp3', 7, 10895360),
(3228, 'Песнь 8', '380', 312, 'ed/1e/18dd863d4cba7da095c5108f0324cbce9ba88dad3604f26f3d74cefd3f11.mp3', 8, 16708471),
(3229, 'Возглас', '153', 313, 'e2/53/c02dcd744d181851914a2c2119a99d6a6391cc8115f501851d034d79c9da.mp3', 1, 6251716),
(3230, 'Девятый Час', '368', 313, '94/88/cd24fb5109ea0b78610632f6d62ccc4f2fdb985e6091a0626065e721cacf.mp3', 2, 14874222),
(3231, 'Вечерня', '331', 313, 'b4/66/10cc73d3cf738510cc9cc245e9fb3b3ce3ae75e41e3ae4516b37f98cfcc5.mp3', 3, 13396728),
(3232, 'Повечерие', '329', 313, 'b5/44/bac294b51d89cc04b9fc9e8097bdb5581690966fa55f18d4f9a27ced7cb8.mp3', 4, 13307916),
(3233, 'Полунощница', '323', 313, '9a/ce/fb21424b192920abdef2b5dd46fcda311446354daa09022725a713e2fa1d.mp3', 5, 13049830),
(3234, 'Утреня', '326', 313, 'ab/4f/2e1664871c91127c9bc0a57f4151aee9ee38a02a1d7002cea334ebbc4d55.mp3', 6, 13181477),
(3235, 'Первый Час', '277', 313, 'b1/3e/241e4ee869bcc72212f9d3fe70f2d73bc6fe823825ff3693b5795283d2bc.mp3', 7, 11227526),
(3236, 'Третий Час', '299', 313, 'ae/76/e41c36fadf9cb6babeff93eacc5175b3b584da5e18961ba64dc34b90ace4.mp3', 8, 12116734),
(3237, 'Шестой Час', '269', 313, '07/97/094505f4d79661629abc468fedc393abac3693981bfe659461e8421ee582.mp3', 9, 10898383),
(3238, 'Литургия', '392', 313, '11/96/4c6ad8ea138ee10716d0eb90badf82cccf21eb7b6645cbaa149e0034ca20.mp3', 10, 15830298),
(3239, 'Ектения - I - Очищение', '345', 314, '1c/ae/b5ea1a3a7d0a95643e5654801fc334308484c36374f19cf2dca33456a572.mp3', 1, 13963224),
(3240, 'Ектения - II - Благословение', '262', 314, 'b5/de/4824f7d514eee24ebf9607b7e4cf5e59862e81390bd385cbb9a9c6fe6218.mp3', 2, 10645685),
(3241, 'Ектения - III - Премудрость', '291', 314, '6f/45/9cbed580d63aefa1e81d10ac1341eacff7405cc9b9dfbc1833748c9f1d81.mp3', 3, 11798205),
(3242, 'Ектения - IV - Милость', '320', 314, '6b/dd/44b9f882924b8eaf83ded3e6ad799aba0bbd9489095d4c9ed6c48011c3a7.mp3', 4, 12940269),
(3243, 'Ектения - V - Святый Вход', '360', 314, '41/e7/b44bbbe003caa3a82de8cbdb2824d2e18e52fda970be3f2b5f0468e304b4.mp3', 5, 14545238),
(3244, 'Ектения - VI - Уповане', '253', 314, '0f/eb/032bc1f305b88eb5dbec67c7f4c51632068a654c5e0ae6a2481460c03aed.mp3', 6, 10272644),
(3245, 'Ектения - VII - Истина', '334', 314, 'b1/d6/6adead9481c81678cce59c1955cdcefeeb26a23ad1a514a0c3bbb00f37ed.mp3', 7, 13522277),
(3246, 'Ектения - VIII - Спасение', '309', 314, 'a4/92/d2baa2e4dd6579eec1b498c73e93c16bb62149097333cdeb9e2fe7802e92.mp3', 8, 12524405),
(3247, 'Flattening of Emotions', '269', 315, 'be/4b/e2a251a5d7464f2debe18b6191fa96f183312d2a666b17c8e89566e42608.mp3', 1, 9307705),
(3248, 'Suicide Machine', '263', 315, '08/fe/5401ebae6f972e78c44fd30a9912c5e6b38113df07228781485c551e0c5f.mp3', 2, 9147354),
(3249, 'Together as One', '250', 315, 'bc/c7/c961a1b2d42aed091735a4850b837f012ecf73c2e106b6a3d7b6ee51f97f.mp3', 3, 8906890),
(3250, 'Secret Face', '279', 315, 'ba/9d/3153833cb29e6109e26a8f8f5c74516b3ce9f711cacfec00643b98edda74.mp3', 4, 9823686),
(3251, 'Lack of Comprehension', '223', 315, '52/da/6e582ff9d481f38678851192ad5af5d28583ade4773899381d2afc15ded3.mp3', 5, 7806264),
(3252, 'See Through Dreams', '279', 315, '50/84/3f4760bc077bd3e6246c4f7737571cc0c12f6ff02c37af421576c8f6f88c.mp3', 6, 9565781),
(3253, 'Cosmic Sea', '267', 315, '2e/3c/d2253ceb975845d93ebb50808ccd245dfd33f205ea0a84c6a6975dda4521.mp3', 7, 9328539),
(3254, 'Vacant Planets', '232', 315, '3b/e9/2027b1149e25addcbc157692eb36db4f5c5e9749708040e28a091e341af3.mp3', 8, 7961815),
(3255, 'God of Thunder (Bonus Track)', '240', 315, '4c/ce/70cf5f1dae96c4cf0839c168b4a03cd8a15ac13ceb3fc1a36720b7d60e2c.mp3', 9, 8567101),
(3256, 'Overactive Imagination', '210', 316, '64/6b/51fd04abb81d753a52b01aed64eb4e27fb5cfb3006bc4a1aaff5f56ff0dd.mp3', 1, 6346858),
(3257, 'In Human Form', '235', 316, 'c0/96/343510daa2d4c3ca179e8b60b628047e33d73742e81f7ae5201ae725a8f5.mp3', 2, 6995401),
(3258, 'Jealousy', '220', 316, 'a2/b2/cd6fdeb442d9dd76c9df5647b62c26470b6a0b43977fcdff1809314301a9.mp3', 3, 6586195),
(3259, 'Trapped in a Corner', '252', 316, '75/5e/a2e07dd503baf3a6b388453ae50c8c4a645b4e79e99884b858516a04a99a.mp3', 4, 7301536),
(3260, 'Nothing Is Everything', '196', 316, '7c/83/ac3a1b14517dc1cdefbddb04af5eebe7471a4fd08b1633585566709ca887.mp3', 5, 6107711),
(3261, 'Mentally Blind', '286', 316, 'b0/62/c7556f1c6a4116ee3c74353601bb87817c7a5c5e531a0c6cfaa8a83323ee.mp3', 6, 8617075),
(3262, 'Individual Thought Patterns', '241', 316, 'af/65/d82b7191c6c2e0da2cfa70815cb2ec1d164dc26921c49f2b75b5c51b7b31.mp3', 7, 7347237),
(3263, 'Destiny', '244', 316, '84/65/4c1ee928ad16c2ca3fa70e156e2c8b2f512f9a5fab7cfbc382f6c9eabf23.mp3', 8, 7060301),
(3264, 'Out of Touch', '259', 316, '5c/1f/12fc13d3fd81f3b2f1b2f717b326fbb448d9eb7264e4ca092ca3a1d8471b.mp3', 9, 7707641),
(3265, 'The Philosopher', '250', 316, '55/3a/3d7df9f9e0cec266f5eacae67eed6522b1f65ac7988a2d0e9d2fad33b53a.mp3', 10, 7129089),
(3266, 'Leprosy', '379', 317, 'f0/4d/71c036983f832cee532b9ee21229411b594d59909bdeb87588d2b1552a5b.mp3', 1, 15343428),
(3267, 'Born Dead', '206', 317, '2b/ef/279a12eba43fe01e27a2200d5c97d82d69f9eb5ba0014bf54769efa06ab0.mp3', 2, 8424687),
(3268, 'Forgotten Past', '276', 317, 'b8/8f/128081f04822c978f221ff99c91d117106426d25e5d124c1edd310f268ae.mp3', 3, 11199649),
(3269, 'Left to Die', '277', 317, '97/75/5738c5956e604e50a3c5fec55fdc8ae17cc8ebcb61c359bb32b8877611b8.mp3', 4, 11241403),
(3270, 'Pull the Plug', '266', 317, '0c/d7/c846898717a0601d3af88d046bd643000024612255f219f7c1399540f9ba.mp3', 5, 10809191),
(3271, 'Open Casket', '294', 317, 'fb/e6/b286c0a7e483b8dc5fb22dcc793c70137ac48ec2bcc4d862a30160172929.mp3', 6, 11941927),
(3272, 'Primitive Ways', '272', 317, 'b7/7d/10b8066fcf8ce4c5d366965137e8683153a2d445e5d2c9830f677f1ff40b.mp3', 7, 11051401),
(3273, 'Choke on It', '355', 317, '96/23/38c3c05a2861c7969c34e6e77c571dd38db987b85ec605a06d9df1f3d4d0.mp3', 8, 14367139),
(3274, 'Open Casket (Live)', '289', 317, 'e3/6a/0d2b45951a10157dc863d81a84bbc17190b956813684857424241df437e1.mp3', 9, 11722701),
(3275, 'Choke on It (Live)', '349', 317, '4b/31/407bc87b08d0ee7419661297fa7c37a1b35731ce98f7f0e7d912edfa6e5e.mp3', 10, 14144781),
(3276, 'Left to Die (Live)', '275', 317, '5a/a3/505e9ce8dab9db081855b28aeb99a1b36b4db2db0176e6b2cd3222924899.mp3', 11, 11172513),
(3277, 'Pull the Plug (Live)', '266', 317, '36/50/fa3b432ef51b6bc047465ca7b629c3c9955626c937da2ffe3196aabaac85.mp3', 12, 10814425),
(3278, 'Forgotten Past (Live)', '273', 317, '9f/10/184157a48b5070f95b32927812f235f99942a27674f5e731d6442edcdaa2.mp3', 13, 11087955),
(3279, 'Infernal Death', '172', 318, 'fe/1f/015ad30d6c6d89bf45a02720aba6e01792fe2c235f1c79687c795ae3ea35.mp3', 1, 8153422),
(3280, 'Zombie Ritual', '272', 318, 'f8/d2/14af5276a8fb5e992ffa2afe5b0ae29a4611e12f3d8284e5eb0f6da74ecf.mp3', 2, 12158514),
(3281, 'Denial of Life', '215', 318, 'a5/84/e66e4e7c3ffd96c2d78b23377aa0e5fe51dd791fae768283decacdbf2c73.mp3', 3, 9853471),
(3282, 'Sacrificial', '221', 318, 'c7/55/0d6dfd58d90ccdb238a9d303b6a545c7837d68e27e8a0be6f27d5b136dfa.mp3', 4, 10125139),
(3283, 'Mutilation', '207', 318, '59/e0/c90924a198b6c59ab3cf10e22e390bf51d2267a6938722d3021570417920.mp3', 5, 9554622),
(3284, 'Regurgitated Guts', '224', 318, '22/73/a4b4fda9ebc4123b09812bd988c0227b5a820ccbcd070ce9d10b42f82dad.mp3', 6, 10218147),
(3285, 'Baptized in Blood', '269', 318, 'ba/35/77fe45229e9d12bd851866538901d5de564534e089d8bda8287c9bd25dda.mp3', 7, 12025820),
(3286, 'Torn to Pieces', '215', 318, 'b3/af/47a8400710935a3b8b3799ce7ad0fa908d12a1e7fd87e3298ae8d75671c1.mp3', 8, 9882728),
(3287, 'Evil Dead', '179', 318, 'bd/cf/b20396317a1c7f4c8d15239d027ea2f3226eabb38653c99809b1fea9ac86.mp3', 9, 8430310),
(3288, 'Scream Bloody Gore', '272', 318, 'af/39/3f3eaf8a6f0d9c17375d1063d41d06291a4c278553267f3f7e2a41d20d87.mp3', 10, 12157479),
(3289, 'Beyond the Unholy Grave', '185', 318, '29/51/81b334b273540e5973bd7a60b999435035c3c5088ee4ad22dcc6daf105f1.mp3', 11, 8683204),
(3290, 'Land of No Return', '180', 318, 'ae/b5/8a96f35b45f17d80fb0ea1ed857bcde41dd34657658cb874aabfe05b2737.mp3', 12, 8473167),
(3291, 'Living Monstrosity', '308', 319, '5c/e8/3818c8552fac0a08a3f2a9a924742d2194bf8b17af59f746fc58a8755484.mp3', 1, 12445644),
(3292, 'Altering the Future', '334', 319, 'b7/14/6803cd6c0fac7b445dd2feb501783d390db17b4561b3e0014ecb3febcaaa.mp3', 2, 13486364),
(3293, 'Defensive Personalities', '286', 319, 'e4/90/0c23c110c9535c6e5dd5d6a9bc527afb5de773768490bfbf64b32704737f.mp3', 3, 11547041),
(3294, 'Within the Mind', '334', 319, '3b/f1/43277e93d9ec680cd9f3d7eb7366dedb22b18ce2ee090183b2bc1becc90e.mp3', 4, 13498895),
(3295, 'Spiritual Healing', '464', 319, '97/58/a3e831b25ca8d14a4f8c04e8a86aff2313ba27768032ca8cdbd9a63667dc.mp3', 5, 18688907),
(3296, 'Low Life', '323', 319, '16/6f/7dcc13ff9f462591f638e0a23522029ffad1a2278588d6d570c56c1bccb3.mp3', 6, 13029722),
(3297, 'Genetic Reconstruction', '292', 319, '28/ff/f053f4304c480bcc80baf53208316cc957904a5dec916c6a7cd49496ea39.mp3', 7, 11819758),
(3298, 'Killing Spree', '256', 319, 'b4/e6/61bde75b880078a9547130de4685432f1ebe1e5c3d47b2f65c1920be90af.mp3', 8, 10376736),
(3299, 'Symbolic', '393', 320, '06/59/70174790008e3e3ba696009066e2dfd01489f65981664fae6ed31e772652.mp3', 1, 15889118),
(3300, 'Zero Tolerance', '288', 320, '8c/ce/9db45aadf165d7351e2c05dab35e4f8be8c8d226d2af7eabea6cc9ab8cb1.mp3', 2, 11694909),
(3301, 'Empty Words', '382', 320, '8c/d4/b9a09443454a4e024021823ed30b3d60952ef4c661ce4287640c8b7cfe31.mp3', 3, 15448177),
(3302, 'Sacred Serenity', '267', 320, 'fa/44/99fd89610b44c4234c65654f2324bbc2ba61a23abdbd479d2cb696df9590.mp3', 4, 10833915),
(3303, '1,000 Eyes', '268', 320, '11/7f/30963353a0d90bce28654d150437740915f6ed449b71aabd0bb5c9ba9f0b.mp3', 5, 10899734),
(3304, 'Without Judgement', '328', 320, '22/66/5be8a8f75063d8e4f4161568a622cf156f1a055a249bf017851e4ce9ae9f.mp3', 6, 13274801),
(3305, 'Crystal Mountain', '307', 320, '1e/3d/8bf44237b8c0122ae175a5dfe489a804555d582648eba7b4af0c96c971cc.mp3', 7, 12449330),
(3306, 'Misanthrope', '304', 320, '27/c9/6a7b97a90cf80bae71c1336e55607a07ffd7567fb08972659feb84fd8761.mp3', 8, 12310348),
(3307, 'Perennial Quest', '501', 320, '0e/33/6cd7221d0aba451c023a7a1197b90a90295b2b834a334dadb07f95fa17ad.mp3', 9, 20204560),
(3308, 'Scavenger of Human Sorrow', '415', 321, 'f6/6b/2537f4634c688ea102e2658ce8e0bd9432d498b5e92e266509b2ca182da5.mp3', 1, 16654912),
(3309, 'Bite the Pain', '269', 321, '94/34/baf2520f38ca3169c063d6511122847b7b9c076efb76472d202765407359.mp3', 2, 10845256),
(3310, 'Spirit Crusher', '405', 321, '85/23/de4b1ea7b96d42f3fef37649409a3544009cbed58ac0f4ef99cbda287cc4.mp3', 3, 16254695),
(3311, 'Story to Tell', '394', 321, '87/2e/501cc8a03d0bc5a40119354ddc47c20c8b35d3666fb3dc90ffeed25ab6a0.mp3', 4, 15828374),
(3312, 'Flesh and the Power It Holds', '505', 321, 'dc/28/e2a1f7b9c0660982b9cc9e3a36750aa4732fbcb8020c79f53377aaf55d18.mp3', 5, 20289074),
(3313, 'Voice of the Soul', '222', 321, 'f8/97/ec7c7460f911d569c25b91c7d394e5a2d476fb0c106bc888ee1a0c1e4e33.mp3', 6, 8957133),
(3314, 'To Forgive Is to Suffer', '355', 321, '32/33/d05251320d7c85b217f5b12a1050fa27fbd7b2772623717278ef7664c50e.mp3', 7, 14289259),
(3315, 'A Moment of Clarity', '442', 321, '53/74/63e16ad48d95599028344bb4675d8a7fd0a33434b7fcd15062b464ba1941.mp3', 8, 17754133),
(3316, 'Painkiller (Judas Priest)', '363', 321, 'f4/c8/7d299f7423e4575069615bda6fe673666e7769470c7c2fb7ab809000bcef.mp3', 9, 14583962),
(3317, 'Děravý kecky, děravý džíny', '210', 322, '21/2b/96668ad9f16d5e757b0e992e189b7f574873468a6571feb3a84516405988.mp3', 1, 8407636),
(3318, '... a to je málo', '197', 322, 'b2/3c/0d96e0d65c9da69db19dfae58070525c44b940df421536979f46e540a2e5.mp3', 2, 7899208),
(3319, 'Ty nejsi dívka do páru', '209', 322, '8b/d3/a40b50a25953b5c950763e2f7fdb5dfc8304890adeef9cdc7135dddb37f2.mp3', 3, 8364832),
(3320, 'Snack bar', '179', 322, '04/c1/3d8720b4e9b834e654aced49c66abcff27825485a570e5d1d6070dee14d4.mp3', 4, 7195552),
(3321, 'Budím se, je pondělí', '231', 322, '97/2c/9860e562726a6139e5e6ff2256f71e19d0d1fed355f9a8707b80c31117f8.mp3', 5, 9245968),
(3322, 'Stíny na duši', '206', 322, '69/c8/95c43d8623d8c08776f9458408bb6dfbea34e4b9ec50132514c24bb4b675.mp3', 6, 8277136),
(3323, 'Johanka z Arku', '373', 322, 'db/92/d1afcc2981660f4afc508c4f3a20c6eace8f86594f11921894e10486d6f2.mp3', 7, 14939944),
(3324, 'Cela č. 504', '242', 322, '23/93/857bb196825a52ffcbcf02bb4068faa4bc0f5d013194b75b6df3ff0be234.mp3', 8, 9706372),
(3325, 'Lidi házej kamení', '229', 322, 'f7/d5/14967d3017d22ae3721d39fc2eea933ba45b02f78b7f8b176203a73a7057.mp3', 9, 9189592),
(3326, 'Asi jsem našel správnej akord', '7', 322, '72/1a/eb7c059618bf6b13b652209b391345d264340abbbeeb3a96c75e9f620edb.mp3', 10, 290536),
(3327, 'Asi jsem ztratil správnej akord', '9', 322, '67/02/8de74e76df47132aa72591596599853b573ee986c11c9ed3053976c2fc22.mp3', 11, 374056),
(3328, 'Asi jsem našel správnej akord (Part II)', '7', 322, '38/12/fe25e9cd4b67ec3863c8bd59eaa6c187babbbd3c71d14b80f7fb9a4648cd.mp3', 12, 291580),
(3329, 'Větrné boogie', '45', 322, 'cd/47/22b252bfeb98f8038407a1cdcd806664df40494c907d75de30f7cb9cbae8.mp3', 13, 1829392),
(3330, 'Buchar', '158', 322, 'f6/c0/514511849da7838e96606546fd2f2807a319ea5aca9c577641faaa8a4410.mp3', 14, 6339472),
(3331, 'Život s tebou není balet', '193', 322, 'd7/00/b033236cc8617ad069edb63b8d0b838eadeca25b340fce2cbcc086d61584.mp3', 15, 7726948),
(3332, 'Blues pro Hitchcocka', '659', 322, 'e1/dc/af8c07ff755e7301dbbd7fb121d9ff0f33c7b5d13a94acc0b181828db713.mp3', 16, 26358172),
(3333, 'Stopa 17', '112', 322, 'ff/48/5df4348376c50f93c3614759ba8f4fa9a8cae67406a75b1046aae36446f1.mp3', 17, 4509340);

-- --------------------------------------------------------

--
-- Struktura tabulky `user`
--

CREATE TABLE `user` (
  `iduser` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(2048) NOT NULL,
  `role` set('admin','normal','moderator','') NOT NULL DEFAULT 'normal',
  `disabled` tinyint(1) NOT NULL,
  `private` tinyint(1) NOT NULL,
  `personal` varchar(64) NOT NULL,
  `avatar` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `role`, `disabled`, `private`, `personal`, `avatar`) VALUES
(12, 'viktor1', '$2y$10$mo0UeHPZNvfRWf6YBWAtIOm15Mx73MEK8DViXFzwQFEmDAGe.v5oS', 'admin', 0, 0, 'HUHULSaafga', '12.jpg'),
(13, 'guest', '$2y$10$qDAEjPiLYrlGcRKHe3KopO6EbUeTNGfU99ZMPBM8ybg6Ca7IkbKRa', 'normal', 0, 0, '', ''),
(14, 'viktor2', '$2y$10$pgIZN8fS2N00m8TiG0jbAufW84JKbrPPx.wjf2hSjC.SzxC6swz6C', 'normal', 1, 0, '', ''),
(15, 'test', '$2y$10$BDZnzS0I0Sml9JmD1VwWcORQMfAqIXenjg4tfESkKi9oOHfuAGlt2', 'normal', 0, 0, '', '');

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
(12, 24, 1),
(12, 31, 0),
(12, 32, 0),
(12, 33, 0),
(12, 35, 0);

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
(12, 293),
(12, 298);

-- --------------------------------------------------------

--
-- Struktura tabulky `user_likes_artist`
--

CREATE TABLE `user_likes_artist` (
  `user_iduser` int(10) UNSIGNED NOT NULL,
  `artist_artist_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`) USING BTREE,
  ADD UNIQUE KEY `idalbum_UNIQUE` (`album_id`) USING BTREE;
ALTER TABLE `album` ADD FULLTEXT KEY `albumname_fulltext` (`name`);

--
-- Klíče pro tabulku `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`) USING BTREE,
  ADD UNIQUE KEY `idartist_UNIQUE` (`artist_id`);
ALTER TABLE `artist` ADD FULLTEXT KEY `artistname_fulltext` (`name`);

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
ALTER TABLE `song` ADD FULLTEXT KEY `songname_fulltext` (`name`);

--
-- Klíče pro tabulku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `iduser_UNIQUE` (`iduser`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Klíče pro tabulku `user_has_playlist`
--
ALTER TABLE `user_has_playlist`
  ADD PRIMARY KEY (`user_iduser`,`playlist_idplaylist`),
  ADD KEY `fk_user_has_playlist_playlist1_idx` (`playlist_idplaylist`),
  ADD KEY `fk_user_has_playlist_user_idx` (`user_iduser`),
  ADD KEY `XXXrermove_constraint_favorites` (`user_iduser`) USING BTREE;

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
  MODIFY `album_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT pro tabulku `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pro tabulku `playlist`
--
ALTER TABLE `playlist`
  MODIFY `idplaylist` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pro tabulku `playlist_has_songs`
--
ALTER TABLE `playlist_has_songs`
  MODIFY `song_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pro tabulku `queue`
--
ALTER TABLE `queue`
  MODIFY `song_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5566;

--
-- AUTO_INCREMENT pro tabulku `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3334;

--
-- AUTO_INCREMENT pro tabulku `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
