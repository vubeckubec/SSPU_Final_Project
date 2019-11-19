<?php
namespace App\Model;
use Nette;

class AlbumManager
{
	const
		TABLE_NAME = 'song',
		COLUMN_SONG_ID = 'song_id',
        COLUMN_NAME = 'name',
        COLUMN_TIME = 'time',
        COLUMN_album_idalbum = 'idalbum',
        COLUMN_PATH= 'path',
        COLUMN_NUMBER = 'number';
    /** @var Nette\Database\Context */
    
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
    public function readAll($album_id,$user_id,$sortmode){
       /* return $this->database->table('song')
                    ->where('album_idalbum',$album_id)
                    ->order($sortmode)  
                    ->fetchAll();*/
                    $myFavPlaylist = $this->getUsersFavoritePlaylist($user_id);
                    if(!$myFavPlaylist){
                        return NULL;
                    }
                    return $this->database->fetchAll('SELECT song.song_id,song.name,song.time,song.path,song.number,IF(ISNULL(playlist_has_songs.playlist_idplaylist),"0","1") AS favorite
                    FROM `song`
                    JOIN album ON album.album_id = song.album_idalbum AND song.album_idalbum = ?
                    LEFT JOIN playlist_has_songs ON song.song_id = playlist_has_songs.song_song_id AND playlist_has_songs.playlist_idplaylist = ?
                    ',$album_id,$myFavPlaylist);
    }
    
    public function deleteLike($fav_list,$album_id){
		$this->database->query('DELETE FROM playlist_has_songs WHERE playlist_has_songs.playlist_idplaylist = ? AND playlist_has_songs.song_song_id = ?',$fav_list,$album_id);
		return 1;
	}

	public function insertLike($fav_list,$album_id){
		$this->database->query('INSERT INTO playlist_has_songs VALUES (?,?)',$fav_list,$album_id);
		return 1;
	}
 
    public function readByID($id){
        return $this->database->table(self::TABLE_NAME)
                    ->get($id);
    }

    public function albumname_readByID($id){
        return $this->database->table('album')
                    ->get($id)->name;
    }

    public function album_is_valid($id) {
        return $this->database->table('album')
                    ->get($id);
    }
}