\version "2.4.0"

\header {
    title = "We Wish You a Merry Christmas"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    %composer = ""
    meter = "Allegro con brio"
    %opus = ""
    arranger = "Traditional English [WE]"
    %instrument = ""
    %dedication = ""
    %piece = ""
}


globales = {
  \key g \major
  \time 3/4

  \partial 4
}


sop = \context Voice = "sop" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales
    
    %page 1
    d4\f | g4 g8 a g fis | e4 e e | a4 a8 b a g | fis4 d d | b'4 b8 c b a | g4 e d8 d | e4 a fis | g2 \bar "||"
    
    \break 
    %page 2
    d4\mf | g g g | fis2 fis4 | g4 fis e | d2

    a'4 | b a g | d' d, d8 d | e4 a fis | g2\fermata \bar "|."
}

%sopDeux = \context Voice = "sopDeux" \relative c' {
%    d4\mf | g g g | fis2 fis4 | g4 fis e | d2 a'4 | b a g | d' d, d8 d | e4 a fis | g2\fermata \bar "|."
%}

%sop = \context Voice = "sop" \relative c' { 
%  \sopUn \sopDeux
%}


alto = \context Voice = "alto" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \globales

    d4\f | b2 b4 | c4 c c | cis2 cis4 | d d d | dis2 dis4 | e b d?8 d | c?4 c c | b2 \bar "||"

    d4\mf | d d d | d2 d4 | cis cis cis | d2 d4 | d e e | d d d8 d | c?2 d4 | d2_\fermata \bar "|."
}


tenor = \context Voice = "tenor" \relative c {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales
    

    d4\f | d2 g4 | g g g | g2 g4 | a fis fis | fis2 b4 | b g g | g a a | g2 \bar "||"

    r4 | b4\mf b b | a2 a4 | b a g | fis2 fis4 | g g g | g2 g4 | g2 c4 | b2\fermata \bar "|."
}


basse = \context Voice = "basse" \relative c {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \globales

    d4\f | g,2 g4 | c c c | a2 a4 | d d d | b2 b4 | e e b | c a d | g,2 \bar "||"

    s4 | r2. | r2 d'4\mf | a a a | d2 fis4 | g c, c | b2 b4 | c2 d4 | g2_\fermata \bar "|."
}






texteUn = \lyricmode {
    \set vocalName = "1."
    %\set vocNam = "1."

    We wish you a Mer -- ry Christ -- mas,
    We wish you a Mer -- ry Christ -- mas,
    We wish you a Mer -- ry Christ -- mas,
    And a Hap -- py New Year!
}
texteDeux = \lyricmode {
    \set vocalName = "2."
    %\set vocNam = "2."

    Now bring us some fig -- gy pud -- ding,
    Now bring us some fig -- gy pud -- ding,
    Now bring us some fig -- gy pud -- ding,
    And \skip 8 bring some out here.
}
texteTrois = \lyricmode {
    \set vocalName = "3."
    %\set vocNam = "3."

    For we all like fig -- gy pud -- ding, 
    For we all like fig -- gy pud -- ding, 
    For we all like fig -- gy pud -- ding, 
    So \skip 8 bring some out here.
}
texteQuatre = \lyricmode {
    \set vocalName = "4."
    %\set vocNam = "4."

    And we won't go -- til we've got some,
    And we won't go -- til we've got some,
    And we won't go -- til we've got some,
    So \skip 8 bring some out here.
}

texteRefrain = \lyricmode {
  Good ti -- dings to you wher -- ev -- er you are;
  Good ti -- dings for Christ -- mas and a Hap -- py New Year!
}



#(set-global-staff-size 19)
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
		  \lyricsto "sop" { \texteDeux \texteRefrain }
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
%	     \new Lyrics {
%	          \lyricsto "sop" { \texteRefrain }
%	     }
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

\paper {
  linewidth = 174
}