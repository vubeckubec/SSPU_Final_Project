# MP3-player-web
 maturitni-projekt

 TODO:
    - navrhnout tabulku propjeni queue
        - implemenatace playeru + preskakovani mezi pisnickama - navrhnuti az po queue
    - error kontrol pro URL, pravidelne overovani, nemely by jit otevrit do samostatneho okna
    - co s dlouhymi seznamy ?? - paging
    - navrhnout UI, AJAXova volani, cas prechodu(kroutitko), zobrazovani scrollbaru(overflow)
    - search a implementace naseptavace
    - pridat role uzivatelu - user,admin,editor - zobrazovat roli pod uzivatelem
                                                - pres admina nutnost pridavat hudbu
    - jine playlisty nez favorite implementovat a sdileni playlistu mezi uzivateli, overovat private vs public
    - kosmetika LOW PRIO
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
NESTIHNU:
    - 2fa na login
    - kontrola multiple loginu
    - vyhledani useru jinymi usery
    - user stats
    - loga kapel

