\version "2.12.3"

\header {
    title = "Quel est l'enfant"
    subtitle = "Musique: Greensleeves"
    %subsubtitle = ""
    poet = "Paroles de André Dumont"
    composer = "England, 1500's"
    %meter = ""
    %opus = ""
    arranger = "Harm.: Gilbert Patenaude"
    %instrument = ""
    %dedication = ""
    %piece = ""
}


globales = {
  \key c \major
  \time 6/8
  \partial 8

}


sop = \context Voice = "sop" \relative c'' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales
    \mark "COUPLET"
    
        % 1
    a8 | c4 d8 e8. fis16 e8 |
        % 3
    d4 b8 g8. a16 b8 | c4 a8 a8. gis16 a8 |
        % 5
    b4( gis8) e4 a8 | c4 d8 e8. fis16 e8 |
        % 7
    d4 b8 g8. a16 b8 | c8. b16 a8 gis8. fis16 gis8 |
        % 9
    a2. \break |
    
    \mark "REFRAIN"

    g'4 g8 g8. fis16 e8 |
        % 11
    d4 b8 g8. a16 b8 | c4 a8 a8. gis16 a8 |
        % 13
    b4( gis8) e4. |
    
    % couplet
    
    g'4 g8 g8. fis16 e8 | d4 b8 g8. a16 b8 |
    c8. b16 a8 gis8. fis16 gis8 | a2. \bar ":|"
    
}


alto = \context Voice = "alto" \relative c'' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \globales
    %refrain
	% 1
    a8 |
	% 2
    a4 b8 c8. d16 c8 | b4 g8 e4 g8 |
	% 4
    a4 f!8 e4 e8 | gis4( e8) d4 e8 |
	% 6
    a4 b8 c8. d16 c8 | b4 g!8 e4 e8 |
	% 8
    a8. g16 e8 e8. d16 e8 | e2. |
    
    % couplet
    
    e'4 e8 e8. d16 c8 | b4 g8 e4 g8 |
        
    a4 f!8 e4 e8 | gis4( e8) d4. |
     
    e'4 e8 e8. d16 c8 | b4 g8 e4 g8 |
    
    a8. g16 e8 e8. d16 e8 | e2. \bar ":|"

}


tenor = \context Voice = "tenor" \relative c' {
    \dynamicUp
    \autoBeamOff
    \clef "G_8"
    \globales
    

    
    %refrain
	% 1
    a8 |
	% 2
    e4 g8 a4 a8 | g4 d8 b8. c16 e8 |
	% 4
    f!4 c8 c8. b16 c8 | e4 b8 b4 c8 |
	% 6
    e4 g8 a4 a8 | g4 d8 b8. c16 e8 |
	% 8
    e8. d16 c8 b4 b8 | c2. |
    
    % couplet
    
    c'4 c8 c8. a16 g8 | g4 d8 b8. c16 e8 |
    
    f!4 c8 c8. b16 c8 | e4 b8 b4. |
    
    c'4 c8 c8. a16 g8 | g4 d8 b8. c16 e8 |
    
    e8. d16 c8 b8. b16 b8 | c2. \bar ":|"
}


basse = \context Voice = "basse" \relative c' {
    \dynamicDown
    \autoBeamOff
    \clef bass
    \globales


    %refrain
	% 1
    a8 |
	% 2
    a4 a8 a4 a8 | g4 g8 g4 g8 |
	% 4
    f!4 f8 f4 f8 | e4 e8 e4 a8 |
	% 6
    a4 a8 a4 a8 | g4 g8 g4 g8 |
	% 8
    a8. a16 a8 e4 e8 | a2. |
    
    % coulpet
    
    c,4. c4 c8 | g'4 g8 g4 g8 |
    
    f!4 f8 f4 f8 | e4 e8 e4. |
    
    c4. c4 c8 | g'4 g8 g4 g8 |
    
    a8. a16 a8 e8. e16 e8 | << a,2. a' >> \bar ":|"
    
}






texteUn = \lyricmode {
    %\set vocalName = "1."
    %\set shortVocalName = "1."
  \set stanza = #"1."

    Quel est l'en -- fant qui est né ce soir
    In -- con -- nu des gens de la ter -- re
    Quel est l'en -- fant qui est né ce soir
    Que les pauvr' ont vou -- lu re -- ce -- voir.
}
texteDeux = \lyricmode {
  \set stanza = #"2."

    Quel est l'en -- fant qui est né ce soir
    Pour chan -- ger la nuit en lu -- miè -- re
    Quel est l'en -- fant qui est né ce soir
    Tout jo -- yeux comme un feu dans le noir.


    Il suf -- fit d'un en -- fant ce soir
    Pour u -- nir le ciel et la ter__ re
    Il suf -- fit d'un en -- fant ce soir
    Pour chan -- ger no -- tre vie en es -- poir.

}
texteTrois = \lyricmode {
  \set stanza = #"3."

    Quel est l'en -- fant qui est né ce soir
    Au -- de -- là de tou -- tes fron -- tiè -- res
    Quel est l'en -- fant qui est né ce soir
    Si -- non Dieu que je peux re -- ce -- voir.
}




#(set-global-staff-size 18)
#(set-default-paper-size "letter")

barnum = {
    \override Score.BarNumber #'extra-offset = #'(-0.5 . 0.5)
}
% Ici c'est pour mettre le nom de l'instrument a l'intérieur du staff. Merci! On l'insère dans les Lyrics.
vocalnamespace = {
    \override Lyrics.VocalName #'break-align-symbols = #'(key-signature)
}
sopranoalto = {
    \set Staff.instrumentName = \markup { \center-column { "Soprano " { "Alto" } } }
}

short = {
  \override Lyrics . VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
  \override Staff . VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
}

\score {

    \new ChoirStaff  <<
	     \barnum % pour replacer les bar nums au bon endroit dans le ChoirStaff
	     \new Staff {
		 \sopranoalto
		 << \sop \\ \alto >>
	     }
	     \new Lyrics {
               \lyricsto "sop" { \short \texteUn }
	     }
	     \new Lyrics {
               \lyricsto "sop" { \short \texteDeux }
	     }
	     \new Lyrics {
               \lyricsto "sop" { \short \texteTrois }
	     }
	     \new Staff \with {
               \override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 4)
             } {
               \set Staff.instrumentName = #"Ténor"
	       \tenor
             }
	     \new Staff  \with {
               \override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
             } {
               \set Staff.instrumentName = #"Basse"
               \basse
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
\paper {
  %between-system-space = 0\mm
}

