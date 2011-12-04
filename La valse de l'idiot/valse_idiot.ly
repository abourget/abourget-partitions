\version "2.1.13"

#(set-global-staff-size 16)

\header {
    composer = "Michel Rivard"
    title = "La valse de l'idiot"
}

mainDroite = \notes \relative c'' {

    \clef treble
    \key g \minor
    \time 3/4

    a4. f8 c' f, | c'4 e4. a,8 | c4 e4. a,8 | c2 a8 g |
    f4 a4. d,8 | f4 a4. d,8 | f4 a4. d,8 | f2. |

    % même chose ici.. sauf la finale
    a4. f8 c' f, | c'4 e4. a,8 | c4 e4. a,8 | c2 a8 g |
    f4 a4. d,8 | f4 a4. d,8 | f4 a4. d,8 | f2 c8 d  |

    ees4 g a | \appoggiatura { g16[ a] } bes2 a8 g | d'2 f,4 | g2 c,8 d |
    ees4 g a | \appoggiatura { g16[ a] } bes2 a8 bes | f'2 a,4 | bes4. c,8 ees g |


    % ça devrait etre slplitté par 3 mesures ici...
    % c'est pour ça que ca fit pas à la fin.
    d4. g8 bes a | f4. a8 c bes | d4 c bes | g4. c,8 ees g |
    d4. g8 bes a | f4. a8 c bes | d4 c bes | g4. c,8 ees g |

    d4. g8 bes a | f4. a8 c bes | d4 c bes | g4. c,8 ees g |
    d4. g8 bes a | f4. a8 c bes | d4 c bes | a4. f8 c' f, |

    c'4 e4. a,8 | c4 e4. a,8 | c2 a8 g |
    f4 a4. d,8 | f4 a4. d,8 | f4 a4. d,8 | f2. \bar "|."


}

mainGauche = \notes \relative c, {
    \clef bass
    \key g \minor
    \time 3/4

    % la main gauche c'est par cycle de 8 mesures contrairement à la main droite.
    f8 c' a'2 | bes,8 f' c'2 | a,8 e' c'2 | d,8 a' f'2 |
    g,,8 d' b'2 | bes,8 f' c'2 | ees,,8 bes' g'2 | d,8 a' f'2 |

    %même chose sauf le premier f, relatif à une 8ve plus bas
    f,8 c' a'2 | bes,8 f' c'2 | a,8 e' c'2 | d,8 a' f'2 |
    g,,8 d' b'2 | bes,8 f' c'2 | ees,,8 bes' g'2 | d,8 a' f'2 |

    c,8 g' c ees g c | g, d' g bes d g | d, f a \slurUp d( d4) | ees,,8 bes' g'4. d,8 |
    c8 g' c ees g c | g, d' g bes d g | d, f a d f4 | ees,,8 bes' g'2 |

    ees,8 bes' g'2 | ees,8 bes' a'2 | ees,8 bes' a'4 g | ees,8 bes' g'2 |
    ees,8 bes' g'2 | ees,8 bes' a'2 | ees,8 bes' a'4 g |

    c,,8 g' ees'2 | c,8 g' ees'2 | c,8 g' f'2 | c,8 g' ees'4 d  |
    c,8 g' ees'2 | c,8 g' ees'2 | c,8 g' f'2 | c,8 g' ees'4 g, |

    f8 c' a'2 | bes,8 f' c'2 | a,8 e' c'2 | d,8 a' f'2 |
    g,,8 d' b'2 | bes,8 f' c'2 | ees,,8 bes' g'2 | d,8 a' b'2 \bar "|."

}


\score {
    \simultaneous {
        \context PianoStaff \notes <<
            \mainDroite \\
            \mainGauche
        >>
    }
    \paper {
        papersize = "letter"
        interscoreline = 1\pt
    }
    \midi {
        \tempo 4=90
    }


}