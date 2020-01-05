<?php
function preRenderSongs($presObj,$album_id,$from,&$to) {
    foreach($from as $song) {
        $myString = "";    
        $modifiedSongOrder = $song->song_order - 1;
        $queue_url = $presObj->link('Queue:default',['album_id'=>$album_id]);
        $album_save = $presObj->link('Album:save', ['song_id'=>$song->song_id]);
        $json_url = $presObj->link('Album:PlaylistJson',['song_id'=>$song->song_id]);
        $myString .= "<td style=\"width:25%;\">$song->song_order</td>";
        $myString .= "<td style=\"width:58%;\"><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
        <span song_id=\"$song->song_id\" favorite=\"$song->favorite\" class=\"" . ($song->favorite ? 'glyphicon glyphicon-heart': 
        'glyphicon glyphicon-heart-empty') . "   favtoggle_song\" aria-hidden=\"true\"></span> 
        <ul class=\"demo menu\" style=\"display: inline-block;\">
            <li><span href=\"#\" class=\"glyphicon glyphicon-plus\" url=\"$json_url\"></span>
                <ul class=\"append\">
                </ul>
            </li>
        </ul>
        <span class=\"inplace\" data-field-value=\"$song->name\" data-url=\"$album_save\">$song->name</span></td>";
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
        $myString .= "<td style=\"width:25%;\">".($modifiedSongOrder+1)."</td>";
        $myString .= "<td style=\"width:57%;\">
                        <span class=\"glyphicon glyphicon-play queue_play\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
                        <span class=\"inplace\" data-field-value=\"$song->song_name\" data-url=\"$album_save\">$song->song_name</span>
                      </td>";
        $myString .= "<td style=\"width:35%;\">" . $song->time/60%60 . ":" . ($song->time%60 < 10 ? '0' . $song->time%60 : $song->time%60) . "</td>";
        array_push($to,$myString); 
        $modifiedSongOrder++;
    }
}

function preRenderSongsForPlaylist($presObj,$playlist_id,$from,&$to) {
    $modifiedSongOrder = 0;
    foreach($from as $song) {
        $myString = "";    
        $queue_url = $presObj->link('Queue:default',['playlist_id'=>$playlist_id]);
        $album_save = $presObj->link ('Album:save', ['song_id'=>$song->song_id]);
        $myString .= "<td><span class=\"glyphicon glyphicon-play queue_fill\" aria-hidden=\"true\" href=\"$queue_url\" song_order=\"$modifiedSongOrder\" id=\"song_pos\"></span>
        <span class=\"inplace\" data-field-value=\"$song->songName\" data-url=\"$album_save\">$song->songName</span></td>";
        $myString .= "<td>" . $song->time/60%60 . ":" . ($song->time%60 < 10 ? '0' . $song->time%60 : $song->time%60) . "</td>";
        $myString .= "<td>$song->albumName</td>";
        $myString .= "<td>$song->artistName</td>";
        array_push($to,$myString); 
        $modifiedSongOrder++;
    }
}

?>