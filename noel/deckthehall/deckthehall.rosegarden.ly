\version "2.2.0"
\header {
    copyright = "Unknown"
    subtitle = "blank"
    title = "Untitled"
    tagline = "Exported by Rosegarden 4-0.9.9"
    footer = "Rosegarden 4-0.9.9"
}
#(set-global-staff-size 20)
\score {
    \notes <<
        % force offset of colliding notes in chords:
        \override Score.NoteColumn #'force-hshift = #1.0
        \time 4/4

        \context Staff = "track 1" << 
            \set Staff.instrument = "track"
            \context Voice = "voice 0" {
                \override Voice.TextScript #'padding = #2.0

                \clef treble
                \key f \major
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
                g' 8 a' bes' g' a' 4. g' 8 
                f' 4 e' f' 2 
%% 5
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
                g' 8 a' bes' g' a' 4. g' 8 
                f' 4 e' f' 2 
                g' 4. a' 8 bes' 4 g' 
%% 10
                a' 4. bes' 8 c'' 4 g' 
                a' 8 b' c'' 4 d'' 8 e'' f'' 4 
                e'' 4 d'' c'' 2 
                c'' 4. bes' 8 a' 4 g' 
                f' 4 g' a' f' 
%% 15
                d'' 8 d'' d'' d'' c'' 4. bes' 8 
                a' 4 g' f' 2 

                 \bar "|."
            } % Voice

        >> % Staff

        \context Staff = "track 2" << 
            \set Staff.instrument = "track"
            \context Voice = "voice 1" {
                \override Voice.TextScript #'padding = #2.0

                \clef treble
                \key f \major
                f' 4. f' 8 f' 4 e' 
                d' 4 e' f' c' 
                e' 8 f' g' e' f' 4. d' 8 
                c' 4 c' c' 2 
%% 5
                f' 4. f' 8 f' 4 e' 
                d' 4 e' f' c' 
                e' 8 f' g' e' f' 4. d' 8 
                c' 4 c' c' 2 
                e' 4. f' 8 g' 4 e' 
%% 10
                f' 4. f' 8 f' 4 g' 
                f' 4 f' a' a' 
                g' 4 f' f' 2 
                f' 4. f' 8 f' 4 e' 
                d' 4 e' f' c' 
%% 15
                f' 8 f' f' f' f' 4. g' 8 
                f' 4 e' f' 2 

                 \bar "|."
            } % Voice

        >> % Staff

        \context Staff = "track 3" << 
            \set Staff.instrument = "track"
            \context Voice = "voice 2" {
                \override Voice.TextScript #'padding = #2.0

                \clef treble
                \key f \major
                a' 4. d'' 8 c'' 4 bes' 
                a' 4 c'' c'' a' 
                c'' 8 c'' c'' c'' c'' 4. bes' 8 
                a' 4 g' a' 2 
%% 5
                a' 4. d'' 8 c'' 4 bes' 
                a' 4 c'' c'' a' 
                c'' 8 c'' c'' c'' c'' 4. bes' 8 
                a' 4 g' a' 2 
                c'' 4. c'' 8 c'' 4 c'' 
%% 10
                c'' 4. g' 8 a' 4 c'' 
                c'' 4 c'' c'' c'' 
                c'' 4 b' c'' 2 
                a' 4. d'' 8 c'' 4 bes' 
                a' 4 c'' c'' a' 
%% 15
                bes' 8 bes' bes' bes' c'' 4. d'' 8 
                c'' 4 bes' a' 2 

                 \bar "|."
            } % Voice

        >> % Staff

        \context Staff = "track 4" << 
            \set Staff.instrument = "track"
            \context Voice = "voice 3" {
                \override Voice.TextScript #'padding = #2.0

                \clef bass
                \key f \major
                f 4. f 8 f 4 c 
                d 4 c f f 
                c 8 c c c f 4. bes, 8 
                c 4 c f 2 
%% 5
                f 4. f 8 f 4 c 
                d 4 c f f 
                c 8 c c c f 4. bes, 8 
                c 4 c f 2 
                c 4. c 8 c 4 c 
%% 10
                f 4. f 8 f 4 e 
                f 8 g a 4 f 8 e d 4 
                g 4 g c 2 
                f 4. f 8 f 4 c 
                d 4 c f f 
%% 15
                bes 8 bes bes bes a 4. bes 8 
                c' 4 c f 2 

                 \bar "|."
            } % Voice

        >> % Staff (final)
    >> % notes
    \paper { papersize = "letter" }
} % score
