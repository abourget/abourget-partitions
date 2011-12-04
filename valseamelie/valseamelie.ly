\version "2.4.0"

\header {
    composer = "Yann Tiersen"
    title = "La valse d'Amélie"
}


mdVoixA =  \relative c'' {
    \clef treble
    \key a \minor
    \time 6/8

    % début d'la tounne
    
    d4.\p ~ d4 ~ d16  c | b4. ~ \times 3/2 { b8 a } |
    d4. ~ d16 e d c b c | b4. ~ \times 3/2 { b8 a } |
    c4. ~ c4 ~ c16 b | e,2. |
    c'4. ~ c16 d c b c b | e,2. |
    
    % reprise du chose avec l'octave
    <d' d'>4. ~ <d d'>4 <c c'>8 | <b b'>4. ~ \times 3/2 { <b b'>8 <a a'> } |
    <d d'>4. ~ <d d'>16 e d c b c | <b b'>4. ~ <b b'>4 <a a'>8 |
    <c c'>4. ~ <c c'>4 <b b'>8 | <e, e'>2. |
    <c' c'>4. ~ <c c'>16 d c b c b | <e, e'>2. |
    
    
    %% partie ou ça roule
    \stemUp
    d'4. \times 3/2 { d8 c } | b4. a |
    d4. \times 3/2 { d8 c } | b4. a |
    c4. c | c2. |
    c4. c | c2. |
    d4. \times 3/2 { e8 c } | b4. a |
    d4. \times 3/2 { e8 c } | b4. a |
    c4. \times 3/2 { c8 b } | g2. |
    c4. \times 3/2 { c8 b } | g2. |
    \stemNeutral
    
    %% partie où la basse est en furie.
    d'4. ~ d16 e f e f e | a,4. ~ a8 b8. c16 |
    d4. ~ d16 e f e f e | a,4. ~ \times 3/2 { a8 g } |
    a4. ~ a16 b c b c b | e,4. ~ e8 f8. g16 |
    a4. ~ a16 b c b c b | e,2. |
    % en octaves
    <d' d'>4. ~ <d d'>8 <c c'>4 | <b b'>4. <a a'> |
    <d d'>4. ~ <d d'>16 e d c b c | <b b'>4. <a a'> |
    <c c'>4. ~ \times 3/2 { <c c'>8 <b b'> } | <e, e'>2. |
    <c' c'>4. ~ <c c'>16 d c b c b | <e, e'>2. |
    
    
    
    %% partie ou ça roule - répète! à l'octave, mais c'est la même chose!
    \stemUp
    d''4. \times 3/2 { d8 c } | b4. a |
    d4. \times 3/2 { d8 c } | b4. a |
    c4. c | c2. |
    c4. c | c2. |
    d4. \times 3/2 { e8 c } | b4. a |
    d4. \times 3/2 { e8 c } | b4. a |
    c4. \times 3/2 { c8 b } | g2. |
    c4. \times 3/2 { c8 b } | g2. |
    \stemNeutral
    
    % finale lente
    d4.\mp ~ d4 ~ d16 c | b4. ~ \times 3/2 { b8 a } |
    %\markup { più lento }
    d4. ~d16 e d c b c | b2. |
    a2. \bar "|."
}

mdVoixB =  \relative c' {
    \time 6/8
    
    % skip l'intro
    s2.*16
    
    %% partie qui roule
    \stemDown
    d16 e f e f e d e f e f e | r d e d e d r c d e d c |
    d e f e f e d e f e f e | r d e d e d r c d e d c |
    r e f e f e r e f e f d | r d e d e d e d c e d c |
    r e f e f e r e f e f d | r d e d e d e d c e d c |
    d e f e f e d e f e f e | r d e d e d r c d e d c |
    d e f e f e d e f e f e | r d e d e d r c d e d c |
    r e f e f e r e f e f d | r d e d e d e d c e d c |
    r e f e f e r e f e f d | r d e d e d e d c e d c |
    
    %% partie ou la basse est en furie.
    s2.*16 % shhh :) 
    |
    % encore répète à l'octave, avec le froufrou à la basse.
    % même chose que tantôt.. juste des clapotis!
    r16 e' f e f e r e f r e f | r d e d e d r c d e d c |
    r e f e f e r e f r e f | r d e d e d r c d e d c |
    r e f e f e r e f e f d | r d e d e d e d c e d c |
    r e f e f e r e f e f d | r d e d e d e d c e d c |
    r e f e f e r e f r e f | r d e d e d r c d e d c |
    r e f e f e r e f r e f | r d e d e d r c d e d c |
    r e f e f e r e f r e f | r d e d e d e d c e d c |
    r e f e f e r e f r e f | r d e d e d e d c e d c |
    
    % fin pour cette voix
}


mgVoixA =  \relative c {
    \clef bass
    \key a \minor
    \time 6/8
    
    % début d'la tounne...
    d4. <f a d> | a, <c e a b> |
    d <f a d> | a, <c e a b> |
    f <a c f> | c, <e g b> |
    f <a c f> | c, <e g b> |
    
    % mêmes accords qu'au début début. pour répète
    d <f a d> | a, <c e a b> |
    d <f a d> | a, <c e a b> |
    f <a c f> | c, <e g b> |
    f <a c f> | c, <e g b> |
    
    
    %% partie ou ça roule
    d8 <f a> <f a> d8 <f a> <f a> | a, <c e a> <c e a> c <e a> <e a> |
    d <f a> <f a> d8 <f a> <f a> | a, <c e a> <c e a> c <e a> <e a> |
    
    f <a c> <a c> f <a c> <a c> | c, <e g> <e g> c <e g> <e g>  |
    f <a c> <a c> f <a c> <a c> | c, <e g> <e g> c <e g> <e g>  |

    d <f a> <f a> d8 <f a> <f a> | a, <c e a> <c e a> c <e a> <e a> |
    d <f a> <f a> d8 <f a> <f a> | a, <c e a> <c e a> c <e a> <e a> |
    
    f <a c> <a c> f <a c> <a c> | c, <e g> <e g> c <e g> <e g>  |
    f <a c> <a c> f <a c> <a c> | c, <e g> <e g> c <e g> <e g>  |
    
    
    
    %% partie ou la basse est en furie.
    d16 a' d e f a f e d a d, a' | a, e' a b c e c b a e a, e' |
    d a' d e f a f e d a d, a' | a, e' a b c e c b a e a, e' |
    f, c' f g a c a g f c f, c' | c, g' c d e g e d c g c, g' |
    f c' f g a c a g f c f, c' | c, g' c d e g e d c g c, g' |
    % on répète! la même chose.
    d'16 a' d e f a f e d a d, a' | a, e' a b c e c b a e a, e' |
    d a' d e f a f e d a d, a' | a, e' a b c e c b a e a, e' |
    f, c' f g a c a g f c f, c' | c, g' c d e g e d c g c, g' |
    f c' f g a c a g f c f, c' | c, g' c d e g e d c g c, g' |

    
    %% même chose ici, sauf que les dernières notes sont des croches, au 
    %% lieu des doubles croches.    
    d'16 a' d e f a f e d a d,8 | a16 e' a b c e c b a e a,8 |
    d16 a' d e f a f e d a d,8 | a16 e' a b c e c b a e a,8 |
    % et en plus.. la partie avec fa et do, c'est à l'octave
    f'16 c' f g a c a g f c f,8 | c16 g' c d e g e d c g c,8 |
    f16 c' f g a c a g f c f,8 | c16 g' c d e g e d c g c,8 |
    % on répète! la même chose... mais encore même chose que juste avant
    d16 a' d e f a f e d a d,8 | a16 e' a b c e c b a e a,8 |
    d16 a' d e f a f e d a d,8 | a16 e' a b c e c b a e a,8 |
    % encore la diff ici c'est que c'est à l'octave.
    f'16 c' f g a c a g f c f,8 | c16 g' c d e g e d c g c,8 |
    f16 c' f g a c a g f c f,8 | c16 g' c d e g e d c g c,8 |


    %% même chose qu'au début :)
    d4. <f a d> | a, <c e a b> |
    d <f a d> |

    <<    
        \new Voice {
            \stemDown
            \tieDown
            a,2. ~ | a2.
        }
        \new Voice {
            r4. <c e a b>  ~ | <c e a b>2.
        }
    >>

    \bar "|."

}

#(set-global-staff-size 20)
#(set-default-paper-size "letter")


\score {
    \new PianoStaff <<
        \new Staff <<
            \new Voice \mdVoixB \\
            \new Voice \mdVoixA
        
        >>
        \new Staff <<
            \new Voice \mgVoixA
        >>
        
    >>


    \layout {
        papersize = "letter"
        %interscoreline = \mm
        lastpagefill = 1
        interscorelinefill = 1
    }
    \midi {
        \tempo 4=95
    }
}