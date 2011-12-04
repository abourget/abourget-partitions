%
% Par Alexandre Bourget
% Tounne de Olivier Cyr.
% Prelude
%


\version "2.2.0"

\header {
  title = "Prelude"
  composer = "Olivier Cyr"
}

voixA = \notes \relative c' {
  \key c \minor
  \time 4/4

  \clef treble

  g16^\markup{ Agitato }  c ees g g, c ees g g, c ees g g, c ees g |
  bes, c e g bes, c e g bes, c e g bes, c e g |
  aes, c f aes aes, c f aes aes, c f aes aes, c f aes |
  g, b d f g, b d f fis, a c d fis, a c d |
  g, b f' g g, b f' g g, b f' g g, b f' g |
  g, c ees g g, c ees g g, c ees g g, c ees g |
  bes, c e g bes, c e g bes, c e g bes, c e g |
  aes, c f aes aes, c f aes aes, c f aes aes, c f aes |
  f, aes des f f, aes des f g, b d f g, b d f |
  c ees g c c, ees g c c, ees g c d, f aes bes |

  ees, g bes ees ees, g bes ees bes, ees g bes a, cis e g |
  d f a d d, f a d d, f a d e, g bes c |
  f, a c f f, a c f f, a c f dis, fis b dis |

  \key g \major
  
  g1^\markup{ Dolce } | b | a | g2 fis | e fis4 g | fis2 e4 d8 c | b2 c4 d | a1
  g1 |

  \key c \minor

  b'16 g d b g' d b g d' b g d des ees g bes |
  c, ees aes c ees, aes c ees aes, c ees aes ges ees c a |
  f' d bes f d' bes f d bes' f d bes b d f g |
  d f g b f g b d g, b d f g, b d g |
  c,, ees g c c, ees g c c, ees g c c, ees g c |
  c, e g bes c, ees g  bes c, ees g bes c, ees g bes |
  c, f g aes c, f g aes c, f g aes c, f g aes |
  b, f' g aes b, f' g aes^\markup{ rit... } b, f' g aes b, f' g aes |
  <c, e g>1 \bar "|."
}

voixB = \notes \relative c, {
  \key c \minor
  \clef bass
  \time 4/4

  <c c'>1 | <c c'> | <c c'>
  <c c'>2 <d d'> | <g g'>1 |
  <c, c'> | <c c'> | <c c'> |
  <des des'>2 <b b'>4. <g' g'>8 |
  <c, c'>2. <bes bes'>4 | <ees ees'>2. <cis cis'>4 |
  <d d'>2. <c c'>4 | <f f'>2. <b, b'>4 |

  \key g \major

  g'8 d' b' g d' b g d | g, dis' b' g dis' b g dis |
  g, e' b' g e' b g e | a, e' bes' g e' bes g e |
  a, e' bes' g e' bes g cis, | d fis d' a fis' d a fis | 
  e, b' g' e e' b g e | fis, d' c' a d c a d, | g, d' b' g d' b g g, |

  \key c \minor
 
  <g g'>2. <ees ees'>4 | 
  <aes aes'>2. <f f'>4 | <bes bes'>2. <g g'>4 |
  <g g'> <g g'> <g g'> <g g'> | <c, c'>1 \break | <c c'> | <f f'>
  <g g'> | <c, c'>1 \bar "|."
}

#(set-global-staff-size 23)

\score {
  \context PianoStaff <<
    \new Staff {
      \voixA
    }
    \new Staff {
      \voixB
    }
  >>


  \paper {
    papersize = "letter"
    lastpagefill = 1
    interscorelinefill = 1
    interscoreline = 1\mm
    #(define page-breaking ly:optimal-page-breaks)
  }
  \midi {}
}