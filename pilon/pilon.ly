%
% Marteau-Pilon
%

\header {
    title = "Pilon"
    subtitle = "pour coq semi-dramatique lyrique (pcsdl)"
    composer = "Alexandre Bourget"
}

mainDroite = \notes \relative c''' {
    \clef treble
    \key c \major

    
                    % début
    r4 bes r e,, r
    #(set-octavation 1)
    b''' r r d
    #(set-octavation 0)
    b,,
                    % accords mg début.
    r a b c, f
    \bar "" \break
    \clef bass <e, g bes> \clef treble ees''' r
                    % ensemble deux derniers avant les accords qui montent
    f, aes,
    
                    % accords
    < bes, c des ees aes >
    < bes des ees ges bes >
    < bes ees ges aes c >
    < bes ees ges bes des >
    < c ges' aes bes des >
    < des ees' >     \bar "" \break   < des ees' >
    < ees bes' des f > < ees f' >
    < f bes des ges > < f ges' >
    < ges des' ees aes > < ges aes' >
            % ici avec la tête
            % on alterne avec la tête et un accord.
    < aes bes' >    r
    < aes bes' >    r
    < bes c' >      r
    < bes c' >      r
            % grande final
    des' <c,, des!>
    %< e, aes c >
            % puis on quitte.
}

mainGauche = \notes \relative c {
    \clef bass
    \key c \major    

                    % début
    aes4 r d r c' r gis,, a' c' f,,
                    % accords mg début
    <g e' g> r <f e' f> <e e' f>
    <fis gis ais fis'> e r cis
                    % ensemble deux derniers avant les accords qui montent
    ees' c'
    
                    % accords
    <aes,, aes'> <aes aes'>
    <aes aes'> <aes aes'>
    <aes aes'> <aes aes'>
    <des, des'> <des des'>
    <des des'> <des des'>
    <des des'> <des des'>
    <ges ges'> r
                    % clusters, avec la tête là.
    \apply #notes-to-clusters { <c c'> }
    %cluster
    r
    \apply #notes-to-clusters { <c c'> }
    %cluster
    r
    \apply #notes-to-clusters { <c c'> }
    %cluster
    r
    \apply #notes-to-clusters { <c c'> }
    %cluster
    r2
                    % on quitte
}

\score {
    \context PianoStaff <<
        \forgetAccidentals
        \property Score.timing = ##f
        \new Staff \mainDroite
        \new Staff \mainGauche
    >>
    \paper {    
%        \translator {
%            \ScoreContext SpacingSpanner \override #'shortest-duration-space = #2.0
%        }

        papersize = "letter"
    }
}
