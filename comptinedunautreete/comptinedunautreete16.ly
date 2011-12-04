% version paper16

\version "2.12.3"

#(set-global-staff-size 16)

\include "comptinedunautreete_notes.ly"


\score {
    \new PianoStaff <<
        \new Staff \mainDroite
        \new Staff <<
            \new Voice \mainGaucheVA \\
            \new Voice \mainGaucheVB
        >>
        
    >>
    

    \layout {
        papersize = "letter"
        interscoreline = -3\mm
        lastpagefill = 1
        interscorelinefill = 1
    }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }


}