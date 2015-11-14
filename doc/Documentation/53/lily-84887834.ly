%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "vocal-ensemble-template-with-automatic-piano-reduction.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.16.0"

\header {
%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidoces = "

Esta plantilla añade una reducción de piano automática a la partitura
vocal SATB estándar que se mostró en la @qq{Plantilla de conjunto
vocal}. Esto presenta uno de los puntos fuertes de LilyPond: podemos
usar una definición de música más de una vez. Si se hace cualquier
cambio en las notas de la parte vocal (digamos @code{tenorMusic}),
entonces los cambios se aplicarán también a la reducción de piano.

"
  doctitlees = "Plantilla de conjunto vocal con reducción de piano automática"


%% Translation of GIT committish: d5647c5fd1c38d4124d2374725b923f4901f3661
  texidocja = "
このテンプレートは、@qq{合唱テンプレート} で示した標準の SATB ボーカル譜に自動@c
ピアノ譜を付け加えています。これは LilyPond の強みの 1 つを示しています - 音楽@c
定義を何回も使用することができます。ボーカルの音符 (例えば、@code{tenorMusic}
の音符) に変更が加えられた場合、その変更はピアノ譜にも適用されます。
"
  doctitleja = "自動ピアノ伴奏譜を持つ合唱譜"

%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidocit = "
Questo modello aggiunge una riduzione automatica per pianoforte alla tipica
partitura vocale SATB illustrata in @qq{Modello per complesso vocale}. Si
dimostra così uno dei punti di forza di LilyPond – è possibile usare una
definizione musicale più di una volta. Qualsiasi modifica venga fatta alle note
delle voci (ad esempio, @code{tenorMusic}) verrà applicata anche alla riduzione
per pianoforte.
"
  doctitleit = "Modello per gruppo vocale con automatica riduzione per pianoforte"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
In diesem Beispiel wird ein automatischer Klavierauszug zu der
Chorpartitur hinzugefügt. Das zeigt eine der Stärken von LilyPond
-- man kann eine Variable mehr als einmal benutzen. Wenn Sie
irgendeine Änderung an einer Chorstimme vornehmen, (etwa
tenorMusic), verändert sich auch der Klavierauszug entsprechend.
"


%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Ce canevas ajoute une réduction pour piano à une partition standard pour
chœur à quatre voix mixtes.  Ceci illustre l'un des avantages de
LilyPond : une expression musicale peut être réutilisée sans effort.
Toute modification apportée à l'une des voix, mettons @code{tenorMusique},
sera automatiquement reportée dans la réduction pour piano.

"
  doctitlefr = "Ensemble vocal avec réduction pour piano"

  lsrtags = "automatic-notation, keyboards, template, vocal-music"

  texidoc = "
This template adds an automatic piano reduction to the standard SATB
vocal score demonstrated in @qq{Vocal ensemble template}. This
demonstrates one of the strengths of LilyPond – you can use a music
definition more than once. If any changes are made to the vocal notes
(say, @code{tenorMusic}), then the changes will also apply to the piano
reduction.

"
  doctitle = "Vocal ensemble template with automatic piano reduction"
} % begin verbatim


\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key c \major
  \time 4/4
}

sopMusic = \relative c'' {
  c4 c c8[( b)] c4
}
sopWords = \lyricmode {
  hi hi hi hi
}

altoMusic = \relative c' {
  e4 f d e
}
altoWords =\lyricmode {
  ha ha ha ha
}

tenorMusic = \relative c' {
  g4 a f g
}
tenorWords = \lyricmode {
  hu hu hu hu
}

bassMusic = \relative c {
  c4 c g c
}
bassWords = \lyricmode {
  ho ho ho ho
}

\score {
  <<
    \new ChoirStaff <<
      \new Lyrics = "sopranos" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup #'staff-affinity = #DOWN
      }
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics = "altos"
      \new Lyrics = "tenors" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup #'staff-affinity = #DOWN
      }

      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \new Lyrics = "basses"
      \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
      \context Lyrics = "altos" \lyricsto "altos" \altoWords
      \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
      \context Lyrics = "basses" \lyricsto "basses" \bassWords
    >>
    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \sopMusic >>
        << \global \altoMusic >>
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \tenorMusic >>
        << \global \bassMusic >>
      >>
    >>
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
