% Copyright 2005 - Alexandre Bourget
% $Id$
%
% Please use an UTF-8 enabled editor
%

\version "2.9.19"

\header {
    title = "Sous ta miséricorde"
    composer = "Paroles: D. Bourgeois, Musique: A. Gouzes, o.p."
}

globals = {
  % attache les croches deux à deux.. et pas quatre à quatre ou toutes :)
  %#(override-auto-beam-setting '(end 1 8 * *) 1 4)
  %#(override-auto-beam-setting '(end 1 8 * *) 1 2)
  %#(override-auto-beam-setting '(end 1 8 * *) 3 4)
  \key d \major
  \cadenzaOn

}

sop = \context Voice = "sop"  \relative c'' {
  \globals

  %\override Stem #'stencil = ##f
  a\breve d2 d\breathe d\breve cis2 cis\breathe
  fis,4 fis b2 b4 b a2\bar "|"

  a\breve d,2 d  d\breve d4 d e fis2\fermata \bar "|"

  fis\breve fis4 fis e2 e fis \breathe fis4 fis fis2 fis fis b2 b\breathe
  b4 b a2 a d, e fis\fermata \bar "|."
}

txtLeft = \once \override LyricText #'self-alignment-X = #LEFT

coupletUn = \lyricmode {
  \txtLeft Sous_ta_miséri -- cor -- de, \txtLeft nous_cherchons_re -- fu -- ge, Sain -- te Mè -- re de Dieu
  \txtLeft Accueille_nos_pri -- è -- res \txtLeft quand_nous cri -- ons vers toi.
  \txtLeft Mais_délivre -- nous de tout dan -- ger, toi Ma -- rie, tou -- jours vier -- ge,
  Glo -- ri -- eu -- se et bé -- nie.
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