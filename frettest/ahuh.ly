\header
{
  texidoc = "Frets are supported as markup commands."
}

\version "2.3.8"

\score {
    <<
       \new ChordNames \chords {d2. d d s fis fis fis s c c c}
       
     \context Voice=mel {
% simple D chord

    d'2. ^\markup \fret-diagram-verbose #'((mute 6) (mute 5) (open 4) (place-fret 3 2) (place-fret 2 3) (place-fret 1 2))
    d' ^\markup \fret-diagram #"6-x;5-x;4-o;3-2;2-3;1-2;"
    d' ^\markup \fret-diagram-terse #"x;x;o;2;3;2;"
    r
% fis major chord, 3/4 size, fingering labeled below string
    
    fis' ^\markup \override #'(size . 0.75) {\override #'(finger-code . below-string){\fret-diagram-verbose #'((place-fret 6 2 1) (barre 6 1 2) (place-fret 5 4 3) (place-fret 4 4 4) (place-fret 3 3 2) (place-fret 2 2 1) (place-fret 1 2 1))}}
    fis' ^\markup \override #'(finger-code . below-string) {\fret-diagram #"s:0.75;c:6-1-2;6-2-1;5-4-3;4-4-4;3-3-2;2-2-1;1-2-1;"}
    fis' ^\markup \override #'(size . 0.75) {\override #'(finger-code . below-string){\fret-diagram-terse #"2-1-(;4-3;4-4;3-2;2-1;2-1-);"}}
    r

% c major barre chord, fingering labeled on frets
   c' ^\markup \override #'(dot-color . white) {
                \override #'(finger-code . in-dot) 
                \fret-diagram-verbose #'((mute 6) (place-fret 5 3 1) (place-fret 4 5 2) (place-fret 3 5 3) (place-fret 2 5 4) (place-fret 1 3 1) (barre 5 1 3)) }
   c' ^\markup \override #'(barre-type . straight) \fret-diagram #"f:1;c:5-1-3;6-x;5-3-1;4-5-2;3-5-3;2-5-4;1-3-1;"
   c' ^\markup  \override #'(dot-radius . 0.35) {
                \override #'(finger-code . in-dot) {
                \override #'(dot-color . white) {
                \fret-diagram-terse #"x;3-1-(;5-2;5-3;5-4;3-1-);"}}}
   r 
   
% c major scale using open strings
  c' ^\markup \fret-diagram-verbose #'((mute 6) (place-fret 5 3) (open 4) (place-fret 4 2) (place-fret 4 3) (open 3) (place-fret 3 2)  (open 2) (place-fret 2 1) (mute 1))
  c' ^\markup \fret-diagram #'"6-x;5-3;4-o;4-2;4-3;3-o;3-2;2-o;2-1;1-x;"
  c' ^\markup \fret-diagram-terse #'"x;3;2 3;o 2;o 1;x;"

% c major scale using no open strings
  c' ^\markup \fret-diagram-verbose #'((mute 6) (place-fret 5 3) (place-fret 5 5) (place-fret 4 2) (place-fret 4 3) (place-fret 4 5) (place-fret 3 2)  (place-fret 3 4) (place-fret 3 5) (mute 2) (mute 1))
  c' ^\markup \fret-diagram #'"6-x;5-3;5-5;4-2;4-3;4-5;3-2;3-4;3-5;2-x;1-x;"
  c' ^\markup \fret-diagram-terse #'"x;3 5;2 3 5;2 4 5;x;x;"
  
% g major scale, no open strings, two octaves on six strings, white dots
  g' ^\markup \override #'(dot-color . white) {\fret-diagram-terse #'"3 5;2 3 5;2 4 5;2 4 5;3 5;2 3;" }
  }
    >>
  \paper{ raggedright = ##t }
}
