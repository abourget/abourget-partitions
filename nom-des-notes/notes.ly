%
% Notes à imprimer pour les flots
%

\version "2.12.3"


\layout {
  indent = #0

  \context {
    \Staff
    \remove "Time_signature_engraver"
    \remove "Bar_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

#(set-default-paper-size "legal" 'landscape)
#(set-global-staff-size 30)

\score {
  \context Staff \relative c' {
    #(set-accidental-style 'forget)
    \clef treble
    s2


    \set Staff.forceClef = ##t
    \clef treble aes
    \set Staff.forceClef = ##t
    \clef treble a
    \set Staff.forceClef = ##t
    \clef treble ais
    \set Staff.forceClef = ##t
    \clef treble bes
    \set Staff.forceClef = ##t
    \clef treble b
    \set Staff.forceClef = ##t
    \clef treble bis
    \set Staff.forceClef = ##t
    \clef treble ces
    \set Staff.forceClef = ##t
    \clef treble c
    \set Staff.forceClef = ##t
    \clef treble cis
    \set Staff.forceClef = ##t
    \clef treble des
    \set Staff.forceClef = ##t
    \clef treble d
    \set Staff.forceClef = ##t
    \clef treble dis
    \set Staff.forceClef = ##t
    \clef treble ees
    \set Staff.forceClef = ##t
    \clef treble e
    \set Staff.forceClef = ##t
    \clef treble eis
    \set Staff.forceClef = ##t
    \clef treble fes
    \set Staff.forceClef = ##t
    \clef treble f
    \set Staff.forceClef = ##t
    \clef treble fis
    \set Staff.forceClef = ##t
    \clef treble ges
    \set Staff.forceClef = ##t
    \clef treble g
    \set Staff.forceClef = ##t
    \clef treble gis
    \set Staff.forceClef = ##t
    \clef treble aes
    \set Staff.forceClef = ##t
    \clef treble a
    \set Staff.forceClef = ##t
    \clef treble ais
    \set Staff.forceClef = ##t
    \clef treble bes
    \set Staff.forceClef = ##t
    \clef treble b
    \set Staff.forceClef = ##t
    \clef treble bis
    \set Staff.forceClef = ##t
    \clef treble c
    \set Staff.forceClef = ##t
    \clef treble cis
    \set Staff.forceClef = ##t
    \clef treble des
    \set Staff.forceClef = ##t
    \clef treble d
    \set Staff.forceClef = ##t
    \clef treble dis
    \set Staff.forceClef = ##t
    \clef treble ees
    \set Staff.forceClef = ##t
    \clef treble e
    \set Staff.forceClef = ##t
    \clef treble eis
    \set Staff.forceClef = ##t
    \clef treble fes
    \set Staff.forceClef = ##t
    \clef treble f
    \set Staff.forceClef = ##t
    \clef treble fis
    \set Staff.forceClef = ##t
    \clef treble ges
    \set Staff.forceClef = ##t
    \clef treble g
    \set Staff.forceClef = ##t
    \clef treble gis
    \set Staff.forceClef = ##t
    \clef treble aes
    \set Staff.forceClef = ##t
    \clef treble a
    \set Staff.forceClef = ##t
    \clef treble ais
    \set Staff.forceClef = ##t
    \clef treble bes
    \set Staff.forceClef = ##t
    \clef treble b
    \set Staff.forceClef = ##t
    \clef treble bis






    \set Staff.forceClef = ##t
    \clef bass c,,,,
    \set Staff.forceClef = ##t
    \clef bass cis
    \set Staff.forceClef = ##t
    \clef bass des
    \set Staff.forceClef = ##t
    \clef bass d
    \set Staff.forceClef = ##t
    \clef bass dis
    \set Staff.forceClef = ##t
    \clef bass ees
    \set Staff.forceClef = ##t
    \clef bass e
    \set Staff.forceClef = ##t
    \clef bass eis
    \set Staff.forceClef = ##t
    \clef bass fes
    \set Staff.forceClef = ##t
    \clef bass f
    \set Staff.forceClef = ##t
    \clef bass fis
    \set Staff.forceClef = ##t
    \clef bass ges
    \set Staff.forceClef = ##t
    \clef bass g
    \set Staff.forceClef = ##t
    \clef bass gis
    \set Staff.forceClef = ##t
    \clef bass aes
    \set Staff.forceClef = ##t
    \clef bass a
    \set Staff.forceClef = ##t
    \clef bass ais
    \set Staff.forceClef = ##t
    \clef bass bes
    \set Staff.forceClef = ##t
    \clef bass b
    \set Staff.forceClef = ##t
    \clef bass bis
    \set Staff.forceClef = ##t
    \clef bass c
    \set Staff.forceClef = ##t
    \clef bass cis
    \set Staff.forceClef = ##t
    \clef bass des
    \set Staff.forceClef = ##t
    \clef bass d
    \set Staff.forceClef = ##t
    \clef bass dis
    \set Staff.forceClef = ##t
    \clef bass ees
    \set Staff.forceClef = ##t
    \clef bass e
    \set Staff.forceClef = ##t
    \clef bass eis
    \set Staff.forceClef = ##t
    \clef bass fes
    \set Staff.forceClef = ##t
    \clef bass f
    \set Staff.forceClef = ##t
    \clef bass fis
    \set Staff.forceClef = ##t
    \clef bass ges
    \set Staff.forceClef = ##t
    \clef bass g
    \set Staff.forceClef = ##t
    \clef bass gis
    \set Staff.forceClef = ##t
    \clef bass aes
    \set Staff.forceClef = ##t
    \clef bass a
    \set Staff.forceClef = ##t
    \clef bass ais
    \set Staff.forceClef = ##t
    \clef bass bes
    \set Staff.forceClef = ##t
    \clef bass b
    \set Staff.forceClef = ##t
    \clef bass bis
    \set Staff.forceClef = ##t
    \clef bass ces
    \set Staff.forceClef = ##t
    \clef bass c
    \set Staff.forceClef = ##t
    \clef bass cis
    \set Staff.forceClef = ##t
    \clef bass des
    \set Staff.forceClef = ##t
    \clef bass d
    \set Staff.forceClef = ##t
    \clef bass dis
    \set Staff.forceClef = ##t
    \clef bass ees
    \set Staff.forceClef = ##t
    \clef bass e
  }
}