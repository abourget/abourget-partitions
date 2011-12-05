\version "2.12.3"

\header {
    title = "Les anges dans nos campagnes"
    composer = "J. Montgomery - French (M.S.)"
}

\include "italiano.ly"

globals = {
  \key sol \major
  \time 4/4
}

sop = \context Voice = "sop" \relative do'' {
  \globals
  \stemUp
  \slurUp
  \dynamicUp
  \clef treble

  si4 si si si8( re) | re4. do8 si4 sol | si si8\noBeam la si4 si8( re) | re4. do8 si2 |

  si4 si si si8( re) | re4. do8 si4 sol | si si8\noBeam la si4 si8( re) | re4. do8 si2 \bar "||"

  re2(\p mi8 re do si | do2 re8 do si la | si2 do8 si la sol | la4.) la8 re,2 |

  sol4 la si do | si2 la | re2(\f mi8 re do si | do2 re8 do si la |

  si2 do8 si la sol | la4.) la8 re,2 | sol4 la si do | si2( la) | sol1 \bar "|."

}


alto = \context Voice = "alto" \relative do'' {
  \globals
  \stemDown
  \slurDown
  \dynamicDown
  \clef treble
    
  sol4 sol sol sol | re4.  fad8 sol4 re | sol4 sol8\noBeam fad sol4 fad8( re) | mi4 fad re2 |

  sol4 sol sol fad | sol la sol re | sol sol8\noBeam fad sol4 sol | <mi sol>4 fad re2 |

  si'4( la sold2 | la1 | sol2. mi4 | fad8 mi re dod) re2 |

  mi4 fad sol <mi sol> | sol2 fad | si4( la sold2 | la1 |
  
  sol2. mi4 | fad8 mi re) dod re2 | re4 re sol la | sol2( fad) | re1 |

}


tenor = \context Voice = "tenor" \relative do' {
  \globals
  \stemUp
  \slurUp
  \dynamicUp
  \tieUp
  \clef bass

  re4 re re si | si4. do8 re4 si | mi mi mi re | la la sol2 |
  re'4 re mi si | sol re' re si | re re re si | la la sol2 |

  sol'4( fa mi2 ~ | mi re ~ | re do4 dod | re) sol, la2 |
  si4 re re mi | re2 re | sol4( fa mi2 ~ | mi re ~ |
  re do4 dod | re) sol, la2 | si4 la sol mi' | re2.( do4) | si1

}


basse = \context Voice = "basse" \relative do' {
  \globals
  \stemDown
  \slurDown
  \dynamicDown
  \clef bass

  sol4 sol sol sol | si4. la8 sol4 sol | mi mi mi si | la re sol,2 |
  sol'4. fad8 mi4 re | mi fad sol sol | sol re si sol | la re sol,2 |

  r2 mi'( |la8 sol fad mi fad2 | sol8 fad mi re mi2 | re4) mi fad2 |
  mi4 re sol, la | si( do) re2 | 

  r2 mi( | la8 sol fad mi fad2 | sol8 fad mi re mi2 | re4) mi fad2 |
  sol4 fad mi la, | si( do re2) | sol,1
}






texteUn = \lyricmode {
  \set stanza = #"1."

  Les an -- ges dans nos cam -- pa -- gnes
  Ont en -- ton -- né l'hym -- ne des cieux;
  Et l'é -- cho de nos mon -- ta -- gnes
  Re -- dit ce chant mé -- lo -- di -- eux:

}
texteDeux = \lyricmode {
  \set stanza = #"2."

  Ber -- gers, pour qui cet -- te fê -- te?
  Quel est l'ob -- jet de tous ces chants?
  Quel vain -- queur, quel -- le con -- quê -- te
  Mé -- ri -- te ces cris tri -- om -- phants?

}
texteTrois = \lyricmode {
  \set stanza = #"3."

  Ils an -- non -- cent la nais -- san -- ce
  Du li -- bé -- ra -- teur d'Is -- ra -- ël.
  Et, pleins de re -- con -- nais -- san -- ce,
  Chan -- tent en ce jour so -- len -- nel;


  Glo -- ri -- a
  in ex -- cel -- sis De -- o,
  Glo -- ri -- a  
  in ex -- cel -- sis De -- o.

}
texteQuatre = \lyricmode {
  \set stanza = #"4."

  Cher -- chons tous l'heu -- reux vil -- la -- ge
  Qui l'a vu naî -- tre sous ses toits.
  Of -- frons -- lui le ten -- dr'hom -- ma -- ge
  Et de nos cœurs et de nos voix
}
texteCinq = \lyricmode {
  \set stanza = #"5."

  Dans l'hu -- mi -- li -- té pro -- fon -- de
  Où vous pa -- rais -- sez à nos yeux,
  Pour vous lou -- er, Roi du mon -- de,
  Nous re -- di -- rons ce chant jo -- yeux.
}

%Déjà les bienheureux Anges,
%Les Chérubins, les Séraphins,
%Occupés de vos louanges,
%Ont appris à dire aux humains :

%Dociles à leur exemple,
%Seigneur, nous viendrons désormais
%Au milieu de votre temple,
%Chanter avec eux vos bienfaits.

% voir: http://fr.wikisource.org/wiki/Les_Anges_dans_nos_campagnes
% pour les couplets

#(set-global-staff-size 18)
#(set-default-paper-size "letter")

collelyrics = {
  \override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-1.5 . 1.5)
  \set Lyrics.minimumVerticalExtent = #'(-1.5 . 1.5)
}
collestaff = \set Staff.minimumVerticalExtent = #'(-9 . 5)

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
    %\override Lyrics.VocalName #'break-align-symbol = #'key-signature
}
tenorbasse = {
    \set Staff.instrument = \markup { \column { "Tenor" "Basse" } }
}
sopranoalto = {
    \set Staff.instrument = \markup { \column { "Soprano" "Alto" } }
}



\score {
  \new ChoirStaff  <<
    \barnum
    \new Staff {
      \sopranoalto
      << \sop \\ \alto >>
    }
    \new Lyrics {
      \lyricsto "sop" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteUn
      }
    }
    \new Lyrics {
      \lyricsto "sop" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteDeux
      }
    }
    \new Lyrics {
      \lyricsto "sop" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteTrois
      }
    }
    \new Lyrics {
      \lyricsto "sop" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteQuatre
      }
    }
    \new Lyrics {
      \lyricsto "sop" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteCinq
      }
    }
    \new Staff {
      \tenorbasse
      << \tenor \\ \basse >>
    }
  >>
  

    
  \layout {
    papersize = "letter"
    indent = #0
    interscoreline = 0\mm
    %ragged-right = ##t
    \context {
      \Lyrics
      \override VerticalAxisGroup #'maximum-Y-extent = #'(-1 . 1) 
      \override VerticalAxisGroup #'minimumVerticalExtent = #'(-1.5 . 1.5)
    }
    \context {
      %%\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-20 . 20)
    }
  }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\paper {
  between-system-space = 5\mm
  %linewidth = 174
}