\version "2.3.25"

\header {
    title = "God Rest You Merry, Gentlemen"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    composer = "John Stainer (1840-1901)"
    %meter = ""
    %opus = ""
    %arranger = ""
    %instrument = ""
    %dedication = ""
    %piece = ""
}


sop = \context Voice = "sop" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \key g \major
    \time 4/4
    
    

    \partial 4
    \repeat volta 2 { 
    e4 | e b' b a | g fis e d | e fis g a |
    b2. e,4 | e b' b a | g( fis) e d | e fis g a |
    b2. b4 | c a b c | d e b a | g e fis g |
    
% page 2
    a2 g4( a) | b2 c4 b | b( a) g fis |e2 g8 fis e4 |
    a2 g4( a) | b( c) d e | b( a) g fis |
    } 
    \alternative { { e2. s4 \breathe } { e2.^\fermata s4 \bar "|." } }
}


alto = \context Voice = "alto" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \key g \major
    \time 4/4
    
    \partial 4
    \repeat volta 2 {
    e4 | e g fis dis | e d? c b |  e dis e e |
    dis2. e4 | e g fis dis | e d? c b | e dis e e |
    dis2. e4 | e d? d g | fis e d dis | e cis d g |

    % page 2
    fis2 g4( d) | d2 e4 d | g( fis) e dis | e2 b8 b cis4 |
    d?2 e4( fis) | g2 g4 g | g( fis) e dis |
    }
    \alternative { { e2. s4 \breathe } { e2._\fermata s4 \bar "|." } }
    

%% ténor ligne deux:
%    fis2. e4 | g e fis b | b2 g4 g | g b b e, |
%    fis2. gis4 | a a g? g | g g 

}


tenor = \context Voice = "tenor" \relative c {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \key g \major
    \clef treble
    \time 4/4
    

    \partial 4
    \repeat volta 2 {
    e4 | g e fis b | b b g g | g b b e, |
    fis2. e4 | g e fis b | b2 g4 g | g b b e, |
    fis2. gis4 | a a g? g | g g g fis | g g a d |
    %page 2
    d( c) b( a) | g2 g4 g | d'( c) b b | g2 g8 g g4 |
    fis( a) d( c) | b( g) d' c | d( c) b b |
    }
    \alternative { { g2. s4 \breathe } { g2.^\fermata s4 \bar "|."} }
}


basse = \context Voice = "basse" \relative c {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \key g \major
    \time 4/4
    


    \partial 4
    \repeat volta 2 {
    e4 | e e dis b | e b c g | c b e c |
    b2. e4 | e e dis b | e b c g | c b e c |
    b2. e4 | a fis g e | b c g b | e e d b |
    %page 2
    d2 e4( fis) | g2 c,4 g' | g, a b b | e2 e8 e e4 |
    d( c) b( a) | g( e') b c | g( a) b b | 

    }
    \alternative { { e2. s4 \breathe } { e2._\fermata s4 \bar "|." } }
}






texteUn = \lyricmode {
    \set vocalName = "1."
    \set vocNam = "1."

    
    God rest you mer -- ry, gen -- tle -- men,
    Let no -- thing you dis -- may.
    For Je -- sus Christ, our Sa -- viour,
    Was born up -- on this day.

    To save us all from Sa -- tan's power
    When we were gone a -- stray.
    O __ ti -- dings of com -- fort and joy, com -- fort and joy,
    O __ ti -- dings of com -- fort and joy.

    joy.
}
texteDeux = \lyricmode {
    \set vocalName = "2."
    \set vocNam = "2."

    In Beth -- le -- em in Jew -- \skip 4 ry
    This bles -- sed Babe was born,
    And laid with -- in a man -- ger,
    Up -- on this ble -- sed morn.

    The which his mo -- ther Ma -- \skip 4 ry
    No -- thing did take in scorn.
    O __ ti -- dings of com -- fort and joy, com -- fort and joy,
    O __ ti -- dings of com -- fort and joy.

    joy.
    
}
texteTrois = \lyricmode {
    \set vocalName = "3."
    \set vocNam = "3."

    From God our heaven -- ly Fa -- \skip 4 ther
    A bles -- sed an -- gel came,
    And un -- to cer -- tain shep -- herds,
    Brought ti -- dings of the same.

    How that in Beth -- le -- em was born,
    The Son of God by name.
    O __ ti -- dings of com -- fort and joy, com -- fort and joy,
    O __ ti -- dings of com -- fort and joy.

    joy.
}
texteQuatre = \lyricmode {
    \set vocalName = "4."


}




#(set-global-staff-size 20)
#(set-default-paper-size "letter")

collelyrics = \set Lyrics.minimumVerticalExtent = #'(-1.5 . 1.5)
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
		  \collestaff
		  \sopranoalto
		  << \sop \\ \alto >>
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" \texteUn
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" \texteDeux
	     }
	     \new Lyrics {
		  \collelyricsbas
		  \vocalnamespace
		  \lyricsto "sop" \texteTrois
	     }
	     \new Staff {
		  \collestaff
		  \tenorbasse
		  << \tenor \\ \basse >>
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