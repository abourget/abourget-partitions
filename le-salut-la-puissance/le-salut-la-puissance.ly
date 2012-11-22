% Copyright 2012 - Alexandre Bourget
% $Id$
%
% Please use an UTF-8 enabled editor
%

\version "2.14.2"

\header {
    title = "Le salut, la puissance (Alléluia)"
    composer = "Chants de l'Emmanuel"
}

globals = {
  % attache les croches deux à deux.. et pas quatre à quatre ou toutes :)
  \key g \minor
  \time 4/4
}

sop = \context Voice = "sop"  \relative c'' {
  \globals

  \partial 2
  r2 r1 r2.
  a4 | bes c a a | bes c a2
  r1 r2.
  bes4 c c d bes | c8( bes) a4 g2 \bar "|." \break

  g2 g4 fis | g4. g8 a8( g) a4 | bes2
  bes | c4 c d4. bes8 | c8( bes) a4 g2 \bar "||"
}

coupletUn = \lyricmode {
  Al -- lé -- lu -- ia, al -- lé -- lu -- ia_!
  Al -- lé -- lu -- ia, al -- lé -- lu -- ia_!
  Al -- lé -- lu -- ia, al -- lé -- lu -- ia_!
  Al -- lé -- lu -- ia, al -- lé -- lu -- ia_!
}


#(set-global-staff-size 18)
colle = \override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 2.5)

\score {

  \new ChoirStaff <<
    \new Staff {
      \clef treble

      \sop
    }
    %\override Score.LyricText #'font-size = #+3
    \new Lyrics {
      \lyricsto "sop" {
        \colle
        \coupletUn
      }
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
      tempoWholesPerMinute = #(ly:make-moment 75 4)
      }
    }


}
\paper {
  between-system-space = 5\mm
}