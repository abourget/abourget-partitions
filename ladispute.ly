\version "2.1.20"

\header {
    composer = "Yann Tiersen"
    title = "La dispute"
    subtitle = "Le fabuleux destin d'Amélie Poulain"
}

mdVoixA = \notes \relative c' {
    \key c \minor
    \time 3/4
    \clef treble
    
    ees2. | bes'2 ~ <bes8. g''\harmonic> ees,16 | 
    d2. | b'2 ~ b16 d, ees f | 
    ees2. | bes'2 ~ bes8. ees,16 | 
    d2. ~ | d2. |
    
    f2. | c'2 ~ c8. f,16 |
    ees2. | c'2 ~ c8. ees,16 |
    d2. | b'2 ~ b8. d,16 |
    c2 ~ c8. d16 | ees4 f g |
    % répète genre.. même chose.. ici sauf les dernièrse mesures
    f2. | c'2 ~ c8. f,16 |
    ees2. | c'2 ~ c8. ees,16 |
    d2. | b'2 ~ b8. d,16 |
    c2. ~ | c2.
    
    %% mêmes choses mais à l'octave ?!
    <ees ees'>2. | <bes' bes'>2 ~ <bes bes'>8. <ees, ees'>16 | 
    <d d'>2. | <b' b'>2 ~ <b b'>8. <d, d'>16 | 
    <ees ees'>2. | <bes' bes'>2 ~ <bes bes'>8. <ees, ees'>16 | 
    <d d'>2. ~ | <d d'>2. |
    
    <f f'>2. | <c' c'>2 ~ <c c'>8. <f, f'>16 |
    <ees ees'>2. | <c' c'>2 ~ <c c'>8. <ees, ees'>16 |
    <d d'>2. | <b' b'>2 ~ <b b'>8. <d, d'>16 |
    <c c'>2 ~ <c c'>8. <d d'>16 | <ees ees'>4 <f f'> <g g'> |
    % répète genre.. même chose.. ici sauf les dernièrse mesures
    <f f'>2. | <c' c'>2 ~ <c c'>8. <f, f'>16 |
    <ees ees'>2. | <c' c'>2 ~ <c c'>8. <ees, ees'>16 |
    <d d'>2. | <b' b'>2 ~ <b b'>8. <d, d'>16 |
    <c c'>2. ~ | <c c'>2.


    \override autoBeamSettings #'(begin 1 8 3 4) = #(ly:make-moment 1 1)
    
    %% partie plus allante avec les croches à la basse
    ees'2. ~ | ees4 d4. c8 | b2. ~ | b4 c4. d8 |
    ees2. ~ | ees2 d4 | b2. ~ | b |
    c ~ | c2 ~ c8 d | c2. ~ | c |
    b ~ | b | g ~ | g2 ~ g8 g | c2. ~ |
    c2 d4 | c2. ~ | c | b ~ | b | c ~ | c | 
    
    
    %% ici partie est octaves brisés à la m.d.
    ees'8 ees, ees' ees, ees' ees, | ees' ees, ees' d d, c' |
    b b, b' b, b' b, | b' b, c' c, d' d, |
    ees' ees, ees' ees, ees' ees, | ees' ees, ees' d d, d' |
    b b, b' b, b' b, | b' b, b' b, b' b, |
    c' c, c' c, c' c, | c' c, c' d d, d' |
    c c, c' c, c' c, | c' c, c' c, c' c, |
    b' b, b' b, b' b, | b' b, b' b, b' b, |
    g' g, g' g, g' g, | g' g, g' g g, g' |
    c c, c' c, c' c, | c' c, c' d d, d' |
    c c, c' c, c' c, | c' c, c' c, c' c, |
    b' b, b' b, b' b, | b'^\markup { molto rit. } b, b' b, b' b, |
    
    % finale
    c'4 g ees | c2. \bar "|."
}

mgVoixA = \notes \relative c {
    \key c \minor
    \time 3/4
    \clef bass

    ees4 <g bes> <g bes> | ees4 <g bes> <g bes> |
    d <g b> <g b> | d <g b> <g b> | 
    ees4 <g bes> <g bes> | ees4 <g bes> <g bes> |
    d <g b> <g b> | d <g b> <g b> | 
    
    f <aes c> <aes c> | f <aes c> <aes c> | 
    ees <g c> <g c> | ees <g c> <g c> | 
    d <g b> <g b> | d <g b> <g b> | 
    c, <ees g> <ees g> | c <ees g> <ees g> | 
    
    % ici on répète les 8 mesures précédentes.
    f <aes c> <aes c> | f <aes c> <aes c> | 
    ees <g c> <g c> | ees <g c> <g c> | 
    d <g b> <g b> | d <g b> <g b> | 
    c, <ees g> <ees g> | c <ees g> <ees g> | 
    
    % ici on début à la m.d. avec l'octave.
    % c'est exactement la même chose que les genre 18 premières mesures.
    ees g bes | ees,4 <g bes> <g bes> |
    d <g b> <g b> | d <g b> <g b> | 
    ees4 <g bes> <g bes> | ees4 <g bes> <g bes> |
    d <g b> <g b> | d <g b> <g b> | 
    
    f <aes c> <aes c> | f <aes c> <aes c> | 
    ees <g c> <g c> | ees <g c> <g c> | 
    d <g b> <g b> | d <g b> <g b> | 
    c, <ees g> <ees g> | c <ees g> <ees g> | 
    
    % ici on répète les 8 mesures précédentes.
    f <aes c> <aes c> | f <aes c> <aes c> | 
    ees <g c> <g c> | ees <g c> <g c> | 
    d <g b> <g b> | d <g b> <g b> | 
    c, <ees g> <ees g> | c <ees g> <ees g> | 
    
    
    %% partie plus allante avec les croches à la basse
    \override autoBeamSettings #'(begin 1 8 3 4) = #(ly:make-moment 1 1)
    
    ees8 bes' ees bes f' bes, | ees, bes' ees bes f' bes, | 
    d, g b d b g | d g b d b g | 
    ees8 bes' ees bes f' bes, | ees, bes' ees bes f' bes, | 
    d, g b d b g | d g b d b g |
    f aes c f c aes | f aes c f c aes |
    ees g c ees c g | ees g c ees c g |
    d g b d b g | d g b d b g | 
    c, ees g c g ees | c ees g c g ees | 
    c f aes c aes f | c f aes c aes f | 
    c ees g c g ees | c ees g c g ees | 
    b d g b g d | b d g b g d | 
    c ees g c g ees | c ees g c g ees |

    %% même chose mais avec des octaves brisées  à la main droite.
    ees bes' ees bes f' bes, | ees, bes' ees bes f' bes, | 
    d, g b d b g | d g b d b g | 
    ees8 bes' ees bes f' bes, | ees, bes' ees bes f' bes, | 
    d, g b d b g | d g b d b g |
    f aes c f c aes | f aes c f c aes |
    ees g c ees c g | ees g c ees c g |
    d g b d b g | d g b d b g | 
    c, ees g c g ees | c ees g c g ees | 
    c f aes c aes f | c f aes c aes f | 
    c ees g c g ees | c ees g c g ees | 
    b d g b g d | b d g b g d |
    
    % finale
    c4 ees g | c2. \bar "|."
}


#(set-global-staff-size 17)


\score {
    \new PianoStaff <<
        \new Staff {
            \new Voice \mdVoixA
        }
        \new Staff {
            \new Voice \mgVoixA
        }
    >>


    \paper {
        papersize = "letter"
        interscoreline = 1\mm
        lastpagefill = 1
        interscorelinefill = 1
    }
    \midi {
        \tempo 4=120
    }
}