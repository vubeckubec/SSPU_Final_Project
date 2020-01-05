<?php
namespace App\Model;
use Nette;

class AlbumManager
{
    private $database;
    
	public function __construct(Nette\Database\Context $database) {
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

    public function readAlbumSongsWithLikes($album_id,$user_id){
        $myFavPlaylist = $this->getUsersFavoritePlaylist($user_id);
        if(!$myFavPlaylist){
            return NULL;
        }
        return $this->database->fetchAll('SELECT song.song_id,song.name,song.time,song.path,song.song_order,IF(ISNULL(playlist_has_songs.playlist_idplaylist),"0","1") AS favorite
                                          FROM song
                                          JOIN album ON album.album_id = song.album_idalbum AND song.album_idalbum = ?
                                          LEFT JOIN playlist_has_songs ON song.song_id = playlist_has_songs.song_song_id 
                                          AND playlist_has_songs.playlist_idplaylist = ?
                                          ORDER BY song.song_order',$album_id,$myFavPlaylist);
    }
    
    public function deleteLike($fav_list,$album_id){
		$this->database->query('DELETE FROM playlist_has_songs 
                                WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$fav_list,$album_id);
		return 1;
	}

	public function insertLike($fav_list,$album_id){
        try{
            $this->database->query('INSERT INTO playlist_has_songs(playlist_idplaylist,song_song_id) 
                                VALUES (?,?)',$fav_list,$album_id);
        }catch(\Exception $e){

        }
		return 1;
	}

    public function albuminfo_readByID($album_id){
        return $this->database->fetch('SELECT artist.name AS artist_name,album.name AS album_name, album.year, artist_has_album.artist_id,artist_has_album.album_id
                                       FROM album
                                       JOIN artist_has_album ON artist_has_album.album_id = album.album_id
                                       JOIN artist ON artist.artist_id = artist_has_album.artist_id
                                       AND album.album_id = ?',$album_id);            
    }

    public function album_is_valid($album_id) {
        return $this->database->fetch('SELECT * 
                                       FROM album 
                                       WHERE album.album_id = ?',$album_id);             
    }

    public function updateSongName($song_id, $song_name) {
        return $this->database->query('UPDATE song
                                       SET name = ?
                                       WHERE song_id = ?',$song_name,$song_id);
    }

    public function getAllUsersPlaylists($user_id) {
        return $this->database->fetchAll('SELECT user_has_playlist.user_iduser,user_has_playlist.playlist_idplaylist,user_has_playlist.isfavorites,playlist.name,playlist.idplaylist 
                                          FROM user_has_playlist 
                                          JOIN playlist ON playlist.idplaylist = user_has_playlist.playlist_idplaylist 
                                          AND user_has_playlist.user_iduser = ? AND user_has_playlist.isfavorites = "0"',$user_id);
    }

}