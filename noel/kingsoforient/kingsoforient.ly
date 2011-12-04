\version "2.3.12"

\header {
    title = "Kings of Orient"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    %composer = "Compositeur"
    %meter = ""
    %opus = ""
    arranger = "David Willcocks"
    %instrument = ""
    %dedication = ""
    %piece = ""
}


sop = \context Voice = "sop" \relative c'' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \key g \major
    \time 3/8
    
    b4 a8 | g4 e8 | fis g fis | e4 r8 | b'4 a8 |
    g4 e8 | fis( g) fis | e4 r8 | g4 g8 | a4 a8 |
    b4 b8 | d( c) b | a b a | g4 fis8 | e4. \bar "||" |

    fis4( a8) | g4 g8 | g4 d8 | g4 e8 | g4 r8 | g4 g8 |
    g4 d8 | g4 e8 | g4 r8 | g4 g8 | a4 b8 |
    c4 b8 | a4 b8 | g4 g8 | g4 d8 | g4 e8 | g4. \bar "|."
    
}


alto = \context Voice = "alto" \relative c'' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \key g \major
    \time 3/8
    

    g4 fis8 | e4 e8 | dis dis dis | e4 r8 | g4 fis8 |
    e4 e8 | dis( dis) dis | e4 r8 | e4 e8 | fis4 fis8 |
    g4 g8 | d( fis) g | fis g fis | e4 dis8 | e4. \bar "||"

    d4. | d4 d8 | d4 b8 | e4 e8 | d4 r8 | d4 d8 |
    d4 b8 | e4 e8 | d4 r8 | e4 e8 | fis4 fis8 |
    g4 g8 | fis4 fis8 | g4 e8 | b4 d8 | e4 e8 | d4. \bar "|."
}


tenor = \context Voice = "tenor" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \key g \major
    \clef treble
    \time 3/8
    
    b4 b8 | b4 g8 | a b a | g4 r8 | b4 b8 |
    b4 g8 | a( b) a | g4 r8 | b4 b8 | d4 d8 |
    d4 d8 | b( c) d | c c c | b4 a8 | g4. \bar "||" |

    a4( c8) | b4 b8 | b4 g8 | b4 c8 | b4 r8 | b4 b8 |
    b4 g8 | b4 c8 | b4 r8 | b4 b8 | d4 d8 |
    e4 d8 | d4 d8 | b4 b8 | g4 b8 | c4 c8 | b4. \bar "|."

}


basse = \context Voice = "basse" \relative c {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \key g \major
    \time 3/8
    

    e4 e8 | e4 e8 | b b b | e4 r8 | e4 e8 |
    e4 e8 | b( b) b | e4 r8 | e4 e8 | d4 d8 |
    g4 g8 | b( a) g | a a a, | b4 b8 | e4. \bar "||"

    d4. | g4 g8 | g4 g8 | e4 c8 | g'4 r8 | g4 g8 |
    g4 g8 | e4 c8 | g'4 r8 | e4 e8 | d4 d8 |
    c4 g'8 | d4 d8 | e4 fis8 | e4 d8 | c4 c8 | g'4. \bar "|."
}






texteUn = \lyrics {
    \set vocalName = "1."


}
texteDeux = \lyrics {
    \set vocalName = "2."


}
texteTrois = \lyrics {
    \set vocalName = "3."


}
texteQuatre = \lyrics {
    \set vocalName = "4."


}




#(set-global-staff-size 22)
#(set-default-paper-size "letter")

collelyrics = \set Lyrics.minimumVerticalExtent = #'(-1.5 . 1.5)
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
    \set Staff.instrument = \markup { \column < "Sopra." { "Alto" } > }
}



\score {

    \new ChoirStaff  <<
	     \barnum % pour replacer les bar nums au bon endroit dans le ChoirStaff
	     \new Staff {
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
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" \texteTrois
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" \texteQuatre
	     }
	     \new Staff {
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

