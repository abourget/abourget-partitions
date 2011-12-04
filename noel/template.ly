\version "2.4.0"

\header {
    title = "Titre"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    composer = "Compositeur"
    %meter = ""
    %opus = ""
    %arranger = ""
    %instrument = ""
    %dedication = ""
    %piece = ""
}


globales = {
  \key f \major
  \time 3/4
}


sop = \context Voice = "sop" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales
    
    
}


alto = \context Voice = "alto" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \globales


}


tenor = \context Voice = "tenor" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales
    
}


basse = \context Voice = "basse" \relative c {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \globales

    
}






texteUn = \lyricmode {
    \set vocalName = "1."
    %\set vocNam = "1."


}
texteDeux = \lyricmode {
    \set vocalName = "2."
    %\set vocNam = "2."


}
texteTrois = \lyricmode {
    \set vocalName = "3."
    %\set vocNam = "3."


}
texteQuatre = \lyricmode {
    \set vocalName = "4."
    %\set vocNam = "4."


}




#(set-global-staff-size 22)
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

