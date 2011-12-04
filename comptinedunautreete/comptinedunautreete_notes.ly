% Fichier des NOTES de la Comptine de Yann Tiersen

\version "2.12.3"

\header {
    composer = "Yann Tiersen"
    title = "Comptine d'un autre été: l'après-midi"
}


mainDroite =  \relative c'' {
    \clef treble
    \key g \major
    \time 4/4
        

    
    % main gauche seule.
    r1 | r1 | r1 | r1 |
    
    % doubles avec blanche, 
    r8 g16 fis g8 b16 c b2 | r8 fis16 g fis8 g16 a g2 | r8 fis16 e fis8 b16 c b2 | r8 fis16 e fis2. | 
    % répète
    r8 g16 fis g8 b16 c b2 | r8 fis16 g fis8 g16 a g2 | r8 fis16 e fis8 b16 c b2 | r8 fis16 e fis2. | 
    
    % pouing, pang noir. croche( blanche)
    e'4. b8 ~ b2 | d4. b8 ~ b2 | fis'4. b,8 ~ b2 | fis'4. a,8 ~ a2 | 
    
    % pouing, pang noir. croche( blanche)  .. doublés (à la sixte) (2 mesures par lignes)
    <b g'>4. <g e'>8 ~ <g e'>2 | <b g'>4. <g d'>8 ~ <g d'>2 |
    <b fis'>4. <fis d'>8 ~ <fis d'>2 | <a fis'>4. <fis d'>8 ~ <fis d'>2 | 
    
    % doubles (2 mesures par lignes)
    b16 e b' b, e b' b, e b' b, e b' b, e c e | b16 d b' b, d b' b, d b' b, d b' b, d a d |
    fis, b fis' fis, b fis' fis, b fis' fis, b fis' fis, b g b | a d a' a, d a' a, d a' a, d a' a, d g, d' |
    
    % doubles répétition (2 mesures par lignes)
    b16 e b' b, e b' b, e b' b, e b' b, e c e | b16 d b' b, d b' b, d b' b, d b' b, d a d |
    fis, b fis' fis, b fis' fis, b fis' fis, b fis' fis, b g b | a d a' a, d a' a, d a' a, d a' a, d a'8 |

    
    % doubles avec blanche,  répétition à l'octave (8va)
    \ottava #1
    r8 g16 fis g8 b16 c b2 | r8 fis16 g fis8 g16 a g2 | r8 fis16 e fis8 b16 c b2 | r8 fis16 e fis2. | 
    % répète
    r8 g16 fis g8 b16 c b2 | r8 fis16 g fis8 g16 a g2 | r8 fis16 e fis8 b16 c b2 | r8 fis16 e fis2. | 
    
    % pouing, pang noir. croche( blanche)  - RÉPÈTE À L'OCTAVE
    e'4. b8 ~ b2 | d4. b8 ~ b2 | fis'4. b,8 ~ b2 | fis'4. a,8 ~ a2 | 
    
    % pouing, pang noir. croche( blanche)  .. doublés (à la sixte) (2 mesures par lignes)   - RÉPÈTE À L'OCTAVE
    <b g'>4. <g e'>8 ~ <g e'>2 | <b g'>4. <g d'>8 ~ <g d'>2 |
    <b fis'>4. <fis d'>8 ~ <fis d'>2 | <a fis'>4. <fis d'>8 ~ <fis d'>2 |     
    
    % doubles (2 mesures par lignes)  - RÉPÈTE À L'OCTAVE
    b16 e b' b, e b' b, e b' b, e b' b, e c e | b16 d b' b, d b' b, d b' b, d b' b, d a d |
    fis, b fis' fis, b fis' fis, b fis' fis, b fis' fis, b g b | a d a' a, d a' a, d a' a, d a' a, d g, d' |
    
    % doubles répétition (2 mesures par lignes)  - RÉPÈTE À L'OCTAVE
    b16 e b' b, e b' b, e b' b, e b' b, e c e | b16 d b' b, d b' b, d b' b, d b' b, d a d |
    fis, b fis' fis, b fis' fis, b fis' fis, b fis' fis, b g b | a d a' a, d a' a, d a' a, d a' a, d a' g |    
    
    % mesure finale.
    <g, b e>1 \bar "|."
    
    \ottava #0
}

% voix du bas
mainGaucheVA =  \relative c {
    \clef bass
    \key g \major
    \time 4/4


    % intro main gauche seule.
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    
    % ptites notes m. droite.
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    % répète
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    
    % pouing, pang.... pouing, pang.
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    % pouing, pang doublé
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    
    % doubles m.d
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    % répète
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |


    %% Répétition avec la main droite à l'octave.

    % ptites notes m. droite.
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    % répète
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    
    % pouing, pang.... pouing, pang.
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    % pouing, pang doublé
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    
    % doubles m.d
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' fis a |
    % répète
    e8 b' g b e, b' g b | d, b' g b d, b' g b | d, b' fis b d, b' fis b | d, a' fis a d, a' d4 |
    
    % mesure finale.
    <e, b' e>1 \bar "|."
    
    
        
}

% voix du haut
mainGaucheVB =  \relative c' {
    %\clef bass
    %\key g \major
    %\time 4/4
    \stemUp
        

    % intro main gauche seule.
    e4 e e e | d d d d | d d d d | d d d d |
    
    % ptites notes m. droite.
    e4 e e e | d d d d | d d d d | d d d d |
    % répète
    e4 e e e | d d d d | d d d d | d d d d |
    
    % pouing, pang.... pouing, pang.
    e4 e e e | d d d d | d d d d | d d d d |
    % pouing, pang doublé
    e4 e e e | d d d d | d d d d | d d d d |
    
    % doubles m.d
    e4 e e e | d d d d | d d d d | d d d d |
    % répète
    e4 e e e | d d d d | d d d d | d d d d |


    %% Répétition avec la main droite à l'octave.

    % ptites notes m. droite.
    e4 e e e | d d d d | d d d d | d d d d |
    % répète
    e4 e e e | d d d d | d d d d | d d d d |
    
    % pouing, pang.... pouing, pang.
    e4 e e e | d d d d | d d d d | d d d d |
    % pouing, pang doublé
    e4 e e e | d d d d | d d d d | d d d d |
    
    % doubles m.d
    e4 e e e | d d d d | d d d d | d d d d |
    % répète
    e4 e e e | d d d d | d d d d | d^\markup \italic { molto rit... } d d d |
    
    % mesure finale.
    s1 \bar "|."

}