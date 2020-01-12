<?php
function preRenderSongs($presObj,$album_id,$from,&$to,$role) {
    foreach($from as $song) {
        $myString = "";    
        $modifiedSongOrder = $song->song_order - 1;
        $queue_url = $presObj->link('Queue:default',['album_id'=>$album_id, 'deleteQueue'=>1]);
        $album_save = $presObj->link('Album:save', ['song_id'=>$song->song_id]);
        $json_url = $presObj->link('Album:PlaylistJson',['song_id'=>$song->song_id]);
        $userInfo = $role;
        $myString .= "<td style=\"width:25%;\">$song->song_order</td>";
        $myString .= "<td style=\"width:58%;\"><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
        <span song_id=\"$song->song_id\" favorite=\"$song->favorite\" class=\"" . ($song->favorite ? 'glyphicon glyphicon-heart': 
        'glyphicon glyphicon-heart-empty') . "   favtoggle_song\" aria-hidden=\"true\"></span> 
        <ul class=\"addSongToQueue menu\" style=\"display: inline-block;\">
            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                <ul class=\"append\">
                </ul>
            </li>
        </ul>";
        if($userInfo->role == "admin") {
            $myString .= "<span class=\"inplace\" data-field-value=\"$song->name\" data-url=\"$album_save\">$song->name</span></td>";
        }else{
            $myString .= "<span>$song->name</span></td>"; 
        }
        $myString .= "<td style=\"width:50%;\">" . $song->time/60%60 . ":" . ($song->time%60 < 10 ? '0' . $song->time%60 : $song->time%60) . "</td>";
        array_push($to,$myString); 
    }
}

function preRenderSongsForQueue($presObj,$from,&$to) {
    $modifiedSongOrder = 0;
    foreach($from as $song) {
        $myString = "";    
        $queue_url = "";//$presObj->link('Queue:default',['album_id'=>$album_id]);
        $album_save = $presObj->link ('Album:save', ['song_id'=>$song->song_id]);
        $json_url = $presObj->link('Album:PlaylistJson',['song_id'=>$song->song_id]);
        $delete_url = $presObj->link('Queue:DeleteSong',['song_id'=>$song->song_id]);
        $myString .= "<td style=\"width:25%;\">".($modifiedSongOrder+1)."</td>";
        $myString .= "<td style=\"width:57%;\">
                        <span class=\"glyphicon glyphicon-play queue_play\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
                        <span song_id=\"$song->song_id\" favorite=\"$song->favorite\" class=\"" . ($song->favorite ? 'glyphicon glyphicon-heart': 
                        'glyphicon glyphicon-heart-empty') . "   favtoggle_song\" aria-hidden=\"true\"></span>
                        <ul class=\"addToPlaylist menu\" style=\"display: inline-block;\">
                            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                                <ul class=\"append\">
                                </ul>
                            </li>
                        </ul>
                        <span class=\"glyphicon glyphicon-remove remove_song\" song_id=\"$song->song_id\"href=\"$delete_url\" style=\"color:red;\"></span>
                        <span>$song->song_name</span>
                      </td>";
        $myString .= "<td style=\"width:35%;\">" . $song->time/60%60 . ":" . ($song->time%60 < 10 ? '0' . $song->time%60 : $song->time%60) . "</td>";
        array_push($to,$myString); 
        $modifiedSongOrder++;
    }
}

function preRenderSongsForPlaylist($presObj,$playlist_id,$from,&$to,$playlist_owner) {
    $modifiedSongOrder = 0;
    foreach($from as $song) {
        $myString = "";    
        $queue_url = $presObj->link('Queue:default',['playlist_id'=>$playlist_id, 'deleteQueue'=> 1]);
        $album_save = $presObj->link ('Album:save', ['song_id'=>$song->song_id]);
        $json_url = $presObj->link('Album:PlaylistJson',['song_id'=>$song->song_id]);
        $delete_url = $presObj->link('PlaylistSongs:DeleteSong',['song_id'=>$song->song_id, 'playlist_id'=>$playlist_id]);
        $playlist_owner = $playlist_owner;
        $myString .= "<td><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
        <span song_id=\"$song->song_id\" favorite=\"$song->favorite\" class=\"" . ($song->favorite ? 'glyphicon glyphicon-heart': 
        'glyphicon glyphicon-heart-empty') . "   favtoggle_song\" aria-hidden=\"true\"></span> 
        <ul class=\"addInPlaylist menu\" style=\"display: inline-block;\">
            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                <ul class=\"append\">
                </ul>
            </li>
        </ul>";
        if($playlist_owner->iduser == $presObj->user->getId()) {
            $myString .= "<span class=\"glyphicon glyphicon-remove remove_song\" song_id=\"$song->song_id\" href=\"$delete_url\" style=\"color:red;\"></span>";
        }else{
            
        }
        $myString .= "<span class=\"inplace\" data-field-value=\"$song->songName\" data-url=\"$album_save\">$song->songName</span></td>";
        $myString .= "<td>" . $song->time/60%60 . ":" . ($song->time%60 < 10 ? '0' . $song->time%60 : $song->time%60) . "</td>";
        $myString .= "<td>$song->albumName</td>";
        $myString .= "<td>$song->artistName</td>";
        array_push($to,$myString); 
        $modifiedSongOrder++;
    }
}

function preRenderSongsForFavorites($presObj,$favorites_id,$from,&$to) {
    $modifiedSongOrder = 0;
    foreach($from as $song) {
        $myString = "";    
        $queue_url = $presObj->link('Queue:default',['playlist_id'=>$favorites_id, 'deleteQueue'=> 1]);
        $json_url = $presObj->link('Album:PlaylistJson',['song_id'=>$song->song_id]);
        $delete_url = $presObj->link('Favorites:DeleteSong',['song_id'=>$song->song_id, 'playlist_id'=>$favorites_id]);
        $myString .= "<td><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
        <ul class=\"demo menu\" style=\"display: inline-block;\">
            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                <ul class=\"append\">
                </ul>
            </li>
        </ul>
        <span class=\"glyphicon glyphicon-remove remove_song\" song_id=\"$song->song_id\"
              href=\"$delete_url\" style=\"color:red;\"></span>
        
        <span>$song->songName</span></td>";
        $myString .= "<td>" . $song->time/60%60 . ":" . ($song->time%60 < 10 ? '0' . $song->time%60 : $song->time%60) . "</td>";
        $myString .= "<td>$song->albumName</td>";
        $myString .= "<td>$song->artistName</td>";
        array_push($to,$myString); 
        $modifiedSongOrder++;
    }
}

function preRenderArtistsForSearch($presObj,$from,&$to) {
    foreach($from as $artistsResults) {
        $myString = "";
        $albums_url = $presObj->link('Albums:default',['artist_id'=>$artistsResults->artist_id]);    
        $myString .= "<td><span artist_id=\"$artistsResults->artist_id\" favorite=\"$artistsResults->favorite\" 
        class=\"" . ($artistsResults->favorite ? 'glyphicon glyphicon-heart': 'glyphicon glyphicon-heart-empty') . " favtoggle_artist\" aria-hidden=\"true\"></span>";
        $myString .= " <td><a href=\"$albums_url\" class=\"ajax_change\">$artistsResults->name</a></td>";
        array_push($to,$myString); 
    }
}

function preRenderAlbumsForSearch($presObj,$from,&$to,$role) {
    foreach($from as $albumResults) {
        $thumb_url = $presObj->link('Albums:thumbnail',['album_id'=>$albumResults->album_id]);
        $queue_url = $presObj->link('Queue:default',['album_id'=>$albumResults->album_id, 'deleteQueue'=> 1]);
        $album_url = $presObj->link('Album:default',['album_id'=>$albumResults->album_id]);
        $save_url = $presObj->link('Albums:Save',['album_id'=>$albumResults->album_id]);
        $json_url = $presObj->link('Albums:AlbumJson',['album_id'=>$albumResults->album_id]);
        $userInfo = $role;
        $album_delete_url = $presObj->link('Albums:DeleteAlbum',['album_id'=>$albumResults->album_id,'artist_id'=>$albumResults->artist_id]);
        //$new_album = new \stdClass();
        $myString = "";
        $myString .= "<div style=\"overflow-wrap: break-word;\"><a class=\"ajax_change\" href=\"$album_url\"><img src=\"$thumb_url\" height=\"\" width=\"\" style=\"display: block;margin-left: auto;margin-right: auto;\">";
        if($userInfo->role == "admin") {
            $myString .= "<div style=\"display:block;text-align:center;\">$albumResults->year - <span class=\"inplace\" style=\"\" data-field-value=\"$albumResults->name\" data-url=\"$save_url\">$albumResults->name</span></a>";
        }else{
            $myString .= "<div style=\"display:block;text-align:center;\">$albumResults->year - $albumResults->name</a>";
        }
        if($userInfo->role == "admin") {
            $myString .= "<div style=\"display:block;\"><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\"></span>
            <span album_id=\"$albumResults->album_id\" favorite=\"$albumResults->favorite\" class=\"" . ($albumResults->favorite ? "glyphicon glyphicon-heart": "glyphicon glyphicon-heart-empty") . "
            favtoggle_album\" aria-hidden=\"true\"></span> 
            <ul class=\"albumsAddDropdown menu\" style=\"display: inline-block;\">
            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                <ul class=\"append\">
                </ul>
            </li>
        </ul> <span class=\"glyphicon glyphicon-remove remove_album\" style=\"color:red;\" aria-hidden=\"true\" href=\"$album_delete_url\"></span></div></div></div>";  
        }else{
            $myString .= "<div style=\"display:block;\"><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\"></span>
            <span album_id=\"$albumResults->album_id\" favorite=\"$albumResults->favorite\" class=\"" . ($albumResults->favorite ? "glyphicon glyphicon-heart": "glyphicon glyphicon-heart-empty") . "
            favtoggle_album\" aria-hidden=\"true\"></span>
            <ul class=\"albumsAddDropdown menu\" style=\"display: inline-block;\">
            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                <ul class=\"append\">
                </ul>
            </li>
        </ul></div></div></div>";
        }
        array_push($to,$myString); 
    }
}

function preRenderSongsForSearch($presObj,$from,&$to,$role) {
    $modifiedSongOrder = 0;
    foreach($from as $song) {
        $myString = "";    
        $queue_url = $presObj->link('Queue:default',['song_id'=>$song->song_id,'deleteQueue'=> 1]);
        $album_save = $presObj->link ('Album:save', ['song_id'=>$song->song_id]);
        $json_url = $presObj->link('Album:PlaylistJson',['song_id'=>$song->song_id]);
        $userInfo = $role;
        //$delete_url = $presObj->link('PlaylistSongs:DeleteSong',['song_id'=>$song->song_id, 'playlist_id'=>$playlist_id]);
        $myString .= "<td><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
        <span song_id=\"$song->song_id\" favorite=\"$song->favorite\" class=\"" . ($song->favorite ? 'glyphicon glyphicon-heart': 
        'glyphicon glyphicon-heart-empty') . "   favtoggle_song\" aria-hidden=\"true\"></span> 
        <ul class=\"addSearchSongToQueue menu\" style=\"display: inline-block;\">
            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                <ul class=\"append\">
                </ul>
            </li>
        </ul>";
        if($userInfo->role == "admin") {
            $myString .= "<span class=\"inplace_song\" data-field-value=\"$song->songName\" data-url=\"$album_save\">$song->songName</span></td>";
        }else{
            $myString .= "<span>$song->songName</span></td>"; 
        }
        $myString .= "<td>" . $song->time/60%60 . ":" . ($song->time%60 < 10 ? '0' . $song->time%60 : $song->time%60) . "</td>";
        $myString .= "<td>$song->albumName</td>";
        $myString .= "<td>$song->artistName</td>";
        array_push($to,$myString); 
        //$modifiedSongOrder++;
    }        
}



?>