<?php
namespace App\Model;
use Nette;

class PlaylistSongsManager
{

    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
    }
    
    public function getUsersFavoritePlaylist($user_id){
        $results = $this->database->fetchAll('SELECT playlist_idplaylist FROM user_has_playlist WHERE user_has_playlist.isfavorites = 1 AND user_has_playlist.user_iduser = ?' ,$user_id);
        if(count($results) == 1){
            return $results[0]->playlist_idplaylist;
        }else{
            return NULL;
        }
    }

    public function readPlaylistSongs($playlist_id,$user_id) {
        $myFavPlaylist = $this->getUsersFavoritePlaylist($user_id);
        if(!$myFavPlaylist){
            return NULL;
        }
        return $this->database->fetchAll('SELECT  song.song_id,
                                                    song.name AS songName,
                                                    song.time,
                                                    album.name AS albumName,
                                                    artist.name AS artistName,
                                                    IF(fav_pl.playlist_idplaylist,"1","0") AS favorite
                                                    
                                                    FROM `playlist_has_songs` 
                                                    JOIN playlist ON playlist.idplaylist = playlist_has_songs.playlist_idplaylist 
                                                    JOIN song ON song.song_id = playlist_has_songs.song_song_id
                                                    JOIN album ON song.album_idalbum = album.album_id
                                                    JOIN artist_has_album ON album.album_id = artist_has_album.album_id
                                                    JOIN artist ON artist_has_album.artist_id = artist.artist_id
                                                    LEFT JOIN playlist_has_songs fav_pl ON song.song_id = fav_pl.song_song_id AND fav_pl.playlist_idplaylist = ?
                                                    WHERE playlist_has_songs.playlist_idplaylist = ?
                                                    ORDER BY playlist_has_songs.song_order',$myFavPlaylist,$playlist_id);
    }


    

    public function playlistName_readByID($playlist_id){
        return $this->database->fetch('SELECT playlist.name
                                       FROM playlist
                                       WHERE playlist.idplaylist = ?',$playlist_id);            
    }

    public function username_readById($playlist_id){
		return $this->database->fetch('SELECT user.username,user.role,user.iduser 
                                       FROM user
                                       JOIN user_has_playlist ON user_has_playlist.user_iduser = user.iduser 
                                       WHERE user_has_playlist.playlist_idplaylist = ?',$playlist_id);
    }
    
    public function deleteLike($fav_list,$song_id){
		$this->database->query('DELETE FROM playlist_has_songs 
                                WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$fav_list,$song_id);
		return 1;
	}

	public function insertLike($fav_list,$song_id){
        try{
            $this->database->query('INSERT INTO playlist_has_songs(playlist_idplaylist,song_song_id) 
                                VALUES (?,?)',$fav_list,$song_id);
        }catch(\Exception $e){

        }
		return 1;
    }
    
    public function deleteSong($song_id,$playlist_id) {
        return $this->database->query('DELETE FROM playlist_has_songs WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$playlist_id,$song_id);
    }
}
    