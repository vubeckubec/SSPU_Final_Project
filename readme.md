# MP3-player-web
 maturitni-projekt

 TODO:
    - error kontrol pro URL, pravidelne overovani, nemely by jit otevrit do samostatneho okna
    - search a implementace naseptavace
    - pres admina nutnost pridavat hudbu
    - jine playlisty nez favorite implementovat a sdileni playlistu mezi uzivateli, overovat private vs public
    - jazyk

    - kosmetika LOW PRIO
    - https://blogs.perficient.com/2017/12/19/how-to-customize-your-own-html5-audio-player/?fbclid=IwAR2PH0O_EozzIf9m_GIsMuiUbBwWZKKXAGQR63AeHl3r9I0IAtmhH4A1hNc
    - http://alexkatz.me/posts/building-a-custom-html5-audio-player-with-javascript/?fbclid=IwAR1dodiR9n5wom5hjaVzNDxCn-iya17e6G8Weg-Jx0OrUdHtYCi7FXQqVpA
    - kontrola a meneni location
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
NESTIHNU:
    - 2fa na login
    - kontrola multiple loginu
    - vyhledani useru jinymi usery
    - user stats
    - loga kapel

