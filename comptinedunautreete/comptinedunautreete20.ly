% version paper20

\version "2.1.16"

#(set-global-staff-size 20)


\include "comptinedunautreete_notes.ly"


\score {
    \context PianoStaff = yo <<
        
        \context Staff = md \mainDroite
        \context Staff = mg <<
            \new Voice \mainGaucheVA
            \new Voice \mainGaucheVB
            \new Voice \notes { s1*50 \break }
        >>
        
    >>
    

    \paper {
        papersize = "letter"
        interscoreline = -6\mm
        lastpagefill = 1
        interscorelinefill = 1
    }
}