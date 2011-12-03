% version paper16

\version "2.1.16"

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
    

    \paper {
        papersize = "letter"
        interscoreline = -3\mm
        lastpagefill = 1
        interscorelinefill = 1
    }
    \midi {
        \tempo 4=100
    }
}