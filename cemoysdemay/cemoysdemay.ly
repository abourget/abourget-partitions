% par Alexandre Bourget
%
%

\version "2.12.3"

\header {
	title = "Ce Moys de May"
	subtitle = "S.A.T.B. A capella"
	composer = "Clément Janequin (ca. 1485-1558)"
}

StaffA = \context Voice = "SA" \relative c' {
	\clef violin
	\key f \major
	\time 3/2 

	\partial 4	                   
	a' | a2 \segno g4 f2 g4 |   % 3
	g2 g4 e2 a4 | a2 g4 f2 f4 |   % 5
	bes2 bes4 a a c | c2 c4 a2 a4 |   % 7
	d2 d4 c c a | a2 a4 g2 f4 |   % 9
	f4.( d8) e4 f2^\fermata^\markup { \halign #0 \bold Fine }  a4 | f2 g4 a2 a4 |   % 11
	bes2 bes4 g2 f4 | a2 bes4 c2 c4 |   % 13
	d2 d4 c2 a4 | f2 g4 a2 a4 |   % 15
	bes2 bes4 g2 a4 | a2 a4 a2 a4 |   % 17
	a2 c4 bes2 a4 | g2 f4 e2 c4 |   % 19
	f2 a4 g2 f4 | f4.( d8) e4 f2 a4 |   % 21
	g a2 f c'4 | bes2 a4 g g a |   % 23
	g a2 f c'4 | bes2 a4 g2 a4^\markup { \right-align \bold { D.S. al Fine } }
	\bar "|."
}
StaffB = \context Voice = "SB" \relative c' {
	\clef violin
	\key f \major
	\time 3/2 
	                   
	\partial 4	                   
	f | f2 e4 d2 e4 |   % 3
	e2 d4 c2 f4 | f2 e4 d2 d4 |   % 5
	f2 f4 f f a | a2 g4 f2 f4 |   % 7
	bes2 bes4 a a f | f2 f4 e2 d4 |   % 9
	d c2 c^\fermata c4 | d2 e4 f2 f4 |   % 11
	f2 f4 e2 a4 | f2 g4 a2 a4 |   % 13
	f2 g4 a2 c,4 | d2 e4 f2 f4 |   % 15
	f2 f4 e2 f4 | f2 c4 c2 f4 |   % 17
	f2 f4 d2 f4 | d2 c4 c2 c4 |   % 19
	d2 f4 e2 d4 | d c2 c f4 |   % 21
	e c2 d c4 | d2 f4 e e f |   % 23
	e c2 d c4 | d2 f4 e2 f4 
	\bar "|."
}
StaffC = \context Voice = "SC" \relative c {
	\clef "G_8"
	\key f \major
	\time 3/2 
	                   
	\partial 4	                   
	c' | c2 c4 a2 c4 |   % 3
	c2 g4 a2 c4 | c2 c4 a2 a4 |   % 5
	d2 d4 c c f, | f2 c'4 d2 d4 |   % 7
	g,2 bes4 f f c' | c2 c4 c2 a4 |   % 9
	bes g2 f^\fermata f4 | a2 bes4 c2 c4 |   % 11
	d2 d4 c2 f,4 | d2 g4 f2 f4 |   % 13
	bes2 bes4 f2 f4 | a2 bes4 c2 c4 |   % 15
	d2 d4 c2 c4 | c2 f,4 f2 c'4 |   % 17
	c2 a4 bes2 c4 | bes2 a4 g2 g4 |   % 19
	bes2 c4 c2 a4 | bes g2 f f4 |   % 21
	c' f,2 bes a4 | g2 f4 c' c f, |   % 23
	c' f,2 bes a4 | g2 f4 c'2 c4 
	\bar "|."
}
StaffD = \context Voice = "SD" \relative c {
	\clef bass
	\key f \major
	\time 3/2 
	                   
	\partial 4	                   
	f | f2 c4 d2 r4 |   % 3
	r1 r4 f | f2 c4 d2 d4 |   % 5
	bes2 bes4 f' f r | R1*3/2 |   % 7
	r1 r4 f | f2 f4 c2 d4 |   % 9
	bes c2 f,^\fermata f'4 | d2 g4 f2 f4 |   % 11
	bes,2 bes4 c2 r4 | R1*3/2 |   % 13
	r1 r4 f | d2 g4 f2 f4 |   % 15
	bes,2 bes4 c2 f4 | f2 r2. f4 |   % 17
	f2 f4 g2 f4 | bes,2 f'4 c2 c4 |   % 19
	bes2 f'4 c2 d4 | bes c2 f, r4 |   % 21
	R1*3/2 | R1*3/2 |   % 23
	R1*3/2 | r1 r4 f' 
	\bar "|."
}

%
%
%    Ce Moys de May, paroles pour toutes les voix.
%
%

ParoleA = \lyricmode {
	Ce mos de may, ce moys de may, ce moys de may ma ver -- te cot -- te,
	ce moys de may ma ver -- te cot -- te, ce moys de may je ve -- sti -- ray.
	De bon ma -- tin me le -- ve -- ray, Ce jo -- ly, jo -- ly moys de may,
	de bon ma -- tin me le -- ve -- ray: Un sault, doux saultes,
	trois saults en ru -- e je fe -- ray pour veoir si mon a -- mi -- ver -- ray.

	Et luy di -- ray qu'il me des -- crot -- te, Me des -- cro -- tant le bai -- se -- ray.
	Ce
}

ParoleD = \lyricmode {
	Ce mos de may, ce moys de may ma ver -- te cot -- te, ce moys de may je ve -- sti -- ray.
	De bon ma -- tin me le -- ve -- ray.
	de bon ma -- tin me le -- ve -- ray: Un sault, trois saults, en ru -- e je fe -- ray
	pour veoir si mon a -- mi -- ver -- ray.
	
	Ce 
}


% Version petite à 16 (ou 15 ?)
%
%
#(set-global-staff-size 16)
#(set-default-paper-size "letter")

colle = \override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
colles = \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)

\score {
       \new ChoirStaff <<
	    \once \override Score.MetronomeMark #'extra-offset = #'(-7.5 . 1.5)
	    \override Score.BarNumber #'extra-offset = #'(0 . 0)

	    \new Staff {
		 \colles
		 \set Staff.instrumentName = "Soprano"
		 \tempo 4=300
		 \StaffA
	    }
	    \new Lyrics {
		 \colle
		 \lyricsto "SA" \ParoleA
	    }
	    \new Staff { 
		 \colles
		 \set Staff.instrumentName = "Alto"
		 \StaffB
	    }
	    \new Lyrics {
		 \colle
		 \lyricsto "SB" \ParoleA
	    }
	    \new Staff {
		 \colles
		 \set Staff.instrumentName = "Ténor"
		 \StaffC
	    }
	    \new Lyrics {
		 \colle
		 \lyricsto "SB" \ParoleA
	    }
	    \new Staff {
		 \colles
		 \set Staff.instrumentName = "Basse"
		 \StaffD
	    }
	    \new Lyrics {
		 \colle
		 \lyricsto "SD" \ParoleD
	    }

       >>

       \layout {
	      
       }
       
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 300 4)
      }
    }


}