\version "2.12.3"

\header {
    title = "Sainte nuit"
    composer = "Harmonisation: Maurice Dela"
}



sop = \context Voice = "sop" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \clef treble
    \key bes \major
    \time 3/4
    
    
	% 1
    f4.\pp g8 f4 | d2. |
	% 3
    f4.( g8) f4 | d2. |
	% 5
    c'2 c4 | a2.\< |
	% 7
    bes2\!\> bes4 | f2. |
        % 9
    g2\!\p g4 | bes4. a8 g4 |
	% 11
    f4.( g8) f4 | d2. |
	% 13
    g2 g4 | bes4. a8 g4 |
	% 15
    f4.( g8) f4 | d2. |
	% 17
    c'2\mf c4 | ees4. c8 a4 |
	% 19
    bes2. | d2.\> |
	% 21
    bes4(\!\p f) d | f4.\> ees8 c4 |
	% 23
    bes2.(\!\pp | bes2.) \bar "|."
    
    
}


alto = \context Voice = "alto" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \clef treble
    \key bes \major
    \time 3/4
    
    
	% 1
    d4.\pp d8 d4 | bes2. |
    d2 d4 | bes2. |
    ees2 ees4 | ees2(\< g4) |
    f(\!\> ees) d | bes( c d) |
    ees2\!\p ees4 | g4. f8 ees4 |
    d4.( ees8) d4 | bes2. |
	% 13
    ees2 ees4 | g4. f8 ees4 |
    d4.( ees8) d4 | bes2. | 
    ees2\mf ees4 | ees4. ees8 ees4 |
    d( g f) | e2.\> |
    f4(\!\p d) d | d4.\> c8 a4 |
    bes2.(\!\pp bes2.) \bar "|."
}


tenor = \context Voice = "tenor" \relative c' {
      \stemUp
      \slurUp
      \dynamicUp
    \key bes \major
    \clef treble
    \time 3/4
    
   
    % 1
    bes4.\pp bes8 a4 | a( g f) |
    c'( bes) a | a( g f) |
    r a bes | d(\< c2) |
    bes2\!\> bes 4 | bes2. |
    bes2\!\p bes 4 | d4. c8 bes4 |
    bes2 a4 | g2( f4) |
    bes2 bes4 | d4. c8 bes4 |
         % 15
    bes2 a4 | g2( f4) |
    bes4\rest bes4\mf a | g a d8( c) |
    bes2. | bes2(\> c4) |
    d(\!\p bes) aes | g4.\> g8 f4 |
    d(\!\pp << f a >> << ees g >> | << d2. f2.) >> \bar "|."
}


basse = \context Voice = "basse" \relative c {
      \stemDown
      \slurDown
      \dynamicDown
    \clef bass
    \key bes \major
    \time 3/4
    
	% 1
    bes4.\pp bes8 bes4 | bes2. |
    bes2 bes4 | bes2. |
    f'2 f4 | f2(\< ees4) |
    d(\!\> c) bes | d( c bes) |
    ees2\!\p ees4 | ees4. ees8 ees4 |
    bes2 bes4 | bes2. |
    ees2 ees4 | ees4. ees8 ees4 |
        % 15 
    bes2 bes4 | bes2. |
    b2.\rest | r4 f'\mf fis |
    g2. | g2.\> | f2\!\p b,4 |
    c4.\>\p c8 f4 | bes,2.(\!\pp  | bes2.) \bar "|."
}






texteUn = \lyricmode {
	\set vocalName = "1."
    O nuit de paix! Sain -- te nuit!
    Dans le ciel l'as -- tre luit;
    Dans les champs, tout re -- pose en paix.
    Mais sou -- dain, dans l'air pur et frais,
    Le bril -- lant choeur des an -- ges
    Aux ber -- gers ap -- pa -- raît.
    
}
texteDeux = \lyricmode {
	\set vocalName = "2."
    O nuit de foi! Sain -- te nuit!
    Les ber -- gers sont ins -- truits;
    Con -- fi -- ants dans la voix des cieux,
    Ils s'en vont a -- do -- rer leur Dieu;
    Et Jé -- sus en é -- chan -- ge
    Leur sou -- rit ra -- di -- eux.
}
texteTrois = \lyricmode {
	\set vocalName = "3."
    O nuit d'a -- mour! Sain -- te nuit!
    Dans l'é -- table, au -- cun bruit;
    Sur la paille est cou -- ché l'En -- fant
    Que la Vierge en -- dort en chan -- tant;
    Il re -- pose en ses lan -- ges
    Son Jé -- sus ra -- vis -- sant.
}
texteQuatre = \lyricmode {
	\set vocalName = "4."
    O nuit d'es -- poir! Sain -- te nuit!
    L'es -- pé -- rance a re -- lui;
    Le Sau -- veur de la terre est né;
    C'est à nous que Dieu l'a don -- né,
    Cé -- lé -- brons ses lou -- an -- ges;
    Gloire au Verbe In -- car -- né.
}

texte = \lyricmode {
    << \texteUn \\ \texteDeux \\ \texteTrois \\ \texteQuatre >>
}



#(set-global-staff-size 20)
#(set-default-paper-size "letter")

collelyrics = \override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
collestaff = \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-9 . 5)

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
    \set Staff.instrumentName = \markup { \column { "Soprano" { "Alto" } } }
}



\score {

%
%
%    Ce boutte là c'est vraiment bouetteux!!
%
%
    
    \new ChoirStaff  <<
	     \barnum
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
		  \collestaff
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

\paper {
  line-width = 174
}