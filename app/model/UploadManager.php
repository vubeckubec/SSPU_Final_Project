<?php
namespace App\Model;
use Nette;

class UploadManager
{

	private $database;

	public function __construct(Nette\Database\Context $database)
	{
	    $this->database = $database;
	}

	public function getArtistId($artist_name) {
		$row = $this->database->fetch('SELECT artist.artist_id FROM artist WHERE artist.name = ?',$artist_name);
		if($row){
			return $row->artist_id;
		}else{
			return null;
		}
			
	}

	public function doesAlbumExist($album_name, $artist_id) {
		$rows =  $this->database->fetchAll('SELECT artist_has_album.artist_id, artist_has_album.album_id,album.name
								            FROM album
											JOIN artist_has_album ON album.album_id = artist_has_album.album_id AND album.name = ? AND artist_has_album.artist_id = ?',$album_name,$artist_id);
		return (count($rows) == 0) ? 0 : 1;														
	}

	public function uploadArtist($artist_name) {
		return $this->database->query('INSERT INTO artist (name) VALUES (?)',$artist_name);
	}

	public function uploadAlbum($album_name,$album_year,$album_tn) {
		return $this->database->query('INSERT INTO album (name,year,pic_tn) VALUES (?,?,?)',$album_name,$album_year,$album_tn);
	}

	public function getLastInsertId() {
		$row = $this->database->fetch('SELECT LAST_INSERT_ID() AS lid');
		return $row->lid;
	}

	public function uploadArtistAlbum($artist_id,$album_id) {
		return $this->database->query('INSERT INTO artist_has_album (artist_id,album_id) VALUES(?,?)',$artist_id,$album_id);
	}

	public function uploadSong($album_id,$song_order,$song_name,$song_time,$song_length,$song_dest){
		return $this->database->query('INSERT INTO song (name,time,album_idalbum,path,song_order,bytes) VALUES(?,?,?,?,?,?)',$song_name,$song_time,$album_id,$song_dest,$song_order,$song_length);
	}


}