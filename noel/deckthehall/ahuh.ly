\version "2.12.3"

\header {
    title = "Deck the Hall"
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


sop = \context Voice = "sop" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \key f \major
    \time 3/4
    
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
                g' 8 a' bes' g' a' 4. g' 8 
                f' 4 e' f' 2 
%% 5
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
                g' 8 a' bes' g' a' 4. g' 8 
                f' 4 e' f' 2 
                g' 4. a' 8 bes' 4 g' 
%% 10
                a' 4. bes' 8 c'' 4 g' 
                a' 8 b' c'' 4 d'' 8 e'' f'' 4 
                e'' 4 d'' c'' 2 
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
%% 15
                d'' 8 d'' d'' d'' c'' 4. bes' 8 
                a' 4 g' f' 2     
    
}


alto = \context Voice = "alto" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \key f \major
    \time 3/4
    


                f' 4. f' 8 f' 4 e' 
                d' 4 e' f' c' 
                e' 8 f' g' e' f' 4. d' 8 
                c' 4 c' c' 2 
%% 5
                f' 4. f' 8 f' 4 e' 
                d' 4 e' f' c' 
                e' 8 f' g' e' f' 4. d' 8 
                c' 4 c' c' 2 
                e' 4. f' 8 g' 4 e' 
%% 10
                f' 4. f' 8 f' 4 g' 
                f' 4 f' a' a' 
                g' 4 f' f' 2 
                f' 4. f' 8 f' 4 e' 
                d' 4 e' f' c' 
%% 15
                f' 8 f' f' f' f' 4. g' 8 
                f' 4 e' f' 2 

}


tenor = \context Voice = "tenor" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \key f \major
    \clef treble
    \time 3/4
    



                a' 4. d'' 8 c'' 4 bes' 
                a' 4 c'' c'' a' 
                c'' 8 c'' c'' c'' c'' 4. bes' 8 
                a' 4 g' a' 2 
%% 5
                a' 4. d'' 8 c'' 4 bes' 
                a' 4 c'' c'' a' 
                c'' 8 c'' c'' c'' c'' 4. bes' 8 
                a' 4 g' a' 2 
                c'' 4. c'' 8 c'' 4 c'' 
%% 10
                c'' 4. g' 8 a' 4 c'' 
                c'' 4 c'' c'' c'' 
                c'' 4 b' c'' 2 
                a' 4. d'' 8 c'' 4 bes' 
                a' 4 c'' c'' a' 
%% 15
                bes' 8 bes' bes' bes' c'' 4. d'' 8 
                c'' 4 bes' a' 2 

}


basse = \context Voice = "basse" \relative c {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \key f \major
    \time 3/4


                f 4. f 8 f 4 c 
                d 4 c f f 
                c 8 c c c f 4. bes, 8 
                c 4 c f 2 
%% 5
                f 4. f 8 f 4 c 
                d 4 c f f 
                c 8 c c c f 4. bes, 8 
                c 4 c f 2 
                c 4. c 8 c 4 c 
%% 10
                f 4. f 8 f 4 e 
                f 8 g a 4 f 8 e d 4 
                g 4 g c 2 
                f 4. f 8 f 4 c 
                d 4 c f f 
%% 15
                bes 8 bes bes bes a 4. bes 8 
                c' 4 c f 2 
    
}






texteUn = \lyricmode {
    \set vocalName = "1."


}
texteDeux = \lyricmode {
    \set vocalName = "2."


}
texteTrois = \lyricmode {
    \set vocalName = "3."


}
texteQuatre = \lyricmode {
    \set vocalName = "4."


}




#(set-global-staff-size 22)
#(set-default-paper-size "letter")

collelyrics = \override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-1.5 . 1.5)
collestaff = \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
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
    \override Lyrics.VocalName #'break-align-symbols = #'(key-signature)
}
tenorbasse = {
    \set Staff.instrumentName = \markup { \column { "Ténor" { "Basse" } } }
}
sopranoalto = {
    \set Staff.instrumentName = \markup { \column { "Sopra." { "Alto" } } }
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 94 4)
      }
    }


}

