\version "2.12.3"

\header {
    title = "Çà, bergers, assemblons-nous."
    composer = "Harmonisation: R-M Chiasson"
}

\include "italiano.ly"

globals = {
  \key la \major
  \time 2/4
}

sop = \context Voice = "sop" \relative do'' {
  \globals
  \stemUp
  \slurUp
  \dynamicUp
  \clef treble
    
  dod4\f dod | re re | dod dod | si r8 si |
  dod4 dod | re re | dod2 | si4 r |

  si4\mf dod | si la | sold fad | mi r8 si' |
  si4. dod8 | re4 dod | si2 | la4 r |

  si4\p dod | si la | si8 la sold fad | mi4 r8 mi'\f |
  mi4. re8 | dod4 re | dod( si) | la2 \bar "|."
}


alto = \context Voice = "alto" \relative do'' {
  \globals
  \stemDown
  \slurDown
  \dynamicDown
  \clef treble
    
  la4 la | si si | la la | sold r8 sold | la4 la | la la | la2 | sold4 r |

  sold4 la | sold fad | mi red | mi r8 sold | sold4. la8 | la4 la | la( sold) | la r |

  sold4 la | sold fad | red8 red red red | mi4 r8 dod' | dod4. si8 | la4 la | la( sold) | mi2
}


tenor = \context Voice = "tenor" \relative do' {
  \globals
  \stemUp
  \slurUp
  \dynamicUp
  \clef bass
    
  mi4 mi| mi sold, | la dod | mi r8 mi | mi4 la, | fad' fad |mi2 | mi4 r |

  sold,4 fad | sold dod | si la | sold r8 mi' | mi4. la,8 | fad'4 mi | re2 | dod4 r |

  mi4 mi| mi dod | si8 si si la | sold4 r8 la | la4. la8 | la4 si8( fad') | mi4( re) | dod2 
}


basse = \context Voice = "basse" \relative do' {
  \globals
  \stemDown
  \slurDown
  \dynamicDown
  \clef bass

  la4 la | sold mi | la la | mi r8 mi | la4 la | re, re | mi2 | mi4 r |

  mi4 red | mi la | si si, | mi r8 mi | mi4. la8 | re,4 mi | mi2 | la4 r |

  mi4 mi | mi mi | si8 si si si | mi4 r8 la | la4. la8 | la4 re, | mi2 | la,
}






texteUn = \lyricmode {
  \set stanza = #"1."
  Çà, ber -- gers, as -- sem -- blons -- nous,
  Al -- lons voir le Mes -- sie -- e;

  Cher -- chons cet En -- fant si doux
  Dans les bras de Ma -- rie -- e;

  Je l'en -- tends, Il nous ap -- pel -- le tous;
  O sort di -- gne d'en -- vi -- e!
}
texteDeux = \lyricmode {
  \set stanza = #"2."
  Lais -- sons -- là tout le trou -- peau,
  Qu'il erre à l'a -- ven -- tu -- re;

  Que sans nous, sur ce cô -- teau
  Il cher -- che sa pâ -- tu -- re.

  Al -- lons voir dans un pe -- tit ber -- ceau
  L'au -- teur de la na -- tu -- re.
}
texteTrois = \lyricmode {
  \set stanza = #"3."

  Que l'hi -- ver, par ses fri -- mas,
  Ait en -- dur -- ci la plai -- ne;

  S'il croit ar -- rê -- ter nos pas,
  Cette es -- pé -- rance est vai -- ne;

  Quand on cher -- che un Dieu rem -- pli d'ap -- pas,
  On ne craint point la pei -- ne.
}
texteQuatre = \lyricmode {
  \set stanza = #"4."

  Sa nais -- san -- ce sur nos bords
  Ra -- mè -- ne l'al -- lé -- gres -- se;

  Ré -- pon -- dons par nos trans -- ports,
  À l'ar -- deur qui le pres -- se;
  
  Se -- con -- dons par de nou -- veaux ef -- forts,
  L'ex -- cès de sa ten -- dres -- se.
}
texteCinq = \lyricmode {
  \set stanza = #"5."
  Dieu nais -- sant, ex -- au -- ce -- nous,
  Dis - si -- pe nos al -- ar -- mes;

  Nous tom -- bons à tes ge -- noux,
  Nous les bai -- gnons de lar -- mes.

  Hâ -- te -- toi de nous don -- ner à tous,
  La paix et tous ses char -- mes.
}


#(set-global-staff-size 20)
#(set-default-paper-size "letter")

collelyrics = \set Lyrics.minimumVerticalExtent = #'(-1 . 1)
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
      %\collestaff
      \sopranoalto
      << \sop \\ \alto >>
    }
    \new Lyrics {
      %\collelyrics
      %\vocalnamespace
      \lyricsto "sop" \texteUn
    }
    \new Lyrics {
      %\collelyrics
      %\vocalnamespace
      \lyricsto "sop" \texteDeux
    }
    \new Lyrics {
      %\collelyrics
      %\vocalnamespace
      \lyricsto "sop" \texteTrois
    }
    \new Lyrics {
      %\collelyrics
      %\vocalnamespace
      \lyricsto "sop" \texteQuatre
    }
    \new Lyrics {
      %\collelyrics
      %\vocalnamespace
      \lyricsto "sop" \texteCinq
    }
    \new Staff {
      %\collestaff
      \tenorbasse
      << \tenor \\ \basse >>
    }
  >>
  

    
  \layout {
    papersize = "letter"
    indent = #0
    interscoreline = 0\mm
    %ragged-right = ##t
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