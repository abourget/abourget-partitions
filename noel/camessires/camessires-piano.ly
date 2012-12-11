\version "2.12.3"

\header {
    title = "Ça, Messires"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    composer = "Noëls Canadiens"
    %meter = ""
    %opus = ""
    %arranger = ""
    %instrument = ""
    %dedication = ""
    %piece = ""
}


globales = {
  \key c \minor
  \time 2/4
}



sop = \context Voice = "sop" \relative c'' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales

    c8^\markup { Solo } c g g | ees' ees d4 | ees8 d16[ ees] c8 d | c[ b] c4 \bar "||"

    c8\f^\markup { \hspace #1.2 Tutti } c g g | ees' ees d4 | ees8 d16[ ees] c8 d | c[ b] c4 \bar "||"

    \break

    bes8^\markup { Solo } bes ees ees | bes bes bes8. bes16 | c8 bes aes g | g4 f |

    ees8 f g g | aes g16[ f] g4 | ees'8[ d16 ees] c8 d | c[ b] c4 \bar "||"

    \break

    bes8\f^\markup { \hspace #1.2 Tutti } bes ees ees | bes bes bes8. bes16 | c8 bes aes g | g4 f |

    ees8\< f g g\! | aes g16[ f] g4 | ees'8[\ff d16 ees] c8 d | c[ b] c4 \bar "|."

}


alto = \context Voice = "alto" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef "G_8"
    \globales

    ees4 c | a d | c c8 f | d4 ees \bar "||"

    ees8 ees c c | a a d4 | c8 c c f | d4 ees \bar "||"

    ees8 ees bes bes | ees ees ees ees | ees ees d ees | ees4 d |

    c4. bes8 | aes c g4 | c4. f8 | d4 ees \bar "||"

    ees8 ees bes bes | ees ees ees ees | ees ees d ees | ees4 d |

    c8 c c bes | aes c ees4 | g aes8 f | f4 ees \bar "|."
}


tenor = \context Voice = "tenor" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef "G_8"
    \globales

    g4 ees | fis g | g aes8 aes | g4 g \bar "||"

    g8 g ees ees | fis fis g4 | g8 g aes aes | g4 g \bar "||"

    bes8 aes g aes | bes aes g aes16 bes | aes8 ees' bes bes | bes4 bes |

    g4. e8 | f d ees?4 | g4 aes8 aes | g4 g \bar "||"

    bes8 aes g aes | bes aes g aes16[ bes] | aes8 ees' bes bes | bes4 bes |

    g8 g g c | c d c4 | c4 c8 c | d4 g, \bar "|."
}


basse = \context Voice = "basse" \relative c {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \globales

    c4\mf c | c b | c f8 d | g4 c, \bar "||"

    c8\f c c c | c c b4 | c8 c f d | g4 c, \bar "||"

    g'8\mf f ees f | g f ees f16 g | aes8 g f ees | bes'4 bes, |

    c4. c8 | f, aes c4 | c4 f8 d | g4 c, \bar "||"

    g'8\f f ees f | g f ees f16[ g] | aes8 g f ees | bes'4 bes, |

    c8\< d ees e\! | f aes c4 | c,\ff f8 aes | g4 c, \bar "|."
}






sopUn = \lyricmode {
    %\set vocalName = "1."

    Ça, mes -- si -- res, sa -- vez- vous
    L'heu -- reu -- se nou -- vel -- le_?

    Ça, mes -- si -- res, sa -- vez- vous
    L'heu -- reu -- se nou -- vel -- le_?

    Un Sau -- veur des -- cend vers nous.
    En cet -- te nuit si bel -- le,

    Al -- lons voir l'En -- fant si doux
    Qui nous ap -- pel -- le

    Un Sau -- veur des -- cend vers nous.
    En cet -- te nuit si bel -- le,

    Al -- lons voir l'En -- fant si doux
    Qui nous ap -- pel -- le

}
sopDeux = \lyricmode {
    %\set vocalName = "2."

    Que l'hi -- ver et ses fri -- mas,
    Ait dur -- ci la plai -- ne

    Que l'hi -- ver et ses fri -- mas,
    Ait dur -- ci la plai -- ne

    S'il croit ar -- rê ter nos pas
    Son es -- pé -- rance est vai -- ne.

    Qui cherche un Dieu plein d'ap -- pas
    Point ne craint pei -- ne.

    S'il croit ar -- rê ter nos pas
    Son es -- pé -- rance est vai -- ne.

    Qui cherche un Dieu plein d'ap -- pas
    Point ne craint pei -- ne.
}
sopTrois = \lyricmode {
    %\set vocalName = "3."

    Sa nais -- san -- ce sur nos bords
    Sè -- me l'al -- lé -- gres -- se

    Sa nais -- san -- ce sur nos bords
    Sè -- me l'al -- lé -- gres -- se

    Ré -- pon -- dons par nos trans -- ports,
    A l'ar -- deur qui le pres -- se.

    Pour Lui re -- dou -- blons d'ef -- forts
    Et de ten -- dres -- se.

    Ré -- pon -- dons par nos trans -- ports,
    A l'ar -- deur qui le pres -- se.

    Pour Lui re -- dou -- blons d'ef -- forts
    Et de ten -- dres -- se.

}




#(set-global-staff-size 18)
#(set-default-paper-size "letter")

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

\score {

  \new PianoStaff  <<
    \new Staff {
      \tempo 4=88
      \sop
    }
    \new Lyrics {
      \lyricsto "sop" { \sopUn }
    }
    \new Lyrics {
      \lyricsto "sop" { \sopDeux }
    }
    \new Lyrics {
      \lyricsto "sop" { \sopTrois }
    }
    \new Staff {
      << \alto \\ \tenor \\ \basse >>
    }
  >>

  \layout {
  }


  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 88 4)
    }
  }


}

\paper {
  line-width = 174
}