%#(ly:set-option 'old-relative)



\header {
    title = "Mon beau sapin"
    subtitle = "My great sapinn"
    date = "21 nov. 2003"
    composer = "Inconnu"
}


soprano = \notes \relative c' {
    \clef treble
    \key g \major
    \time 3/4
    \stemUp

    s2   % musuire incomplete
    d4 | % anacrouse
    
    g8. g16 g4 a | b8. b16 b4. b8 | 		% 3
    a8 b c4 fis, | a g r8 d' | 			% 5
			%couplet
    d8. b16 e4. d8 | d8. c16 c4. c8 | 		% 7
    c8. a16 d4. c8 | c8. b16 b4 d, |		% 9
			% repete
    g8. g16 g4 a | b8. b16 b4. b8 | 		% 11 - 3
    a8 b c4 fis, | a g2 \bar "|."		% 13 - 5
    
}


alto = \notes \relative c'{
    \stemDown
    
    s2. | % anacrouse
    
    d8. d16 d4 fis8 e | d4 d2 |			% 3
    e8 d e4 a,8 b | c4 b r4 |			% 5
			%couplet
    d4 g2 | gis4 a2 |				% 7
    a4 fis2 | fis4 g d |			% 9
			% repete
    d8. d16 d4 fis8 e | d4 d2 |			% 11 - 3
    e8 d e4 c8 d | d2. \bar "|."		% 13 - 5
			
}

tenor = \notes \relative c' {
    \clef bass
    \time 3/4
    \key g \major
    \stemUp
    
    s2 r4 | % anacrouiasse
    
    b8. b16 b4 d8 c | b4 a g | 			% 3
    g a8 g fis4 | d2 r4 |			% 5
			%couplet
    b'4 c d | e e2 |				% 7
    d4 d2 | dis4 e a, |				% 9
			%repete    
    b8. b16 b4 d8 c | b4 a g | 			% 11 - 3 
    g a8 g fis4 | c'4 b2 \bar "|."		% 13 - 5

}

basse = \notes \relative c {
    \stemDown
    
    s2. | % anacrouse
    
    g8. g16 g4 g | g b2 |			% 3
    c2 d4 | g,2 r4 |				% 5
		    %couplet
    g4 c b | b4 a g |				% 7
    fis4 a fis' | b, e d |			% 9
		    % repete
    g,8. g16 g4 g | g b2 |			% 11 - 3
    c2 d4 | g,2. \bar "|."			% 13 - 5


}


texte = \lyrics {
    \skip 4*2
    Mon4 beau8. sa-16 pin,4 roi4 des8. for-16 ets4.
    Que8 j'ai- me ta4 ver- du- re4.
    Quand8 par8. l'hi-16 ver,4. bois8 et8. gue-16 rets4.
    Sont8 de-8. pouil-16 les,4. de8 leurs8. at-16 traits4
    Mon4 beau8. sa-16 pin,4 roi des8. for-16 ets4.
    Tu8 gar des ta4 pa- ru- re.2_

}


\score {
    \context ChoirStaff <<
        \new Staff {
    	        %\partial 2
	    	<<
        	    \soprano \\
        	    \alto
        	>>
        }
	\new Lyrics {
	    \texte
	}
        \new Staff {
    		<<
        	    \tenor \\
    	    	    \basse
    		>>
        }
    >>
    
    \paper {
	papersize = "letter"
    }
    
    \midi {
	\tempo 4=60
    }
}

%\include "paper11.ly"
