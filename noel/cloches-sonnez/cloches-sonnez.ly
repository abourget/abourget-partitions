\version "2.12.3"

\header {
    title = "Cloches, sonnez"
    subtitle = "à quatre voix mixtes"
    composer = "Harmonisation OMER LETOURNEAU"
}

\include "italiano.ly"

globals = {
  \key re \major
  \time 2/4
  \autoBeamOff
}

sop = \context Voice = "sop" \relative do'' {
  \globals
  \stemUp
  \slurUp
  \tieUp
  \dynamicUp
  \clef treble


  la4 fad8. fad16 | la4. r8 | si4 si8. si16 |
  mi,4. r8 | fad4 la | re dod8( si) | la4 re,8. sol16 | fad4 mi8 r |
  
  la4 fad8. fad16 | la4. r8 | si4 mi,8. fad16 | sol4. r8 | fad8. fad16 la8. la16 |
  re4 re8. dod16 | si2 | la4. r8 | la4 la8. la16 | la4 ~ la8 r | la4 la8. la16 |
  la4 ~ la8 r | la4 la8. la16 | si4.. si16 | dod4.. re16 | re4.\fermata \bar "||"

  \break
}

solo = \context Voice = "solo" \relative do' {
  \mark "SOLO" 
  fad8 \bar "||"
  \time 4/4

  \stemNeutral
  \slurNeutral
  \tieNeutral
  \dynamicNeutral
  
  fad2 ~ fad8 la sol mi | re2 ~ re8 r re ~ re | si'2\( si8 si\) sol si |
  re2 la8 r la8. la16 | la2. dod8 re | mi1 |
  sol,4\( la8\) dod fad4\( fad8\) mi | re2 ~ re8 r fad,8. fad16 | si4 si8 si si4. \breathe si8 |
  re8. re16 re8. re16 fad2 | fad4 \breathe si,8 dod re4 dod8. si16 | mi2( la,)
  \bar "||"
}
alto = \context Voice = "alto" \relative do' {
  \globals
  \stemDown
  \slurDown
  \tieDown
  \dynamicDown
  \clef treble
    
  fad4 re8. re16 | fad4. r8 | sol4 sol8. sol16 |
  mi4. r8 | re4 mi | fad la8( sol) | fad4 si,8. mi16 | re4 dod8 r |
  fad4 re8. re16 | fad4. r8 | sol4 dod,8. re16 | mi4. r8 | re8. re16 mi8. mi16 |
  re4 fad8. la16 |sol2 | la4. r8 | fad4 sol8. sol16 | fad4( mi8) r | fad4 sol8. sol16 |
  fad4( mi8) r | fad4 fad8. fad16 | sol4.. sol16 | la4.. la16 | la4.
}


tenor = \context Voice = "tenor" \relative do' {
  \globals
  \stemUp
  \slurUp
  \dynamicUp
  \tieUp
  \clef bass

  la4 re8. si16 | la4. r8 | la4 mi'8. re16 |
  dod4. r8 | re4 la | fad sol8( si) | re4 re8. si16 | la4 la8 r |
  la4 re8. si16 | la4. r8 | la4 la8. la16 | la4. r8 | la8. la16 la8. la16 |
  fad4 si8. si16 | re2 | dod4. r8 | re4 mi8. mi16 | re4( dod8) r | re4 mi8. mi16 |
  re4( dod8) r | re4 re8. re16 | re4.. re16 | sol4.. fad16 | fad4. 
}


basse = \context Voice = "basse" \relative do {
  \globals
  \stemDown
  \slurDown
  \dynamicDown
  \clef bass

  re4 re8. re16 | re4. r8 | la4 la8. la16 |
  la'4. r8 | re,4 dod | si sol8( sol) | la4 si8. sol16 | la4 la8 r |
  re4 re8. re16 | re4. r8 | la4 la8. la16 | la4. r8 | re8. re16 dod8. dod16 |
  si4 si8. si16 | mi2 | la,4. r8 | re4 la'8. la16 | re,4( la8) r | re4 la'8. la16 |
  re,4( la8) r | re4 re8. re16 | sol4.. sol16 | la4.. re,16 | re4.
}






texteUn = \lyricmode {
  
  Clo -- ches, son -- nez, voi -- ci No -- ël!
  Qu'à vos voix les __ â -- mes s'é -- veil -- lent!

  Clo -- ches, son -- nez! Vers l'É -- ter -- nel
  Ap -- pe -- lez les coeurs qui som -- meil -- lent.

  Clo -- ches, son -- nez, __ c'est la No -- ël! __
  Clo -- ches, son -- nez No -- ël! No -- ël!

}
texteSolo = \lyricmode {
  \set stanza = #"1."
  Les temps sont ar -- ri -- vés __
  O, __ ter -- re rem -- plie d'a -- lar -- mes.
  Jé -- ho -- vah veut un fils
  A -- vec un corps __ \skip 8  mor -- tel. __
  Du vieux monde un en -- fant
  Vient es -- su -- yer les lar -- mes
  Et lui ren -- dre le ciel. __
}
texteDeux = \lyricmode {
  \set stanza = #"2."
  Les tem -- ples des faux dieux __
  Bien -- tôt __ \skip 1 ré -- duits en pou -- dre,
  Lais -- se -- ront l'u -- ni -- vers
  Au __ \skip 1 vrai Dieu tri -- om -- plant. __
  Pour bri -- ser leurs au -- tels,
  Il prend non point la fou -- dre,
  Mais la main d'un en -- fant. __
}
texteTrois = \lyricmode {
  \set stanza = #"3."

  Du vice __ et de l'er -- reur, __
  Ja -- dis __ \skip 1 pauvre et cap -- ti -- ve,
  L'âme hu -- mai -- ne res -- pire
  Et se sent libre __ \skip 1 en -- fin. __
  Sur le monde a pas -- sé,
  De l'hum -- ble ter -- re jui -- ve,
  Comme un souf -- fle di -- vin. __
}
texteQuatre = \lyricmode {
  \set stanza = #"4."

  La for -- ce tri -- om -- phante __
  É -- cra -- sait __ \skip 1 l'in -- jus -- ti -- ce,
  L'in -- no -- cence op -- pri -- mée
  É -- tait sans dé -- \skip 1 fen -- seur. __ 
  Mais voi -- ci la pi -- tié,
  L'hon -- neur, le sa -- cri -- fi -- ce,
  La ver -- tu, le bon -- heur. __
}


#(set-global-staff-size 18)
#(set-default-paper-size "letter")

collelyrics = {
  \override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-1.5 . 1.5)
  \set Lyrics.minimumVerticalExtent = #'(-1.5 . 1.5)
}
collestaff = \set Staff.minimumVerticalExtent = #'(-9 . 5)

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
    %\override Lyrics.VocalName #'break-align-symbol = #'key-signature
}
tenorbasse = {
    \set Staff.instrument = \markup { \center-column { "Tenor" { "Basse" } } }
}
sopranoalto = {
    \set Staff.instrument = \markup { \center-column { "Soprano" { "Alto" } } }
}



\score {
  \new ChoirStaff  <<
    \barnum
    \new Staff {
      \sopranoalto
      << \sop \\ \alto >> \solo
    }
    \new Lyrics {
      \lyricsto "sop" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteUn
      }
    }
    \new Lyrics {
      \lyricsto "solo" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteSolo
      }
    }
    \new Lyrics {
      \lyricsto "solo" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteDeux
      }
    }
    \new Lyrics {
      \lyricsto "solo" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteTrois
      }
    }
    \new Lyrics {
      \lyricsto "solo" {
        %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \texteQuatre
      }
    }
    \new Staff {
      \tenorbasse
      << \tenor \\ \basse >>
    }
  >>
  

    
  \layout {
    papersize = "letter"
    indent = #0
    interscoreline = 0\mm
    %ragged-right = ##t
    \context {
      \Lyrics
      \override VerticalAxisGroup #'maximum-Y-extent = #'(-1 . 1) 
      \override VerticalAxisGroup #'minimumVerticalExtent = #'(-1.5 . 1.5)
    }
    \context {
      %%\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-20 . 20)
    }
  }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\paper {
  between-system-space = 5\mm
  %linewidth = 174
}