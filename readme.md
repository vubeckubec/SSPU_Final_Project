# MP3-player-web
 maturitni-projekt

 TODO:
    - error kontrol pro URL, pravidelne overovani
    - JS na load contentu pri backu (castecne)
    - nelze editovat jmena desek, protoze odkazy
    - resize image not present na 128x128
    - mazat soubory na disku

    Search - schovat na potom, kvuli naseptavaci
    WHERE lastname LIKE '%poc%' COLLATE utf8_general_ci". - asi zbytecne u
    fulltextu
    https://forum.nette.org/en/29208-how-to-implement-search-field-in-the-page
    https://forum.nette.org/cs/23568-suggestinput-autocomplete-pro-nette-2-3-3

    - kosmetika LOW PRIO
    - https://blogs.perficient.com/2017/12/19/how-to-customize-your-own-html5-audio-player/?fbclid=IwAR2PH0O_EozzIf9m_GIsMuiUbBwWZKKXAGQR63AeHl3r9I0IAtmhH4A1hNc
    - http://alexkatz.me/posts/building-a-custom-html5-audio-player-with-javascript/?fbclid=IwAR1dodiR9n5wom5hjaVzNDxCn-iya17e6G8Weg-Jx0OrUdHtYCi7FXQqVpA
DONE:
    - proof of concept zobrazovani srdicek z DB do gridu
    - on click asynchronni funkce co zapise do DB,vrati true a pak zbarvi v gridu
        -on click musi mit parametr song_id
    - z AJAX loadovaciho JS volat zavreni queue 
    - zmenit submit na search
    - zmenit barvu tlacitek queue a search
    - u queue menit mezi show queue a hide queue
    - pri otevreni queue zmenit barvu a text tlacitka
    - JS na kontrolu verzi browseru
    - navrhnout tabulku propjeni queue
        - implemenatace playeru + preskakovani mezi pisnickama - navrhnuti az po queue   
    - co s dlouhymi seznamy ?? - paging
    - pridat role uzivatelu - user,admin,editor - zobrazovat roli pod uzivatelem 
    - navrhnout UI, AJAXova volani, cas prechodu(kroutitko), zobrazovani scrollbaru(overflow)   
    - proklik na cizi playlsit v sekci users(vyuzit existujici stranku na playlisty s jinym user ID)
    - search 
    - jazyk
    - Upload single file (pro avatary)
      https://www.formget.com/ajax-image-upload-php/
    -  Dropdown s jQuery
       https://www.jqueryscript.net/menu/Simple-Flexible-jQuery-Dropdown-Menu-Plugin-Dropit.html  
    - pres admina nutnost pridavat hudbu(pouze z nemobilnich zarizeni)   
    - srdickovani znovupouzit z jinych modulu - castecne hotovo
    - jine playlisty nez favorite implementovat a sdileni playlistu mezi uzivateli, overovat private vs public
      - user si muze zobrazit, vytvorit a prehrat vlastni playlisty
      - vytvoreni pomoci jednoducheho formu
      - prohlizeni jinych playlistu v sekci Users->username->klik na jeho playlist pokud neni nastaven na private
    - subviews nejdou otevrit samostatne
    - kontrola a meneni location 
NESTIHNU:
    - 2fa na login
    - kontrola multiple loginu
    - vyhledani useru jinymi usery
    - user stats
    - loga kapel
    - implementace naseptavace
    - resizovani avatar image (https://stackoverflow.com/questions/14649645/resize-image-in-php)

