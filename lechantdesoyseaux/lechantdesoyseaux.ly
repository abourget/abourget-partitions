%
% par Alexandre Bourget (11 septembre 2004)
% wacky@bourget.cc
%
%
#(ly:set-point-and-click 'line)
\version "2.3.12"


\header {
	title = "Le chant des oyseaux"
	composer = "Clément Janequin"
	date = "~ 1529"
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sm = {
   \melisma
   \autoBeamOn
}
em = \melismaEnd \autoBeamOff


StaffA = \context Voice = "SA" \relative c' {
	\clef violin
	\key f \major
	\time 4/4 
        \autoBeamOff

	                   
	R1 | R1 |   % 3
	r2 d'4 d8 d | d4 d es! d8 c |   % 5
	bes4 c d4. d8 | c4 bes a2 |   % 7
	g bes4 bes8 bes | bes4 r2. |   % 9
	r2 d4 d8 d | d4 d es! d8 c |   % 11
	bes4 c d4. d8 | c4 bes a2 |   % 13
	g bes | a4 g4. f16 e f4 |   % 15
	g1\fermata | R1 |   % 17
	R1 | R1 |   % 19
	R1 | bes4. bes8 a4 d |   % 21
	d c d2 | R1 |   % 23
	bes4. bes8 a4 d | d c d2 |   % 25
	r4 a c4. c8 | bes4 a g a ~ |   % 27
	a8 g g2 f4 | g1 |   % 29
	R1 | R1 |   % 31
	r4 a c4. bes8 | a g a4 bes8 c bes a |   % 33
	g f16 f g8 bes a4 r8 d | c4. bes8 a4 r8 d |   % 35
	c4. bes8 a4 r8 d | c4. bes8 a g a4 |   % 37
	bes8 c bes a g f16 f g8 bes | a4 r8 a a a a a |   % 39
	bes4 a8 g f2 | r d'4 d8 d |   % 41
	d4 d es! d8 c | bes4 c d4. d8 |   % 43
	c4 bes a2 | g bes4 bes8 bes |   % 45
	bes4 r2. | r2 d4 d8 d |   % 47
	d4 d es! d8 c | bes4 c d4. d8 |   % 49
	c4 bes a2 | g bes |   % 51
	a4 g4. f16 e f4 | g1\fermata |   % 53
	R1 | R1 |   % 55
	R1 | R1 |   % 57
	bes4. bes8 a4 d | d c d2 |   % 59
	R1 | bes4. bes8 a4 d |   % 61
	d c d2 | r4 a c4. c8 |   % 63
	bes4 a g a | a8 g g2 f4 |   % 65
	g2 r4 e' | d4. c8 bes c d e |   % 67
	f2 d4 r | d r d r |   % 69
	d r d c8 d | e c d4 d c8 d |   % 71
	e c d2 c4 ~ | c8 c16 c a8 c16 c a2 |   % 73
	R1 | r2 d8 d d d |   % 75
	d4 r d8 d d d | d4 f4. e8 d e |   % 77
	f4 r2 d4 ~ | d8 c bes c d4 f ~ |   % 79
	f8 f d e f4 d8 e | f f d es! c bes d e! |   % 81
	f4 f c8 c d4 | d8 d d bes c d d d |   % 83
	d d d d d d16 d d8 d | d d16 d d4 r2 |   % 85
	r d4 d8 d | d4 d es! d8 c |   % 87
	bes4 c d4. d8 | c4 bes a2 |   % 89
	g bes4 bes8 bes | bes4 r2. |   % 91
	r2 d4 d8 d | d4 d es! d8 c |   % 93
	bes4 c d4. d8 | c4 bes a2 |   % 95
	g bes | a4 g4. f16 e f4 |   % 97
	g1\fermata | R1 |   % 99
	R1 | R1 |   % 101
	R1 | bes4. bes8 a4 d |   % 103
	d c d2 | R1 |   % 105
	bes4. bes8 a4 d | d c d2 |   % 107
	r4 a c4. c8 | bes4 a g a ~ |   % 109
	a8 g g2 f4 | g1 |   % 111
	f'8 f f f f f f f | e1 |   % 113
	e8 e e e e e e e | e e e e e e e e |   % 115
	c2 r | c1 |   % 117
	r8 c c c c c c c | c4 c2 r4 |   % 119
	c1 | d2 d |   % 121
	d d | d d |   % 123
	f8 f f f f f f f | f f f f f f f f |   % 125
	f f e f e f e f | e e e e e e e4 |   % 127
	R1 | R1 |   % 129
	d8 d d d d d d d | d d d d d d d d |   % 131
	d d d4 d2 | e4 e e e |   % 133
	e8 e e e e e e e | e4 c4. c8 c c |   % 135
	c4 c4. c8 c c | c4 c4. c8 c c |   % 137
	c4 c4. c8 c c | c4 c4. c8 c c |   % 139
	c4 c4. c8 c c | c4 c2. |   % 141
	R1 | r2 d4 d8 d |   % 143
	d4 d es! d8 c | bes4 c d4. d8 |   % 145
	c4 bes a2 | g bes4 bes8 bes |   % 147
	bes4 r2. | r2 d4 d8 d |   % 149
	d4 d es! d8 c | bes4 c d4. d8 |   % 151
	c4 bes a2 | g bes |   % 153
	a4 g4. f16 e f4 | g1\fermata |   % 155
	R1 | R1 |   % 157
	R1 | R1 |   % 159
	bes4. bes8 a4 d | d c d2 |   % 161
	R1 | bes4. bes8 a4 d |   % 163
	d c d2 | r4 a c4. c8 |   % 165
	bes4 a g a | a8 g g2 f4 |   % 167
	g2 r4 d' | bes2 r4 d |   % 169
	bes2 r4 d | bes2 bes4 g |   % 171
	r2. d'4 | bes2 bes4 g |   % 173
	r2. d'4 | bes2 bes4 g |   % 175
	r2 bes4 f | bes g r bes |   % 177
	f2 bes4 g | r bes f2 |   % 179
	bes4 g2 r8 g | f4 bes8 bes g4 r8 g |   % 181
	f4 bes8 bes g4 r8 g | f4 bes8 bes g4 r |   % 183
	d' d8 d d d d d | d d d d c bes d4 ~ |   % 185
	d8 c bes a bes2 | a a4 a8 a |   % 187
	f f f f f2 | R1 |   % 189
	r2 r8 d' d d | d d d d d d d d |   % 191
	c bes d4. c8 bes a | bes2 a |   % 193
	a4 g8 f e4. d8 | e1 |   % 195
	R1 | r2 d'4 d8 d |   % 197
	d4 d es! d8 c | bes4 c d4. d8 |   % 199
	c4 bes a2 | g bes4 bes8 bes |   % 201
	bes4 r r2 | r d4 d8 d |   % 203
	d4 d es! d8 c | bes4 c d4. d8 |   % 205
	c4 bes a2 | g bes |   % 207
	a4 g4. f16 e f4 | g1\fermata 
	\bar "|."
}
StaffB = \context Voice = "SB" \relative c' {
	\clef violin
	\key f \major
	\time 4/4 
        \autoBeamOff

	                   
	a'4 a8 a a4 a | bes a8[ g] f4.[ g16 f |   % 3
	g4] a bes a8[ g] | f2 r4 f |   % 5
	g a bes4. bes8 | a4 \sm g2 f4 \em |   % 7
	g1 | r2 a4 a8 a |   % 9
	g4 a bes a8[ g] | f2 r4 f |   % 11
	g a bes4. bes8 | a4 \sm g2 f4 |   % 13
	g2 f | e d \em |   % 15
% rendu ici pour les melismes..
	d1\fermata  | R1 |   % 17
	R1 | f4. f8 e4 a |   % 19
	a g a e | g4. g8 f4 f |   % 21
	e2 d | f4. f8 e4 a |   % 23
	a g a2 | r4 e g4. g8 |   % 25
	f4 f e2 | d8 \sm e f d e4 f \em |   % 27
	d2 r4 d | d8 d d d e2 |   % 29
	R1 | r2 r4 c |   % 31
	f4. f8 e d e4 | f8 g f e d c16 c d8 f |   % 33
	e d d d16 e f8 f e d | a'4 r d,16 d d d f8 g |   % 35
	a4 r d,16 d d d f8 g | a4 r d, d |   % 37
	r r8 f d d16 d d8 e | e1 |   % 39
	r2 a4 a8 a | g4 a bes a8 g |   % 41
	f2 r4 f | g a bes4. bes8 |   % 43
	a4 g2 f4 | g1 |   % 45
	r2 a4 a8 a | g4 a bes a8 g |   % 47
	f2 r4 f | g a bes4. bes8 |   % 49
	a4 g2 f4 | g2 f |   % 51
	e d | d1\fermata |   % 53
	R1 | R1 |   % 55
	f4. f8 e4 a | a g a e |   % 57
	g4. g8 f4 f | e2 d |   % 59
	f4. f8 e4 a | a g a2 |   % 61
	r4 e g4. g8 | f4 f e2 |   % 63
	d8 e f d e4 f | d2 r4 a' |   % 65
	bes4. bes8 a4 g | f r8 f g a bes g |   % 67
	a4. f8 g a bes g | a4. f8 g a bes g |   % 69
	a1 | r4 f f8 g a bes |   % 71
	a4 f f8 g a bes | a4 r8 c, d c f4 |   % 73
	f8 f16 f f8 f16 f g4. g16 g | g8 g g g bes4. bes8 |   % 75
	bes bes bes bes bes4 bes8 bes | bes bes bes bes a a bes4 |   % 77
	r bes4. a8 g a | bes4 bes g f16 g a bes |   % 79
	a4 bes8 bes bes bes16 bes bes8 bes | bes bes bes bes a bes g bes |   % 81
	a4 r8 a a a bes bes | a f bes bes16 bes a8 f bes bes |   % 83
	a a a4 a8 a a a | bes4 a8 g f4. g16 f |   % 85
	g4 a bes a8 g | f2 r4 f |   % 87
	g a bes4. bes8 | a4 g2 f4 |   % 89
	g1 | r2 a4 a8 a |   % 91
	g4 a bes a8 g | f2 r4 f |   % 93
	g a bes4. bes8 | a4 g2 f4 |   % 95
	g2 f | e d |   % 97
	d1\fermata | R1 |   % 99
	R1 | f4. f8 e4 a |   % 101
	a g a e | g4. g8 f4 f |   % 103
	e2 d | f4. f8 e4 a |   % 105
	a g a2 | r4 e g4. g8 |   % 107
	f4 f e2 | d8 e f d e4 f |   % 109
	d1 | d8 d d d d d d d |   % 111
	d d d d d4 r8 a' | g a g a g4 r8 a |   % 113
	g a g a g4 r8 a16 a | g8 a16 a g8 a16 a g8 g16 g g8 g |   % 115
	a2 a ~ | a a ~ |   % 117
	a a ~ | a a ~ |   % 119
	a r8 a16 a f8 a16 a | f1 |   % 121
	bes8 bes bes bes bes bes bes bes | bes bes bes bes bes bes bes bes |   % 123
	a a a a a4 r | r8 bes a bes a bes a bes |   % 125
	a4 a4. a16 a g8 a16 a | g2 r |   % 127
	f1 | f |   % 129
	f8 f f f f f f f | f f f f f f f f |   % 131
	f4 f2 g4 ~ | g8 g g g g a g a |   % 133
	g g g g g a g a | g g16 g a8 a a4 a ~ |   % 135
	a8 a a a a4 a ~ | a8 a a a a4 a ~ |   % 137
	a8 a a a a4 a ~ | a8 a a a a4 a ~ |   % 139
	a8 a a a a4 a ~ | a8 a a a a4 a |   % 141
	bes a8 g f4. g16 f | g4 a bes a8 g |   % 143
	f2 r4 f | g a bes4. bes8 |   % 145
	a4 g2 f4 | g1 |   % 147
	r2 a4 a8 a | g4 a bes a8 g |   % 149
	f2 r4 f | g a bes4. bes8 |   % 151
	a4 g2 f4 | g2 f |   % 153
	e d | d1\fermata |   % 155
	R1 | R1 |   % 157
	f4. f8 e4 a | a g a e |   % 159
	g4. g8 f4 f | e2 d |   % 161
	f4. f8 e4 a | a g a2 |   % 163
	r4 e g4. g8 | f4 f e2 |   % 165
	d8 e f d e4 f | d2 r4 d |   % 167
	bes2 bes'4 f | r2 bes4 f |   % 169
	r2 bes4 f | r g f4. es!8 |   % 171
	d2 bes'4 f | r g f4. es!8 |   % 173
	d2 bes'4 f | r g f4. es!8 |   % 175
	d d bes d bes2 | r4 g' f4. d8 |   % 177
	d d bes4 r g' | f4. d8 d d bes4 |   % 179
	r es! bes r | d8 d bes d bes4 r |   % 181
	d8 d bes d bes4 r | d8 d bes d bes4 r |   % 183
	f'8 f d f f4 r | bes bes8 bes a g f e |   % 185
	d4 g g g | f4. e8 f4 f |   % 187
	r d d8 d d d | d d d4 r2 |   % 189
	R1 | a'4 a8 a a a a a |   % 191
	a a a a g f a4 ~ | a8 g f e f2 |   % 193
	e r | a4 a8 a a4 a |   % 195
	bes a8 g f4. g16 f | g8 f g a bes4 a8 g |   % 197
	f2 r4 f | g a bes4. bes8 |   % 199
	a4 g2 f4 | g1 |   % 201
	r2 a4 a8 a | g4 a bes a8 g |   % 203
	f2 r4 f | g a bes4. bes8 |   % 205
	a4 g2 f4 | g2 f |   % 207
	e d | d1\fermata 
	\bar "|."
}
StaffC = \context Voice = "SC" \relative c {
	\clef "G_8"
	\key f \major
	\time 4/4 
        \autoBeamOff

	                   
	R1 | d'4 d8 d d4 d |   % 3
	es! d8 c bes2 | r4 bes c d |   % 5
	es! c bes8 c d e! | f4 g d4. f8 |   % 7
	es!2 d | d4 d8 d d4 d |   % 9
	es! d8 c bes2 | r4 bes c d |   % 11
	es! c bes f' ~ | f8 e d c d2 |   % 13
	bes4 c d4. d8 | c4 bes a2 |   % 15
	g1\fermata | r2 bes4. bes8 |   % 17
	a4 d d c | d a c4. c8 |   % 19
	bes4 bes a2 | g r |   % 21
	r bes4. bes8 | a4 d d c |   % 23
	d d f f | e r bes4. bes8 |   % 25
	a4 d d c | d a c4. c8 |   % 27
	bes4 bes a2 | g4 g c4. bes8 |   % 29
	a g a4 bes8 c bes a | g f16 f g8 bes a2 |   % 31
	r2. a4 | d4. c8 bes a g f16 f |   % 33
	g8 a bes g c r4. | e16 d e f e8 d f4 r |   % 35
	e16 d e f e8 d f4 r | e16 d e f e8 d f4. e8 |   % 37
	d c d d16 d bes8 a bes g | d'1 |   % 39
	d4 d8 d d4 d | es! d8 c bes2 |   % 41
	r4 bes c d | es! c bes8 c d e! |   % 43
	f4 g d4. f8 | es!2 d |   % 45
	d4 d8 d d4 d | es! d8 c bes2 |   % 47
	r4 bes c d | es! c bes f' ~ |   % 49
	f8 e d c d2 | bes4 c d4. d8 |   % 51
	c4 bes a2 | g1\fermata |   % 53
	r2 bes4. bes8 | a4 d d c |   % 55
	d a c4. c8 | bes4 bes a2 |   % 57
	g r | r bes4. bes8 |   % 59
	a4 d d c | d d f f |   % 61
	e r bes4. bes8 | a4 d d c |   % 63
	d a c4. c8 | bes4 bes a2 |   % 65
	g4 d' c4. bes8 | a2 r4 g |   % 67
	d'4. d8 bes c d e | f4 d bes8 c d e |   % 69
	f1 | e4 d8 e f d e4 |   % 71
	e d8 e f d e e | f2. r8 c |   % 73
	d d16 d bes8 d16 d bes2 ~ | bes r4 f'8 f |   % 75
	f f f4 r f ~ | f8 e d e f c g'4 |   % 77
	d1 | r4 g,8 a bes g a4 |   % 79
	d8 e f4 d8 e f4 | r8 f4 f8 f d d d |   % 81
	d d d e f4 f | f d8 es! c bes d e! |   % 83
	f4 f f2 | d4 d8 d d4 d |   % 85
	es! d8 c bes2 | r4 bes c d |   % 87
	es! c bes8 c d e! | f4 g d4. f8 |   % 89
	es!2 d | d4 d8 d d4 d |   % 91
	es! d8 c bes2 | r4 bes c d |   % 93
	es! c bes f' ~ | f8 e d c d2 |   % 95
	bes4 c d4. d8 | c4 bes a2 |   % 97
	g1\fermata | r2 bes4. bes8 |   % 99
	a4 d d c | d a c4. c8 |   % 101
	bes4 bes a8 g a4 | g2 r |   % 103
	r bes4. bes8 | a4 d d c |   % 105
	d d f f | e r bes4. bes8 |   % 107
	a4 d d c | d a c4. c8 |   % 109
	bes4 bes a2 | g4 bes8 bes bes bes bes bes |   % 111
	a4. a16 a a8 a16 a a4 | c8 c c c c c c c |   % 113
	c4 c2 c4 ~ | c c2 c4 |   % 115
	r8 f f f f f f f | f f f f f4 r8 f16 f |   % 117
	e8 f16 f e8 f16 f e4. f16 f | e8 f16 f e8 f16 f e4 f8 e |   % 119
	f e f e f c4 a8 | bes4 r8 bes bes2 |   % 121
	r8 g' g g g g g g | g4 g2 r4 |   % 123
	d2 d | d d |   % 125
	r r4 r8 a | c4 c c c8 c16 c |   % 127
	a4 r8 bes a bes a bes | a4 r8 a a a a a |   % 129
	bes4 r8 bes bes4 r | r bes bes bes |   % 131
	bes bes bes8 bes16 bes g8 bes16 bes | g4 c4. c8 c c |   % 133
	c c c c c c c c | c c16 c a4 f'4. f8 |   % 135
	f f f4 f4. f8 | f f f4 f4. f8 |   % 137
	f f f4 f4. f8 | f f f4 f4. f8 |   % 139
	f f f4 f4. f8 | f f f4 f4. c8 |   % 141
	d4 d8 d d4 d | es! d8 c bes2 |   % 143
	r4 bes c d | es! c bes8 c d e! |   % 145
	f4 g d4. f8 | es!2 d |   % 147
	d4 d8 d d4 d | es! d8 c bes2 |   % 149
	r4 bes c d | es! c bes f' ~ |   % 151
	f8 e d c d2 | bes4 c d4. d8 |   % 153
	c4 bes a2 | g1\fermata |   % 155
	r2 bes4. bes8 | a4 d d c |   % 157
	d a c4. c8 | bes4 bes a2 |   % 159
	g r | r bes4. bes8 |   % 161
	a4 d d c | d d f f |   % 163
	e r bes4. bes8 | a4 d d c |   % 165
	d a c4. c8 | bes4 bes a2 |   % 167
	g4 d' bes2 | r4 es! bes2 |   % 169
	r4 d bes2 | r4 es! bes2 |   % 171
	r4 d bes2 | r4 es! bes2 |   % 173
	r4 d bes2 | r4 es! bes2 ~ |   % 175
	bes r4 d | bes2 d4 bes ~ |   % 177
	bes d bes2 | d4 bes2 d4 |   % 179
	bes r r8 bes bes g | bes f g d r bes' bes g |   % 181
	bes f g d r bes' bes g | bes f g d r bes' bes g |   % 183
	bes f g d bes' bes g bes | g2 r |   % 185
	R1 | d'4 d8 d d d d d |   % 187
	d2 r | f4 f8 f f f f f |   % 189
	f f f f e d g4 ~ | g8 f f4 f f |   % 191
	e d d d8 d | d4 d d d |   % 193
	cis!1 ~ | cis |   % 195
	d4 d8 d d4 d | es! d8 c bes2 |   % 197
	r4 bes c d | es! c bes8 c d e! |   % 199
	f4 g d4. f8 | es!2 d |   % 201
	d4 d8 d d4 d | es! d8 c bes2 |   % 203
	r4 bes c d | es! c bes f' ~ |   % 205
	f8 e d c d2 | bes4 c d4. d8 |   % 207
	c4 bes a2 | g1\fermata ~ 
	\bar "|."
}
StaffD = \context Voice = "SD" \relative c {
	\clef bass
	\key f \major
	\time 4/4 
        \autoBeamOff

	                   
	R1 | R1 |   % 3
	R1 | R1 |   % 5
	R1 | R1 |   % 7
	g'4 g8 g g4 g | bes a8 g f2 |   % 9
	r4 f g4. a8 | bes2 r |   % 11
	r r4 bes, | f' g d d |   % 13
	es!4. es8 d4 bes | c2 d |   % 15
	g1\fermata | bes4. a8 g4 g |   % 17
	f e8 d e4 e | d2 r |   % 19
	r f4 c' ~ | c8 bes bes c d2 |   % 21
	a r | d,4. d8 a'4 a |   % 23
	bes bes f4. d8 | a'4 a g g |   % 25
	d2 a' | d, r4 f |   % 27
	g4. g8 d4 d | g2 c, |   % 29
	f4. e8 d c d f | es! d c bes f' f16 f f8 f |   % 31
	d2 r | R1 |   % 33
	r8 d g g f e16 e a8 bes | a4 r r8 d, a' bes |   % 35
	a4 r r8 d, a' bes | a4 r r d, |   % 37
	g8 a16 a g8 f g d g g | d1 ~ |   % 39
	d | R1 |   % 41
	R1 | R1 |   % 43
	R1 | g4 g8 g g4 g |   % 45
	bes a8 g f2 | r4 f g4. a8 |   % 47
	bes2 r | r r4 bes, |   % 49
	f' g d d | es!4. es8 d4 bes |   % 51
	c2 d | g1\fermata |   % 53
	bes4. a8 g4 g | f e8 d e4 e |   % 55
	d2 r | r f4 c' ~ |   % 57
	c8 bes bes c d2 | a r |   % 59
	d,4. d8 a'4 a | bes bes f4. d8 |   % 61
	a'4 a g g | d2 a' |   % 63
	d, r4 f | g4. g8 d4 d |   % 65
	g2 c, | d r |   % 67
	d8 d d d g4 g | d8 d d d g4. g16 g |   % 69
	d4. e8 f g a4 ~ | a8 a bes4. bes16 bes a4 ~ |   % 71
	a8 a bes4. bes8 a a16 a | f2 r8 f16 f d8 f16 f |   % 73
	d4. d16 d es!4 es8 es | es4 es8 es bes2 ~ |   % 75
	bes1 ~ | bes2 r |   % 77
	bes'4. a8 g a bes4 | g8 g g g g g d4 |   % 79
	r bes' bes8 bes bes bes | bes bes bes bes f g g g |   % 81
	d2 r4 bes'8 c | d d16 d bes8 g a bes g g16 g |   % 83
	d8 d16 d d8 d16 d d4. d8 | g4 f bes4. a8 |   % 85
	g4 f g2 | R1 |   % 87
	R1 | R1 |   % 89
	g4 g8 g g4 g | bes a8 g f2 |   % 91
	r4 f g4. a8 | bes2 r |   % 93
	r r4 bes, | f' g d d |   % 95
	es!4. es8 d4 bes | c2 d |   % 97
	g1\fermata | bes4. a8 g4 g |   % 99
	f e8 d e4 e | d2 r |   % 101
	r f4 c' ~ | c8 bes bes c d2 |   % 103
	a r | d,4. d8 a'4 a |   % 105
	bes bes f4. d8 | a'4 a g g |   % 107
	d2 a' | d, r4 f |   % 109
	g g d d | g1 |   % 111
	d | R1 |   % 113
	R1 | R1 |   % 115
	f1 | f8 f f f f f f f |   % 117
	a1 | r8 a a a a a a a |   % 119
	a a16 a f8 a16 a f2 | R1 |   % 121
	g1 | g |   % 123
	R1 | R1 |   % 125
	R1 | c,8 c c c c c c c |   % 127
	d d d d d d d d | d d d d d4 r |   % 129
	bes1 | bes |   % 131
	R1 | c8 c c c c c16 c c8 c16 c |   % 133
	c4 c c c | c f8 f f f f4 |   % 135
	f4. f8 f f f4 | f4. f8 f f f4 |   % 137
	f4. f8 f f f4 | f4. f8 f f f4 |   % 139
	f4. f8 f f f f | f f f f f f f a16 a |   % 141
	g8 g16 g f8 g16 g d4 r | R1 |   % 143
	R1 | R1 |   % 145
	R1 | g4 g8 g g4 g |   % 147
	bes a8 g f2 | r4 f g4. a8 |   % 149
	bes2 r | r r4 bes, |   % 151
	f' g d d | es!4. es8 d4 bes |   % 153
	c2 d | g1\fermata |   % 155
	bes4. a8 g4 g | f e8 d e4 e |   % 157
	d2 r | r f4 c' ~ |   % 159
	c8 bes bes c d2 | a r |   % 161
	d,4. d8 a'4 a | bes bes f4. d8 |   % 163
	a'4 a g g | d2 a' |   % 165
	d, r4 f | g g d d |   % 167
	g2 g4 r | R1 |   % 169
	R1 | g4 es! r es |   % 171
	bes2 r | g'4 es! r es |   % 173
	bes2 r | g'4 es! r es |   % 175
	bes2 r4 bes' | g8 g es! es bes2 |   % 177
	r4 bes' g8 g es! es | bes2 r4 bes' |   % 179
	g r es!8 es bes es | bes2 es!8 es bes es |   % 181
	bes2 es!8 es bes es | bes2 es!8 es bes es |   % 183
	bes1 | R1 |   % 185
	R1 | R1 |   % 187
	bes'4 bes8 bes bes bes bes bes | bes bes bes bes a g bes4 ~ |   % 189
	bes8 a g f g2 | d4. c8 d e f g |   % 191
	a4 d, g4. f8 | g2 d |   % 193
	a'4 a8 a a4 a | a a a4. a8 |   % 195
	g4 f bes4. a8 | g4 f g2 |   % 197
	R1 | R1 |   % 199
	R1 | g4 g8 g g4 g |   % 201
	bes a8 g f2 | r4 f g4. a8 |   % 203
	bes2 r | r r4 bes, |   % 205
	f' g d d | es!4. es8 d4 bes |   % 207
	c2 d | g1\fermata 
	\bar "|."
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PAROLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ParA = \lyrics {
     Ré -- veil -- lez- vous, coeurs en -- dor -- mis, Le dieu d'a --
     mours vous son -- ne, ré -- veil -- lez- vous,

     Ré -- veil -- lez vous, coeurs en -- dor -- mis, Le dieu d'a --
     mours vous son --  ne.
}

ParB = \lyrics {
     Ré -- veil -- lez- vous, coeurs en -- dor -- mis, __ coeurs en --
     dor -- mis, Le dieu d'a -- mours vous son -- ne,

     Ré -- veil -- lez vous, coeurs en -- dor -- mis, Le dieu d'a --
     mours vous son --  ne.
% page 2

  À ce pre -- mier jour de may Oy -- seaulx fe -- ront mer -- veil --
  les, Pour vous met -- tre hors d'e -- smay De -- stou -- pez voz o
  -- reil -- les.
  Et fa -- ri -- ra -- ri -- ron, 

%page 3
      
  Et fa -- ri -- ra -- ri -- ron, fa -- ri -- ra -- ri -- ron,
  fe -- re -- ly io -- ly, io -- ly, fe -- re -- ly, io -- ly, io --
  ly,
  fe -- re -- ly, io -- ly, io -- ly, fe -- re -- ly, io -- ly, io --
  ly, io -- ly, io -- ly, fe -- re -- ly, io -- ly.

  Vous se -- rez tous en ioy -- e __ mis, Car la say -- son est bon --
  ne,
  
%page 4

  Vous se -- rez tous en ioy -- e __ mis, Car la say -- son est bon -- ne.
      

}

ParC = \lyrics {

}

ParD = \lyrics {

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Macros qui aident
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
colle = \set Lyrics.minimumVerticalExtent = #'(-0 . 0)
colles = \set Staff.minimumVerticalExtent = #'(-0 . 0)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Global
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)
#(set-default-paper-size "letter")

\score {
       \new ChoirStaff <<

	    \override Score.BarNumber #'extra-offset = #'(0 . 0)

	    \new Staff {
		 \set Staff.instrument = "Soprano"
		 \StaffA
	    }
            \new Lyrics {
                 \colle
                 \lyricsto "SA" \ParA
            }
	    \new Staff {
		 \set Staff.instrument = "Contralto"
		 \StaffB
	    }
            \new Lyrics {
                 \colle
                 \lyricsto "SB" \ParB
            }
	    \new Staff {
		 \set Staff.instrument = "Ténor"
		 \StaffC
	    }
            \new Lyrics {
                 \colle
                 \lyricsto "SC" \ParC
            }
	    \new Staff {
		 \set Staff.instrument = "Basse"
		 \StaffD
	    }
            \new Lyrics {
                 \colle
                 \lyricsto "SD" \ParD
            }

       >>


       \paper {
	      
       }
	
       \midi {
	     \tempo 2=72
       }
}

