% par Alexandre Bourget - 2004-09-21
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.3.12"

\header {
	title = "Requiem - Mmm... pop"
}


PartA = \context Voice = "PtA" \relative c' {
      \autoBeamOff
      \key e \minor
      \clef "G_8"
      \time 4/4


	   b4 b2 c4 | a4.( c8) \times 2/3 { b4 b b\staccato } |
	   c4 a b2 ~ |
	   b ~ r \bar ":|"
}
PartB = \context Voice = "PtB" \relative c {
      \autoBeamOff
      \key e \minor
      \clef "bass"
      \time 4/4

      e4 e2 a,4 | a4.( a8) \times 2/3 { e'4 e e\staccato } |
      a,4 a e'2 ~ | e r \bar ":|"
}
PartC  = \context Voice = "PtC" \relative c' {
       \key e \minor

       \time 4/4
       \override NoteHead #'font-size = #-4
       \shiftOn
       %\set fontSize = #-4
       s1*3 | fis2^\markup{ "Cling" } fis^\markup{ "Déchire" } |
}

#(set-global-staff-size 23)
#(set-default-paper-size "letter")


ParA = \lyrics {
     Re -- qui -- em ae -- ter -- nam pop! Re -- qui -- em __
}

\score {
        \context ChoirStaff <<
		\new Staff {
		     \tempo 4=60
		     \set Staff.instrument = "Aigu"
		     << \PartA \\ \PartC >>
		}
		\new Lyrics {
		     \lyricsto "PtA" \ParA
		}
		\new Staff {
		     \set Staff.instrument = "Grave"
		     \PartB
		}
		\new Lyrics {
		     \lyricsto "PtB" \ParA
		}
        >>
        \paper {
%	       indent = 0\cm	       
        }
	\midi {
	   \tempo 4=60
	}
}
