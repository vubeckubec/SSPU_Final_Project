<?php
namespace App\Model;
use Nette;

class DashboardManager {
    private $database;
    
	public function __construct(Nette\Database\Context $database) {
	    $this->database = $database;
    }
    
    public function getArtistsCount() {
		return $this->database->fetch('SELECT COUNT(artist.artist_id) AS artistCount FROM artist');
	}

	public function getAlbumsCount() {
		return $this->database->fetch('SELECT COUNT(album.album_id) AS albumCount FROM album');
	}

	public function getSongsCount() {
		return $this->database->fetch('SELECT COUNT(song.song_id) AS songCount, SUM(song.bytes) AS bytes FROM song');
	}

	public function getUsersCount() {
		return $this->database->fetch('SELECT COUNT(user.iduser) AS usersCount FROM user');
	}

	public function getPlaylistCount() {
		return $this->database->fetch('SELECT COUNT(playlist.idplaylist) AS playlistCount FROM playlist');
	}

	public function getPlaylistSongsCount() {
		return $this->database->fetch('SELECT COUNT(playlist_has_songs.song_song_id) AS playlistSongs FROM playlist_has_songs');
	}

	public function getLikedAlbumsCount() {
		return $this->database->fetch('SELECT COUNT(user_likes_album.user_iduser) AS likedAlbumsCount FROM user_likes_album');
	}

	public function getLikedArtistsCount() {
		return $this->database->fetch('SELECT COUNT(user_likes_artist.user_iduser) AS likedArtistsCount FROM user_likes_artist');
	}

	public function getLikedSongsCount() {
		return $this->database->fetch('SELECT COUNT(playlist_has_songs.song_song_id) AS likedSongs
			                              FROM user_has_playlist
										  JOIN playlist_has_songs ON playlist_has_songs.playlist_idplaylist = user_has_playlist.playlist_idplaylist 
										  WHERE user_has_playlist.isfavorites = 1');
	}

	public function getFavPlaylistId($user_id) {
		return $this->database->fetch('SELECT * FROM user_has_playlist WHERE user_iduser = ? AND isfavorites',$user_id);
	}

	public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username,user.role FROM user WHERE iduser = ?',$user_id);
	}
}