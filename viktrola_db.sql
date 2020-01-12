-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 12. led 2020, 15:39
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

-- --------------------------------------------------------

--
-- Struktura tabulky `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `artist_has_album`
--

CREATE TABLE `artist_has_album` (
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `playlist`
--

CREATE TABLE `playlist` (
  `idplaylist` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `private` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `playlist_has_songs`
--

CREATE TABLE `playlist_has_songs` (
  `playlist_idplaylist` int(10) UNSIGNED NOT NULL,
  `song_song_id` int(10) UNSIGNED NOT NULL,
  `song_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `song_order` int(11) NOT NULL,
  `bytes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Struktura tabulky `user_has_playlist`
--

CREATE TABLE `user_has_playlist` (
  `user_iduser` int(10) UNSIGNED NOT NULL,
  `playlist_idplaylist` int(10) UNSIGNED NOT NULL,
  `isfavorites` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `user_likes_album`
--

CREATE TABLE `user_likes_album` (
  `user_iduser` int(10) UNSIGNED NOT NULL,
  `album_album_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `idplaylist` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pro tabulku `playlist_has_songs`
--
ALTER TABLE `playlist_has_songs`
  MODIFY `song_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pro tabulku `queue`
--
ALTER TABLE `queue`
  MODIFY `song_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21311;

--
-- AUTO_INCREMENT pro tabulku `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3334;

--
-- AUTO_INCREMENT pro tabulku `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
