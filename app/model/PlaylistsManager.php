<?php
namespace App\Model;
use Nette;

class PlaylistsManager
{
	const
		TABLE_NAME = 'playlist',
		COLUMN_idplaylist = 'playlist_id',
        COLUMN_NAME = 'playlist_name';
    /** @var Nette\Database\Context */
    
    private $database;
    
	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

    public function readUsersPlaylists($user_id) {
        return $this->database->fetchAll('SELECT user_has_playlist.user_iduser,user_has_playlist.playlist_idplaylist,user_has_playlist.isfavorites,playlist.name,playlist.idplaylist,
                                                 playlist.private,COUNT(playlist_has_songs.playlist_idplaylist) AS song_count
                                          FROM `user_has_playlist`
                                          LEFT JOIN playlist_has_songs ON playlist_has_songs.playlist_idplaylist = user_has_playlist.playlist_idplaylist
                                          JOIN playlist ON playlist.idplaylist = user_has_playlist.playlist_idplaylist 
                                          AND user_has_playlist.user_iduser = ?
                                          GROUP BY user_has_playlist.playlist_idplaylist',$user_id);
    }

    public function username_readById($user_id) {
	    return $this->database->fetch('SELECT user.username,user.role FROM user WHERE iduser = ?',$user_id);
    }

    public function checkPlaylistContent($playlist_id) {
        $result = $this->database->fetch('SELECT * FROM playlist_has_songs WHERE playlist_idplaylist = ?',$playlist_id);
        return $result ? 1 : 0;
    }

    public function deletePlaylistWithSongs($playlist_id) {
        $this->database->query('LOCK TABLES playlist_has_songs WRITE, user_has_playlist WRITE, playlist WRITE');
		$this->database->query('DELETE FROM playlist_has_songs WHERE playlist_idplaylist = ?',$playlist_id);
        $this->database->query('DELETE FROM user_has_playlist WHERE playlist_idplaylist = ?',$playlist_id);
        $this->database->query('DELETE FROM playlist WHERE idplaylist = ?',$playlist_id);
		$this->database->query('UNLOCK TABLES');						
		return true;
    }

    public function deletePlaylistWithoutSongs($playlist_id) {
        $this->database->query('LOCK TABLES user_has_playlist WRITE, playlist WRITE');
        $this->database->query('DELETE FROM user_has_playlist WHERE playlist_idplaylist = ?',$playlist_id);
        $this->database->query('DELETE FROM playlist WHERE idplaylist = ?',$playlist_id);
		$this->database->query('UNLOCK TABLES');						
		return true;
    }
}
    