\version "2.3.25"

\header {
    title = "Le Sommeil de l'Enfant Jésus"
    subtitle = "The Sleep Of The Child Jesus"
    %subsubtitle = ""
    %poet = ""
    composer = "F.A. Gevaert"
    meter = "Andantino"
    %opus = ""
    %arranger = ""
    %instrument = ""
    %dedication = ""
    %piece = ""
}


sop = \context Voice = "sop" \relative c' {
    %\stemUp
    %\slurUp
    %\phrasingSlurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \key fis \minor
    \time 2/4
    
    
    fis4\pp fis8 gis | a4 fis | cis'-- cis-- | cis2 \breathe |
    fis\ppp \breathe | cis \breathe | cis8-- b a b | cis2 \breathe | fis,8\< gis a b\! | b2*3/4\> \breathe s8\! |
    cis8\( b a gis | fis2 | fis8 gis a b | cis\) r16 a b8 cis | a2 ~ |
    a4 gis8.([ fis16)] | fis2 ~ | fis^\markup{ \italic dim. } ~ | fis |    fis2^\markup{ \italic { poco rit. } } \breathe | fis\ppp\fermata 

    \bar ":|"
}


alto = \context Voice = "alto" \relative c'' {
    %\stemDown
    %\slurDown
    %\phrasingSlurDown
    \dynamicUp
    \autoBeamOff
    \clef treble
    \key fis \minor
    \time 2/4
    
    R2*4 |
    a2\ppp \breathe | fis ~ | fis | eis | cis4.(\( dis8 | e4) e |
    e e | fis2\)\> | s4*0\! R2 | R2 | fis2(\pp |
    eis) \breathe | cis | d(->^\markup{ \italic dim. } | cis) | d8^\markup{ \italic { poco rit. } } cis d b \breathe | cis2\ppp\fermata

    \bar ":|"
}


tenor = \context Voice = "tenor" \relative c' {
    %\stemUp
    %\slurUp
    \dynamicUp
    %\phrasingSlurUp
    \autoBeamOff
    \key fis \minor
    \clef "G_8"
    \time 2/4
    

    R2*4 |
    d2\ppp \breathe | a2( ~ | a4 fis) | gis2 | a(\( | gis4) gis |
    a8[( gis]) cis[( b]) | a2\)\> | s4*0\! R2 | R2 | d2(\pp |
    b) \breathe | a2 | fis->^\markup{\italic{ dim. }} ~ | fis | fis8^\markup{\italic{ poco rit. }} eis fis g\breathe | ais2\ppp\fermata

    \bar ":|"
}


basse = \context Voice = "basse" \relative c {
    %\stemDown
    %\slurDown
    %\phrasingSlurDown
    \dynamicUp
    \autoBeamOff
    \clef bass
    \key fis \minor
    \time 2/4
    

    R2*6 |
    d2\ppp | cis fis(\( | e4) e |
    cis cis | d2\)\> | s4*0\! R2 | R2 | b(\pp |
    cis) \breathe | fis2 | b,(->^\markup{\italic{ dim. }}  ais) | b^\markup{\italic{ poco rit. }} \breathe | <fis fis'>\ppp\fermata

    \bar ":|"
}





sopUn = \lyricmode {
    \set stanza = "1. "
    En -- tre le boeuf et l'â -- ne gris,
}

sopUnUn = \lyricmode {
    \set stanza = "2. "
    En -- tre les ro -- ses et les lys,
}

sopUnDeux = \lyricmode {
    \set stanza = "3. "
    En -- tre les pas -- tou -- reaux jo -- lis,
}
sopUnTrois = \lyricmode {
    \set stanza = "4. "
    En -- tre les deux bras de Ma -- rie,
}

sopDeux = \lyricmode {
   Dors, dors, dors, le pe -- tit Fils:
    Mille an -- ges di -- vins,
    mil -- le sé -- ra -- phins,
    Vo -- lent à l'en -- tour
    de ce grand Dieu __ d'a -- mour. __
   Dors, dors!
}

tenorAltoUn = \lyricmode {
    %\set vocalName = "2."
    %\set vocNam = "2."


    Dors, dors, __
    dors, dors, __
    En -- fant di -- vin!
}
tenorAltoDeux = \lyricmode {
    %\set vocalName = "4."
    %\set vocNam = "4."

    Dors, __ dors, dors, __
    Roi des an -- ges, dors!
}
basseUn = \lyricmode {
    %\set vocalName = "3."
    %\set vocNam = "3."

    Dors, dors, dors, __
    En -- fant di -- vin!
}
basseDeux = \lyricmode {
    Dors, __ dors, dors, __
    dors, dors!
}




#(set-global-staff-size 17)
#(set-default-paper-size "letter")

collelyrics = \set Lyrics.minimumVerticalExtent = #'(-2 . 2)
collelyricsplus = \set Lyrics.minimumVerticalExtent = #'(-1 . 1)
collelyricsbas = \set Lyrics.minimumVerticalExtent = #'(-0.5 . 1.5)
collestaff = \set Staff.minimumVerticalExtent = #'(-0 . 0)
italique = {
    \override Lyrics.LyricText #'font-shape = #'italic
    \override Lyrics.LyricText #'font-series = #'medium
}
medium = {
    \override Lyrics.LyricText #'font-series = #'medium
}
barnum = {
    \override Score.BarNumber #'extra-offset = #'(0 . 0)
}
% Ici c'est pour mettre le nom de l'instrument a l'intérieur du staff. Merci! On l'insère dans les Lyrics.
vocalnamespace = {
    \override Lyrics.VocalName #'break-align-symbol = #'key-signature
}
tenorbasse = {
    \set Staff.instrument = \markup { \column < "Ténor" { "Basse" } > }
}
sopranoalto = {
    \set Staff.instrument = \markup { \column < "Soprano " { "Alto" } > }
}



\score {

    \new ChoirStaff  <<
	     \barnum % pour replacer les bar nums au bon endroit dans le ChoirStaff
	     \new Staff {
		 %\sopranoalto
	         \set Staff.instrument = "Soprano "
		 \sop
	     }
	     \new Lyrics {
		  \collelyricsplus
		  \vocalnamespace
		  \lyricsto "sop" { \sopUn }
	     }
	     \new Lyrics {
		  \collelyricsplus
		  \lyricsto "sop" { \sopUnUn \sopDeux }
	     }
	     \new Lyrics {
		  \collelyricsplus
		  \lyricsto "sop" { \sopUnDeux }
	     }
	     \new Lyrics {
		  \collelyricsplus
		  \lyricsto "sop" { \sopUnTrois }
	     }
	     \new Staff {
		 %\sopranoalto
	         \set Staff.instrument = "Alto"
		 \alto
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "alto" { \tenorAltoUn \tenorAltoDeux }
	     }
	     \new Staff {
		 %\sopranoalto
	         \set Staff.instrument = "Ténor"
		 \tenor
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "tenor" { \tenorAltoUn \tenorAltoDeux }
	     }
	     \new Staff {
		  %\tenorbasse
	         \set Staff.instrument = "Basse"
		  \basse
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "basse" { \basseUn \basseDeux }
	     }
    >>
    
    \layout {
    }
    
    \midi {
	\tempo 4=94
    }
}

\paper {
  linewidth = 174
}