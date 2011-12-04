\version "2.1.13"

#(set-global-staff-size 16)

\header {
    title = "Sainte nuit"
    subtitle = "Sinntee night"
    composer = "Trad. et harm.: Maurice Dela"
}

soprano = \notes \relative c' {
    \clef treble
    \key bes \major
    \time 3/4
    
    
	% 1
    f4. g8 f4 | d2. |
	% 3
    f4.( g8) f4 | d2. |
	% 5
    c'2 c4 | a2. |
	% 7
    bes2 bes4 | f2. |
\break
        % 9
    g2 g4 | bes4. a8 g4 |
	% 11
    f4.( g8) f4 | d2. |
	% 13
    g2 g4 | bes4. a8 g4 |
	% 15
    f4.( g8) f4 | \break d2. |
	% 17
    c'2 c4 | ees4. c8 a4 |
	% 19
    bes2. | d2. |
	% 21
    bes4( f) d | f4. ees8 c4 |
	% 23
    bes2.( | bes2.) \bar "|."
    
    
}


alto = \notes \relative c' {
    \clef treble
    \key bes \major
    \time 3/4
    
    
	% 1
    d2 d4 | bes2. |
    d2 d4 | bes2. |
    ees2 ees4 | ees2( g4) |
    f( ees) d | bes( c d) |
    ees2 ees4 | g4. f8 ees4 |
    d4. ees8 d4 | bes2 bes4 |
	% 13
    ees2 ees4 | g4. f8 ees4 |
    d4. ees8 d4 | bes2 bes4 | 
    ees2 ees4 | ees4. ees8 ees4 |
    d( g f) | e2. |
    f4 d d | d4. c8 a4 |
    bes2.( bes2.) \bar "|."
}


tenor = \notes \relative c' {
    \key bes \major
    \clef treble
    \time 3/4
    
   
    % 1
    bes2 a4 | a( g f) |
    c'( bes) a | a g f |
    r a bes | d( c2) |
    bes2 bes 4 | bes2. |
    bes2 bes 4 | d4. c8 bes4 |
    bes4. bes8 a4 | g2 f4 |
    bes2 bes4 | d4. c8 bes4 |
    bes4. bes8 a4 | g2 f4 |
    r4 bes4 a | g a d8( c) |
    bes2. | bes2( c4) |
    d bes aes | g4. g8 f4 |
    d << f a >> << ees g >> | << d2. f2. >> \bar "|."
}


basse = \notes \relative c {
    \clef bass
    \key bes \major
    \time 3/4
    
	% 1
    bes2 bes4 | bes2. |
    bes2 bes4 | bes2. |
    f'2 f4 | f2( ees4) |
    d( c) bes | d( c bes) |
    ees2 ees4 | ees4. ees8 ees4 |
    bes4. bes8 bes4 | bes2 bes4 |
    ees2 ees4 | ees4. ees8 ees4 |
    bes4. bes8 bes4 | bes2 bes4 |
    r2. | r4 f' fis |
    g2. | g2. | f4 f b, | c4. c8 f4 | bes,2.( | bes2.) \bar "|."
}






texteUn = \lyrics {
    O nuit de paix! Sain -- te nuit!
    Dans le ciel l'as- tre luit;
    Dans les champs, tout re- pose en paix.
    Mais sou- dain, dans l'air pur et frais,
    Le bril- lant choeur des an- ges
    Aux ber- gers ap- pa- raît.
    
}
texteDeux = \lyrics {
    O nuit de foi! Sain -- te nuit!
    Les ber- gers sont ins- truits;
    Con- fi- ants dans la voix des cieux,
    Ils s'en vont a- do- rer leur Dieu;
    Et Jé -sus en é- chan- ge
    Leur sou- rit ra- di- eux.
}
texteTrois = \lyrics {
    O nuit d'a- mour! Sain -- te nuit!
    Dans l'é- table, au- cun bruit;
    Sur la paille est cou- ché l'En- fant
    Que la Vierge en- dort en chan- tant;
    Il re- pose en ses lan- ges
    Son Jé- sus ra- vis- sant.
}
texteQuatre = \lyrics {
    O nuit d'es- poir! Sain -- te nuit!
    L'es- pé- rance a re- lui;
    Le Sau- veur de la terre est né;
    C'est à nous que Dieu l'a don- né,
    Cé- lé- brons ses lou- an- ges;
    Gloire au Verbe In- car- né.
}

texte = \lyrics {
    << \texteUn \\ \texteDeux \\ \texteTrois \\ \texteQuatre >>
}

\score {

%
%
%    Ce boutte là c'est vraiment bouetteux!!
%
%
    
    \context ChoirStaff \notes <<
        \context Staff = staffUp {
            <<
                \addlyrics
                    \addlyrics
                        \addlyrics
                            \addlyrics
                                \soprano
                                \context Lyrics = lyricQuatre \texteQuatre
                            \context Lyrics = lyricTrois \texteTrois
                        \context Lyrics = lyricDeux \texteDeux
                    \context Lyrics = lyricUn \texteUn
                %\addlyrics
                %    \soprano
                %    \new Lyrics \texte
                \\
                \alto >>
        }
        \context Lyrics = lyricUn { }
        \context Lyrics = lyricDeux { }
        \context Lyrics = lyricTrois { }
        \context Lyrics = lyricQuatre { }
        \context Staff = staffDown { << \tenor \\ \basse >> }
        
        %\addlyrics
        %    \soprano
        %    \context Lyrics = lyricUn \texteUn
        
    >>
        

    
    \paper {
        papersize = "letter"
    }
    
    \midi {
	\tempo 4=94
    }
}

