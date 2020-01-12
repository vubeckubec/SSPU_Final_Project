<?php
namespace App\Model;
use Nette;

class FavoritesManager
{

    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

    public function readAllFavorites($favorites_id) {
        return $this->database->fetchAll('SELECT playlist_has_songs.playlist_idplaylist,
                                                 playlist_has_songs.song_song_id,
                                                 playlist_has_songs.song_order,
                                                 playlist.name AS playlistName,
                                                 playlist.idplaylist, 
                                                 song.song_id,
                                                 song.name AS songName,
                                                 song.time,
                                                 song.album_idalbum,
                                                 album.album_id,
                                                 album.name AS albumName,
                                                 artist.artist_id,
                                                 artist.name AS artistName
                                          FROM `playlist_has_songs` 
                                          JOIN playlist ON playlist.idplaylist = playlist_has_songs.playlist_idplaylist 
                                          JOIN song ON song.song_id = playlist_has_songs.song_song_id
                                          JOIN album ON song.album_idalbum = album.album_id
                                          JOIN artist_has_album ON album.album_id = artist_has_album.album_id
                                          JOIN artist ON artist_has_album.artist_id = artist.artist_id
                                          AND playlist_has_songs.playlist_idplaylist = ?
                                          ORDER BY playlist_has_songs.song_order',$favorites_id);
    }

   /* public function playlistName_readByID($favorites_id){
        return $this->database->fetch('SELECT playlist.name
                                       FROM playlist
                                       WHERE playlist.idplaylist = ?',$playlist_id);            
    }*/

    public function username_readById($user_id){
		return $this->database->fetch('SELECT user.username,user.role FROM user WHERE iduser = ?',$user_id);
    }
    
    public function deleteSong($song_id,$playlist_id) {
        return $this->database->query('DELETE FROM playlist_has_songs WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$playlist_id,$song_id);
    }
}
    