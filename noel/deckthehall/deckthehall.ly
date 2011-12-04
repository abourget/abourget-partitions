\version "2.3.25"

\header {
    title = "Deck the Hall"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    %composer = ""
    %meter = ""
    %opus = "Opus"
    arranger = "Traditionnel: vieux Noêl gallois"
    %instrument = ""
    %dedication = ""
    %piece = ""
}


sop = \context Voice = "sop" {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \key f \major
    \time 4/4
    
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
                g' 8 a' bes' g' a' 4. g' 8 
                f' 4 e' f' 2  \break
%% 5
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
                g' 8 a' bes' g' a' 4. g' 8 
                f' 4 e' f' 2  \break
                g' 4. a' 8 bes' 4 g' 
%% 10
                a' 4. bes' 8 c'' 4 g' 
                a'8 b' c''4 d''8 e'' f''4 
                e'' 4 d'' c'' 2 \break
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
%% 15
                d'' 8 d'' d'' d'' c'' 4. bes' 8 
                a' 4 g' f'2\fermata
    
}


alto = \context Voice = "alto" {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \key f \major
    \time 4/4
    


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
                f' 4. f' 8 f' 4 g'  |
                f' 4 f' a' a'  |
                g' 4 f' e' 2  |
                f' 4. f' 8 f' 4 e'  |
                d' 4 e' f' c'  |
%% 15
                f' 8 f' f' f' f' 4. g' 8  |
                f' 4 e' f'2_\fermata  |

}


tenor = \context Voice = "tenor" {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \key f \major
    \clef treble
    \time 4/4
    



                a4. d' 8 c'4 bes 
                a 4 c' c' a 
                c' 8 c' c' c' c'4. bes8 
                a4 g a2 
%% 5
                a 4. d'8 c'4 bes 
                a 4 c' c' a 
                c' 8 c' c' c' c'4. bes8 
                a4 g a2
                c'4. c'8 c'4 c' 
%% 10
                c'4. g8 a4 c' 
                c'4 c' c' c' 
                c'4 b c'2 
                a4. d'8 c'4 bes 
                a4 c' c' a 
%% 15
                bes8 bes bes bes c'4. d'8 
                c'4 bes a2\fermata

}


basse = \context Voice = "basse" {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \key f \major
    \time 4/4


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
                c'4 c f2_\fermata 
    
}






texteUn = \lyricmode {
    \set vocalName = "1."
    \set vocNam = "1."

    Deck the hall with boughs of hol -- ly, Fa la la la la, la la la la.
    'Tis the sea -- son to be jol -- ly, Fa la la la la, la la la la.
    Fill the mead cup, drain the bar -- rel, Fa "(la)" la, la "(la)" la, la la la.
    Troll the an -- cient Christ -- mas ca -- rol, Fa la la la la, la la la la.
}
texteDeux = \lyricmode {
    \set vocalName = "2."
    \set vocNam = "2."

    See the flow -- ing bowl be -- fore us, Fa la la la la, la la la la.
    Strike the harp and join the cho -- rus, Fa la la la la, la la la la.
    Fol -- low me in mer -- ry mea -- sure, Fa "(la)" la, la "(la)" la, la la la.
    While I sing of beau -- ty's trea -- sure, Fa la la la la, la la la la.
}
texteTrois = \lyricmode {
    \set vocalName = "3."	
    \set vocNam = "3."

    Fast a -- way the old year pas -- ses, Fa la la la la, la la la la.
    Hail the new, ye lads and las -- sies, Fa la la la la, la la la la.
    Laugh -- ing, quaf -- fing, all to -- ge -- ther, Fa "(la)" la, la "(la)" la, la la la.
    Heed -- less of the wind and wea -- ther, Fa la la la la, la la la la.
}
texteQuatre = \lyricmode {
    \set vocalName = "4."


}




#(set-global-staff-size 19)
#(set-default-paper-size "letter")

collelyrics = \set Lyrics.minimumVerticalExtent = #'(-1.5 . 1.5)
collelyricsbas = \set Lyrics.minimumVerticalExtent = #'(-0 . 1.5)
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
		 \bar "|."
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
		 \bar "|."

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
