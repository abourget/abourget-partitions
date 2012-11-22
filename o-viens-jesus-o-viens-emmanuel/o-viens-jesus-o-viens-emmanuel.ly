% Copyright 2005 - Alexandre Bourget
% $Id$
%
% Please use an UTF-8 enabled editor
%

\version "2.9.19"

\header {
    title = "O viens, Jésus, ô viens Emmanuel"
    subtitle = "Veni, veni, Emmanuel"
}

globals = {
  % attache les croches deux à deux.. et pas quatre à quatre ou toutes :)
  %#(override-auto-beam-setting '(end 1 8 * *) 1 4)
  %#(override-auto-beam-setting '(end 1 8 * *) 1 2)
  %#(override-auto-beam-setting '(end 1 8 * *) 3 4)
  \key e \minor
  \cadenzaOn
  #(set-accidental-style 'forget)

}

myalign = \context Voice = "align" \relative c {

  s4*14 \bar "||"

  s8[ s] s4 s8[ s] s[ s] s2 \breathe \bar ""
  s8 s s s s s s2 \breathe \bar ""
  s8 s s s s4 s \breathe \bar ""
  s8 s s s s s s4 s \breathe \bar ""
  s8 s s s s s s2 \breathe \bar ""
  s8 s \times 2/3 { s8 s s s s s s s s } s2 \breathe \bar ""
  \times 2/3 { s8 s s s s s } s4 s \breathe \bar ""
  \times 2/3 { s8 s s } s s s s s4. s8 \times 2/3 { s8 s s s s s } s2 \breathe \bar ""
  s8 s \times 2/3 { s s s } s s s2 s8 s s s s s s4 \breathe \bar ""
  s2( s) s1
}

sop = \context Voice = "sop"  \relative c' {
  \globals

  \override Stem #'stencil = ##f
  e4 g b b b a c b a g2\breathe \bar ""
  a4 b g e g a fis e d e2\breathe \bar ""
  a4 a e e fis g2 fis4 e d2\breathe \bar ""
  g4 a b b b a c b a g2\breathe \bar "||"
  d'4 d2\breathe b4 b2\breathe b4 a c b a g \bar ""
  a b g e g a( fis e) d e2 \bar "|."

  \revert Stem #'stencil
}

coupletUn = \lyricmode {
  \set stanza = #"1."
  Ô viens, Jé -- sus, ô viens Em -- ma -- nu -- el,
  Nous dé -- voi -- ler le mon -- de fra -- ter -- nel
  Où ton a -- mour, plus fort que la mort,
  Nous ré -- gé -- nè -- re_au sein d'un mê -- me corps.

  Chan -- tez_! Chan -- tez_!
  Il vient à no -- tre_ap -- pel com -- bler nos cœurs, Em -- ma -- nu -- el_!
}
coupletDeux = \lyricmode {
  \set stanza = #"2."
  Ô viens, Ber -- ger que Dieu nous a pro -- mis,
  En -- tends au loin ton peu -- ple qui gé -- mit_;
  Dans la vio -- len -- ce_il vit son ex -- il,
  De ses souf -- fran -- ces quand re -- naî -- tra -- t-il_?

}
coupletTrois = \lyricmode {
  \set stanza = #"3."
  Ô viens, Jé -- sus, et dans la chair bles -- sée,
  Fleu -- ris pour nous, ra -- ci -- ne de Jes -- sé_;
  Près de l’eau vi -- ve, l’ar -- bre plan -- té
  Sou -- lè -- ve jus -- qu’à Dieu le mon -- de_en -- tier.
}
coupletQuatre = \lyricmode {
  \set stanza = #"4."
  Ô viens, Jé -- sus, tra -- cer no -- tre che -- min,
  Vi -- si -- te -- nous, É -- toi -- le du ma -- tin,
  Du fond de nos re -- gards fais mon -- ter
  L’é -- clat sou -- dain du jour d’é -- ter -- ni -- té.
}


#(set-global-staff-size 18)
colle = \override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 2.5)
italique = {
  \override Lyrics.LyricText #'font-shape = #'italic
  \override Lyrics.LyricText #'font-series = #'medium
}
medium = {
  \override Lyrics.LyricText #'font-series = #'medium
}

\score {

  \new ChoirStaff <<
    % Ici on devrait ajouter: \new ChordNames \accords si
    % la ligne "%accords:" existe en début de fichier.

    %\new ChordNames \accords
    %ChordNames:

    \new Staff {
      \clef treble

      \sop
    }
    %\override Score.LyricText #'font-size = #+3
    \new Lyrics {
      \lyricsto "sop" {
        \colle
        \coupletUn
      }
    }
    \new Lyrics {
      \lyricsto "sop" {
        \colle
        \coupletDeux
      }
    }
    \new Lyrics {
      \lyricsto "sop" {
        \colle
        \coupletTrois
      }
    }
    \new Lyrics {
      \lyricsto "sop" {
        \colle
        \coupletQuatre
      }
    }
  >>


  \layout {
    papersize = "letter"
    indent = #0
    interscoreline = 0\mm
    %ragged-right = ##t
  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 75 4)
      }
    }


}
\paper {
  between-system-space = 5\mm
}