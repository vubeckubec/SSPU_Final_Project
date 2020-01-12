<?php
namespace App\Model;
use Nette;

class SearchManager {
   /* private const
		TABLE_NAME = 'user',
		COLUMN_IDUSER = 'iduser',
		COLUMN_USERNAME = 'username',
		COLUMN_PASSWORD = 'password';
*/
    private $database;
    
	public function __construct(Nette\Database\Context $database) {
	    $this->database = $database;
	}

    public function username_readById($user_id) {
		return $this->database->fetch('SELECT user.username,user.role FROM user WHERE iduser = ?',$user_id);
    }
    
    public function getUsersFavoritePlaylist($user_id){
        $results = $this->database->fetchAll('SELECT playlist_idplaylist FROM user_has_playlist WHERE user_has_playlist.isfavorites = 1 AND user_has_playlist.user_iduser = ?' ,$user_id);
        if(count($results) == 1){
            return $results[0]->playlist_idplaylist;
        }else{
            return NULL;
        }
    }

    public function searchSongs($user_id,$query) {
        $myFavPlaylist = $this->getUsersFavoritePlaylist($user_id);
        if(!$myFavPlaylist){
            return NULL;
        }
        return $this->database->fetchAll('SELECT song.name AS songName,MATCH(song.name) AGAINST(? IN BOOLEAN MODE) AS relevance,IF(ISNULL(playlist_has_songs.playlist_idplaylist),"0","1") AS favorite,
        song.song_id,song.time,album.name AS albumName,artist.name AS artistName 
                                          FROM song 
                                          JOIN album ON album.album_id = song.album_idalbum
                                          JOIN artist_has_album ON album.album_id = artist_has_album.album_id
                                          JOIN artist ON artist_has_album.artist_id = artist.artist_id
                                          LEFT JOIN playlist_has_songs ON song.song_id = playlist_has_songs.song_song_id AND playlist_has_songs.playlist_idplaylist = ?
                                          WHERE MATCH(song.name) AGAINST(? IN BOOLEAN MODE) 
                                          ORDER BY song.song_order',$query,$myFavPlaylist,$query);
    }

    public function deleteSongLike($fav_list,$album_id){
		$this->database->query('DELETE FROM playlist_has_songs 
                                WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$fav_list,$album_id);
		return 1;
	}

	public function insertSongLike($fav_list,$album_id){
        try{
            $this->database->query('INSERT INTO playlist_has_songs(playlist_idplaylist,song_song_id) 
                                VALUES (?,?)',$fav_list,$album_id);
        }catch(\Exception $e){

        }
		return 1;
	}

    public function searchAlbums($user_id,$query) {
        return $this->database->fetchAll('SELECT name,MATCH(name) AGAINST(? IN BOOLEAN MODE) AS relevance,album.album_id,artist_has_album.artist_id,
                                          album.year,IF(ISNULL(user_likes_album.user_iduser),"0","1") AS favorite  
                                          FROM album 
                                          JOIN artist_has_album ON album.album_id = artist_has_album.album_id
                                          LEFT JOIN user_likes_album ON album.album_id = user_likes_album.album_album_id AND user_likes_album.user_iduser = ?
                                          WHERE MATCH(name) AGAINST(? IN BOOLEAN MODE) 
                                          ORDER BY relevance DESC',$query,$user_id,$query);
    }

    public function deleteAlbumLike($user_id,$album_id){
		$this->database->query('DELETE FROM user_likes_album 
                                WHERE user_likes_album.user_iduser = ? AND user_likes_album.album_album_id = ?',$user_id,$album_id);
		return 1;
	}

	public function insertAlbumLike($user_id,$album_id){
		$this->database->query('INSERT INTO user_likes_album 
                                VALUES (?,?)',$user_id,$album_id);
		return 1;
    }

    public function deleteAlbum($album_id,$artist_id) {
        //return value 0 means artist was not deleted
        //TODO mazat soubory na disku
        $res = 0;
        $this->database->query('LOCK TABLES user_likes_album WRITE, playlist_has_songs WRITE, song WRITE, artist_has_album WRITE, album WRITE, artist WRITE, user_likes_artist WRITE');
        $this->database->query('DELETE FROM user_likes_album WHERE user_likes_album.album_album_id = ?',$album_id);
        $this->database->query('DELETE playlist_has_songs FROM playlist_has_songs RIGHT JOIN song ON song.song_id = playlist_has_songs.song_song_id WHERE song.album_idalbum = ?',$album_id);
        $this->database->query('DELETE FROM song WHERE song.album_idalbum = ?',$album_id);
        $this->database->query('DELETE FROM artist_has_album WHERE artist_has_album.album_id = ?',$album_id);
        $this->database->query('DELETE FROM album WHERE album.album_id = ?',$album_id);
        $row = $this->database->fetch('SELECT COUNT(*) AS album_count FROM artist_has_album WHERE artist_has_album.artist_id = ?',$artist_id);
        if(isset($row)) {
            $count = $row->album_count;
            if($count < 1) {
                $this->database->query('DELETE FROM user_likes_artist WHERE user_likes_artist.artist_artist_id = ?',$artist_id);
                $this->database->query('DELETE FROM artist WHERE artist.artist_id = ?',$artist_id);
                $res = 1;
            }
        }
        $this->database->query('UNLOCK TABLES');						
		return $res;
    }

    public function searchArtists($user_id,$query) {
        return $this->database->fetchAll('SELECT name,MATCH(name) AGAINST(? IN BOOLEAN MODE) AS relevance,artist.artist_id,IF(ISNULL(user_likes_artist.user_iduser),"0","1") AS favorite
                                          FROM artist 
                                          LEFT JOIN user_likes_artist ON artist.artist_id = user_likes_artist.artist_artist_id AND user_likes_artist.user_iduser = ?
                                          WHERE MATCH(name) AGAINST(? IN BOOLEAN MODE) 
                                          ORDER BY relevance DESC',$query,$user_id,$query);
    }

    public function deleteArtistLike($user_id,$artist_id){
		$this->database->query('DELETE FROM user_likes_artist WHERE user_likes_artist.user_iduser = ? AND user_likes_artist.artist_artist_id = ?',$user_id,$artist_id);
		return 1;
	}

	public function inserArtistLike($user_id,$artist_id){
		$this->database->query('INSERT INTO user_likes_artist VALUES (?,?)',$user_id,$artist_id);
		return 1;
	}
}