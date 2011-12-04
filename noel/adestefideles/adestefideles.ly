\version "2.4.0"

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
    \set vocalName = "1."
    %\set vocNam = "1."

    A -- des -- te fi -- de -- les lae -- ti tri -- um -- phan -- tes,
    Ve -- ni -- te, ve -- ni -- te in Be -- thle -- hem.
    Na -- tum vi -- de -- te Re -- gem an -- ge -- lo -- rum.

}
texteDeux = \lyricmode {
    \set vocalName = "2."
    %\set vocNam = "2."

    En gre -- ge re -- li -- cto, hu -- mi -- les ad -- cu -- nas
    Vo -- ca -- ti pa -- sto -- res ap -- pro -- pe -- rant:
    Et nos o -- van -- ti gra -- du fes -- ti -- ne -- mus.

    Ve -- ni -- te a -- do -- re -- mus Ve -- ni -- te a -- do -- re -- mus
    Ve -- ni -- te a --  do -- re -- mus Do -- mi -- num.

}
texteTrois = \lyricmode {
    \set vocalName = "3."
    %\set vocNam = "3."

    Ae -- ter -- ni Pa -- ren -- tis splen -- do -- rem ae -- ter -- num
    Ve -- la -- tum sub car -- ne vi -- de -- bi -- mus:
    De -- um in -- fan -- tem, pan -- nis in -- vo -- lu -- tum.
}
texteQuatre = \lyricmode {
    \set vocalName = "4."
    %\set vocNam = "4."


}




#(set-global-staff-size 16)
#(set-default-paper-size "letter")

collelyrics = \set Lyrics.minimumVerticalExtent = #'(-1.5 . 1.5)
collelyricsbas = \set Lyrics.minimumVerticalExtent = #'(-0.5 . 1.5)
collestaff = \set Staff.minimumVerticalExtent = #'(-0 . 0)
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
    \override Lyrics.VocalName #'break-align-symbol = #'key-signature
}
tenorbasse = {
    \set Staff.instrument = \markup { \column < "Ténor" { "Basse" } > }
}
sopranoalto = {
    \set Staff.instrument = \markup { \column < "Soprano " { "Alto" } > }
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
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" { \texteUn }
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" { \texteDeux }
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" { \texteTrois }
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
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
	\tempo 4=94
    }
}

\paper {
  linewidth = 174
}