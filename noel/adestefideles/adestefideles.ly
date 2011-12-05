\version "2.12.3"

\header {
    title = "Adeste Fideles"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    composer = "John Francis Wade (c1711-1786)"
    %meter = ""
    %opus = ""
    %arranger = ""
    %instrument = ""
    %dedication = ""
    %piece = ""
}


globales = {
  \key aes \major
  \time 4/4

  \partial 4
}


sop = \context Voice = "sop" \relative c'' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales
    
    aes4 | aes2 ees4 aes | bes2 ees, | c'4 bes c des | c2 bes4 \bar "|" \break \small aes \normalsize |
    aes2 g4 f | g( aes) bes c | g2( f4.) ees8 | ees2. r4 |

    \break
    
    ees'2 des4 c | des2 c | bes4 c aes bes | g4.( f8) ees4 
    % break ici.. c'est correct
    \bar "|" \break
    aes4 | aes g aes bes | aes 2 ees4 c' | c bes c des | c2 bes4
    \bar "|" \break
    c | des c bes aes | g2 aes4( des) | c2( bes4.) aes8 | aes2.
}


alto = \context Voice = "alto" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \globales

    ees4 | ees2 ees4 ees | f2 ees | ees4 ees ees f | ees2 ees4 \small c \normalsize |
    c( d) ees d | ees( ees) ees ees | ees2( d4.) ees8  | ees2. r4 |

    ees2 f8[ g] aes4 | aes( g) aes2 | ees4 ees f f | ees4. d8 ees4
    \small ees | ees1( | ees2) \normalsize ees4 ees | ees ees ees ees | ees2 ees4
    aes | g aes f4 f | ees4( c) c( f) | ees2( ees4.) c8 | ees2.
}


tenor = \context Voice = "tenor" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef "G_8"
    \globales
    
    c4 | c2 c4c | des2 bes | aes4 bes aes aes | aes2 g4 \small aes4 \normalsize |
    aes2 bes4 bes | bes( aes) ees ees | bes'2( aes4.) g8 | g2. r4 |

    c2 des4 ees | des2 ees | ees4 aes, c des | bes2 g4
    \small c4 | c bes c des | c2. \normalsize aes4 | aes g aes bes | aes2 g4
    ees'4 | ees ees des bes | bes2 aes | aes( g4.) ees8 | ees2.
}


basse = \context Voice = "basse" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \globales

    aes4 | aes2 aes4 aes | aes2 g | aes4 g aes des, | ees2 ees4 f |
    f2 ees4 bes | ees( c) g aes | bes2( bes4.) ees8 | ees2. r4 |

    c'2 bes4 aes | bes2 aes | g4 aes f des | ees2 ees4
    \small r4 | R1*3 | r2 r4 \normalsize
    aes,4 | bes c des d | ees( e) f( des) | ees2( ees4.) aes,8 | aes2.
}






texteUn = \lyricmode {
    \set stanza = "1."
    %\set shortVocalName = "1."

    A -- des -- te fi -- de -- les lae -- ti tri -- um -- phan -- tes,
    Ve -- ni -- te, ve -- ni -- te in Be -- thle -- hem.
    Na -- tum vi -- de -- te Re -- gem an -- ge -- lo -- rum.

}
texteDeux = \lyricmode {
    \set stanza = "2."
    %\set shortVocalName = "2."

    En gre -- ge re -- li -- cto, hu -- mi -- les ad -- cu -- nas
    Vo -- ca -- ti pa -- sto -- res ap -- pro -- pe -- rant:
    Et nos o -- van -- ti gra -- du fes -- ti -- ne -- mus.

    Ve -- ni -- te a -- do -- re -- mus Ve -- ni -- te a -- do -- re -- mus
    Ve -- ni -- te a --  do -- re -- mus Do -- mi -- num.

}
texteTrois = \lyricmode {
    \set stanza = "3."
    %\set shortVocalName = "3."

    Ae -- ter -- ni Pa -- ren -- tis splen -- do -- rem ae -- ter -- num
    Ve -- la -- tum sub car -- ne vi -- de -- bi -- mus:
    De -- um in -- fan -- tem, pan -- nis in -- vo -- lu -- tum.
}
texteQuatre = \lyricmode {
    \set stanza = "4."
    %\set shortVocalName = "4."


}




#(set-global-staff-size 17)
#(set-default-paper-size "letter")

barnum = {
    \override Score.BarNumber #'extra-offset = #'(0 . 0)
}

tenorbasse = {
    \set Staff.instrumentName = \markup { \center-column { "Ténor" { "Basse" } } }
}
sopranoalto = {
    \set Staff.instrumentName = \markup { \center-column { "Soprano " { "Alto" } } }
}



\score {
    \new ChoirStaff  <<
	     \barnum % pour replacer les bar nums au bon endroit dans le ChoirStaff
	     \new Staff {
		 \sopranoalto
		 << \sop \\ \alto >>
		 \bar ":|"
	     }
	     \new Lyrics {
		  %\collelyrics
		  %\vocalnamespace
		  \lyricsto "sop" { \texteUn }
	     }
	     \new Lyrics {
		  %\collelyrics
		  %\vocalnamespace
		  \lyricsto "sop" { \texteDeux }
	     }
	     \new Lyrics {
		  %\collelyrics
		  %\vocalnamespace
		  \lyricsto "sop" { \texteTrois }
	     }
	     \new Lyrics {
		  %\collelyrics
		  %\vocalnamespace
		  \lyricsto "sop" { \texteQuatre }
	     }
	     \new Staff {
		  \tenorbasse
		  << \tenor \\ \basse >>
	     }
    >>
    
    \layout {
    }
    
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 94 4)
      }
    }


}

\paper {
  line-width = 174
}