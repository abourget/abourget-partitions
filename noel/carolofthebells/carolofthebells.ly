\version "2.4.0"

\header {
    title = "Carol of the Bells"
    subtitle = "Ukrainian Carol for Christmas"
    %subsubtitle = ""
    %poet = ""
    composer = "M. Leontovich"
    %meter = ""
    %opus = ""
    %arranger = ""
    %instrument = ""
    %dedication = ""
    %piece = ""
}


sop = \context Voice = "sop" \relative c'' {
    %\stemUp
    %\slurUp
    \dynamicUp
    \clef treble
    \key bes \major
    \time 3/4
    \autoBeamOff
    
    bes4--\pp^\markup { \hspace #2.0 \italic { (staccato) } } a8-. bes-. g4-. | bes-- a8-. bes-. g4-. | bes-- a8-. bes-. g4-. |
    % 4
    bes-- a8-. bes-. g4-. |   \repeat volta 2 {  bes--\pp^\markup { \hspace #2.0 \italic { sempre cresc. } } a8-. bes-. g4-. | bes^\markup { \italic simile }  a8 bes g4 | bes a8 bes g4 |
    % 8
    bes a8 bes g4 | bes\p a8 bes g4 | bes a8 bes g4 | bes a8 bes g4 |

    % page 2, mesure 1
    bes a8 bes g4 | bes\mf a8 bes g4 | bes a8 bes g4 | bes a8 bes g4 |
    % systeme 2
    bes a8 bes g4 | d'\f c8 d bes4 | d c8 d bes4 | d c8 d bes4 | 
    % sys 3
    d c8 d bes4 | g'\ff g8 g f([ ees)] | d4 d8 d c([ bes)] |

    % page 3, mesure 1
    c4 c8 c d([ c)] | g4 g8 g g4 | d8\f\<  e fis g a bes\! |
    % sys 2
    c8-- d\> c4 bes\! | d,8\< e fis g a bes\! | c8-- d\> c4 bes\! | 
    % sys 3
    bes^\markup { \italic { dim. (without retard) } } a8 bes g4 | bes a8 bes g4 | bes a8 bes g4 | bes a8 bes g4 |   } % end repeat

    % page 4, mesure 1
    \alternative { { bes a8 bes g4 | bes a8 bes g4 | bes a8 bes g4 |
    % sys 2
    bes a8 bes g4 } { g2.^\markup { \italic { dim. (without retard) } } ~ } } | g ~ | g ~ | g\fermata | d'4\mf_\markup { \italic slow } c8 d\fermata g,4 ~ |g2.\fermata
    
}


alto = \context Voice = "alto" \relative c'' {
    %\stemDown
    %\slurDown
    \dynamicUp
    \clef treble
    \key bes \major
    \time 3/4
    \autoBeamOff

    % page 1 mesure 1
    R2.*4 | \repeat volta 2 { R2.*4
    % page 1 sys 3 mes 2
    g2.\p^\markup { \hspace #2.0  \italic { sempre cresc. } } | f | ees |

    % page 2
    d | ees4\mf ees8 ees ees4 | g4 g8 g g4 | g4 g8 g g4 | 
    % sys 2
    g4 g8 g g4 | bes4\f a8 bes g4 | bes4 a8 bes g4 | bes4 a8 bes g4 |
    % sys 3
    bes4 a8 bes g4 | bes4\ff a8 bes g4 | bes4 a8 bes g4 | 

    % page 3, sys 1
    bes4 a8 bes g4 | bes4 a8 bes g4 | d2.\f |
    % sys 2
    e4( fis) g | d2. | e4( fis) g |
    % sys 3
    d2. | ees | f( | ees)   }

    % page 4
    \alternative { { d2. ~ | d ~ | d~ | d4 r r } { d2.~ } }
    d ~ |
    % sys 3
    d ~ | d2.\fermata | bes'4\mf_\markup { \italic slow } a8 bes\fermata g4 ~ | g2.\fermata
    
    \bar ":|"
}


tenor = \context Voice = "tenor" \relative c'' {
    %\stemUp
    %\slurUp
    \dynamicUp
    \autoBeamOff
    \key bes \major
    \clef treble
    \time 3/4
    
    % page 1
    R2.*4 | \repeat volta 2 {
    %page 1 sys 2 mes 2
    g2.\pp | f | ees |
    %sys 3
    d | ees\p | d | c |
    
    % page 2
    g2. | c4\mf c8 c c4 | d4 d8 d d4 | ees4 ees8 ees ees4 |
    % sys 2
    d4 d8 d d4 | d2.\f | e | f4( ees?) d |
    % sys 3
    g8([ f)] ees4 d | d4\ff d8 d c4 | g' g8 f ees([ d)] |

    % page 3
    ees4 ees8 ees f([ ees)] | d4 d8 d d4 | bes\f a8 bes g4 |
    %sys 2
    bes4 a8 bes g4 | bes4 a8 bes g4 | bes4 a8 bes g4 |
    % sys 3
    g2. | c | d( | c) |

    } % fin repeat

    \alternative { {
        % page 4
	g2. ~ | g ~ | g ~ |
	g4 r r |
    } {
	bes4 a8 bes g4 |
    } }
    bes4 a8 bes g4 |
    % sys 3
    bes4 a8 bes g4 | bes4 a8 bes g4\fermata | R2.\fermata | g2.\fermata |

    \bar ":|"
    
}


basse = \context Voice = "basse" \relative c {
    \stemDown
    \slurDown
    \dynamicDown
    \clef bass
    \key bes \major
    \time 3/4
    
}






texteUn = \lyricmode {
    %\set vocalName = "1."

    Hark! how the bells, Sweet sil -- ver bells,
    All seem to say ``Throw cares a -- way.''

    Christ -- mas is here,
    Bring -- ing good cheer
    To young and old,
    Meek and the bold.

    Ding, dong, ding, dong,
    That is their song,
    With joy -- ful ring,
    All car -- ol -- ing.

    One seems to hear
    Words of good cheer.
    From eve -- ry -- where,
    Fill -- ing the air.

    O, how they pound,
    Rais -- ing the sound
    O'er hill and dale,
    Tell -- ing their tale.
    
    Gai -- ly they ring,
    While peo -- ple sing __
    Songs of good cheer,
    Christ -- mas is here!

    Mer -- ry, mer -- ry, mer -- ry,
    Mer -- ry Christ -- mas,
    Mer -- ry, mer -- ry, mer -- ry,
    Mer -- ry Christ -- mas,

    On, on they send,
    On, with -- out end
    Their joy -- ful tone
    To eve -- ry home.

    Hark! how the bells, Sweet sil -- ver bells,
    All seem to say ``Throw cares a -- way.''

    dong. __
    Ding, dong ding, dong. __
}
texteDeux = \lyricmode {
    %\set vocalName = "2."

    Ding, dong, ding, dong,

    One seems to hear
    Words of good cheer.
    From eve -- ry -- where,
    Fill -- ing the air.

    O, how they pound,
    Rais -- ing the sound
    O'er hill and dale,
    Tell -- ing their tale.
    
    Gai -- ly they ring,
    While peo -- ple sing
    Songs of good cheer,
    Christ -- mas is here!

    Ding, ding, __ dong,
    Ding, ding, __ dong,
    ding, dong, ding, __

    dong, __
    dong. __
    Ding, dong ding, dong. __

}
texteTrois = \lyricmode {
    %set vocalName = "3."

    Ding, dong, ding, dong,
    Ding, dong, ding, dong,

    One seems to hear
    Words of good cheer.
    From eve -- ry -- where,
    Fill -- ing the air.

    O, __ how __ hap -- py
    are __ their tones.
    
    Gai -- ly they ring,
    While peo -- ple sing __
    Songs of good cheer,
    Christ -- mas is here!

    Ding, dong, ding, dong,
    That is their song,
    With joy -- ful ring,
    All car -- ol -- ing.

    Ding, dong, ding, __

    dong. __

    On, on they send,
    On, with -- out end
    Their joy -- ful tone
    To eve -- ry home.

    Dong.
}
texteQuatre = \lyricmode {
    \set vocalName = "4."


}




#(set-global-staff-size 16)
#(set-default-paper-size "letter")

colle = \set Lyrics.minimumVerticalExtent = #'(-0 . 0)
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
    \set Staff.instrument = \markup { \column < "Sopra." { "Alto" } > }
}



\score {

    \new ChoirStaff  <<
	     \barnum % pour replacer les bar nums au bon endroit dans le ChoirStaff
	     \new Staff {
	         \collestaff
                 \set Staff.instrument = "Soprano 1"
		 \sop
	     }
	     \new Lyrics {
		  \colle
		 % \vocalnamespace
		  \lyricsto "sop" \texteUn
	     }
	     \new Staff {
		  \collestaff
		  \set Staff.instrument = "Soprano 2"
		  \alto
	     }
	     \new Lyrics {
		  \colle
		  \vocalnamespace
		  \lyricsto "alto" \texteDeux
	     }
	     \new Staff {
		  \collestaff
		  \set Staff.instrument = "Alto"
		  \tenor
	     }
	     \new Lyrics {
		  \colle
		  \vocalnamespace
		  \lyricsto "tenor" \texteTrois
	     }
%	     \new Lyrics {
%		  \colle
%		  \vocalnamespace
%		  \lyricsto "sop" \texteTrois
%	     }
%	     \new Lyrics {
%		  \colle
%		  \vocalnamespace
%		  \lyricsto "sop" \texteQuatre
%	     }
	     %\new Staff {
	%	  \tenorbasse
	%	  << \tenor \\ \basse >>
	%     }
    >>
    
    \layout {
%      raggedlastbottom = ##f

    }
    
    \midi {
	\tempo 2=94
    }
}


\paper {
  linewidth = 174
}