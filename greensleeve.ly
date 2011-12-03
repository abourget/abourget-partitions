\version "2.4.0"

\header {
    title = "Greensleeves"
    %subtitle = ""
    %subsubtitle = ""
    %poet = ""
    composer = "England, 1500's"
    %meter = ""
    %opus = ""
    arranger = "Harm.: Gilbert Patenaude"
    %instrument = ""
    %dedication = ""
    %piece = ""
}


globales = {
  \key c \major
  \time 6/8
}


sop = \context Voice = "sop" \relative c'' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef treble
    \globales
    

        % 1
    r4. r4 a8 | c4 d8 e8.( fis16) e8 |
        % 3
    d4 b8 g8.( a16) b8 | c4 a8 a8.( gis16) a8 |
        % 5
    b4 gis8 e4 a8 | c4 d8 e8. fis16 e8 |
        % 7
    d4 b8 g8.( a16) b8 | c8. b16 a8 gis8.( fis16) gis8 |
        % 9
    a2. | g'4. g8.( fis16) e8 |
        % 11
    d4 b8 g8.( a16) b8 | c4 a8 a8.( gis16) a8 |
        % 13
    b4 gis8 e4. |
    
    % couplet
    
    g'4. g8.( fis16) e8 | d4 b8 g8.( a16) b8 |
    c8. b16 a8 gis8. fis16 gis8 | a2. \bar ":|"
    
}


alto = \context Voice = "alto" \relative c'' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef treble
    \globales
    %refrain
	% 1
    r4. r4 a8 |
	% 2
    a4 b8 c8.( d16) c8 | b4 g8 e4 g8 |
	% 4
    a4 f!8 e4 e8 | gis4 e8 d4 e8 |
	% 6
    a4 b8 c8. d16 c8 | b4 g!8 e4 e8 |
	% 8
    a8. g16 e8 e8.( d16) e8 | e2. |
    
    % couplet
    
    e'4. e8.( d16) c8 | b4 g8 e4 g8 |
        
    a4 f!8 e4 e8 | gis4 e8 d4. |
     
    e'4. e8.( d16) c8 | b4 g8 e4 g8 |
    
    a8. g16 e8 e8. d16 e8 | e2. \bar ":|"

}


tenor = \context Voice = "tenor" \relative c' {
    \stemUp
    \slurUp
    \dynamicUp
    \autoBeamOff
    \clef "G_8"
    \globales
    

    
    %refrain
	% 1
    r4. r4 a8 |
	% 2
    e4 g8 a4 a8 | g4 d8 b8.( c16) e8 |
	% 4
    f!4 c8 c8.( b16) c8 | e4 b8 b4 c8 |
	% 6
    e4 g8 a4 a8 | g4 d8 b8.( c16) e8 |
	% 8
    e8. d16 c8 b4 b8 | c2. |
    
    % couplet
    
    c'4. c8.( a16) g8 | g4 d8 b8.( c16) e8 |
    
    f!4 c8 c8.( b16) c8 | e4 b8 b4. |
    
    c'4. c8.( a16) g8 | g4 d8 b8.( c16) e8 |
    
    e8. d16 c8 b8. b16 b8 | c2. \bar ":|"
}


basse = \context Voice = "basse" \relative c' {
    \stemDown
    \slurDown
    \dynamicDown
    \autoBeamOff
    \clef bass
    \globales


    %refrain
	% 1
    r4. r4 a8 |
	% 2
    a4 a8 a4 a8 | g4 g8 g4 g8 |
	% 4
    f!4 f8 f4 f8 | e4 e8 e4 a8 |
	% 6
    a4 a8 a4 a8 | g4 g8 g4 g8 |
	% 8
    a8. a16 a8 e4 e8 | a2. |
    
    % coulpet
    
    c,4. c4 c8 | g'4 g8 g4 g8 |
    
    f!4 f8 f4 f8 | e4 e8 e4. |
    
    c4. c4 c8 | g'4 g8 g4 g8 |
    
    a8. a16 a8 e8. e16 e8 | << a,2. a' >> \bar ":|"
    
}






texteUn = \lyricmode {
    \set vocalName = "1."
    %\set vocNam = "1."

    The old year now __ a -- away is fled
    The New year it __ is en -- te -- red.
    Then let us now __ \skip 1 our sins down tread
    And joy -- ful -- ly all __ ap -- pear.

    Lets mer -- ry be this day __
    and let us now __ both sport and play:

    Hang grief __ cast care a -- way __
    God send you a Hap -- py New Year.
    
}
texteDeux = \lyricmode {
    \set vocalName = "2. 3."
    %\set vocNam = "2."

    ``ahh'' et ``ohhs''
}
texteTrois = \lyricmode {
    \set vocalName = "4."
    %\set vocNam = "3."

    And now with New Year's gifts
    each friend __ un -- to each
    o -- ther they do send;
    God grant we may all our lives a -- mend
    and that __ the truth may ap -- pear.

    Now like __ the snake your skin __ cast off of
    e -- vil thoughts and skin.
    And so __ the year be -- gin __
    God send us a Hap -- py New Year!
}
texteQuatre = \lyricmode {
    \set vocalName = "4."
    %\set vocNam = "4."


}




#(set-global-staff-size 20)
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
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" \texteUn
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" \texteDeux
	     }
	     \new Lyrics {
		  \collelyrics
		  \vocalnamespace
		  \lyricsto "sop" \texteTrois
	     }
	     \new Staff {
	       \tenor
}
	     
	     \new Staff {
		  \tenorbasse
		  \basse
	     }
    >>
    
    \layout {
    }
    
    \midi {
	\tempo 4=94
    }
}

