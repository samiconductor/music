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
\sourcefilename "vocal-ensemble-template-with-lyrics-aligned-below-and-above-the-staves.ly"
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
Esta plantilla es, básicamente, la misma que la sencilla plantilla
@qq{Conjunto vocal}, excepto que aquí todas las líneas de letra se
colocan utilizando @code{alignAboveContext} y
@code{alignBelowContext}.

"
  doctitlees = "Plantilla para conjunto vocal con letras alineadas encima y debajo de los pentagramas"


%% Translation of GIT committish: d5647c5fd1c38d4124d2374725b923f4901f3661
  texidocja = "
このテンプレートは基本的に単純な @qq{合唱} テンプレートと同じですが、歌詞が
@code{alignAboveContext} と @code{alignBelowContext} を用いて配置@c
されています。
"
  doctitleja = "上下に歌詞を配置した合唱譜テンプレート"

%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidocit = "
Questo modello è fondamentalmente analogo al semplice modello @qq{Complesso vocale},
con l'unica differenza che qui tutti i versi del testo sono posizionati
usando @code{alignAboveContext} e @code{alignBelowContext}.

"
  doctitleit = "Modello per gruppo vocale con testo allineato sotto e sopra i righi"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
In diesem Beispiel werden die Texte mit den Befehlen
@code{alignAboveContext} und @code{alignBelowContext}
über und unter dem System angeordnet.
"

  doctitlede = "Vorlage für Vokalensemble mit dem Gesangstext über und unter dem System"


%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Ce canevas ressemble beaucoup à celui pour chœur à quatre voix mixtes.
La différence réside dans le fait que les paroles sont positionnées en
ayant recours à @code{alignAboveContext} et @code{alignBelowContext}.

"
  doctitlefr = "Ensemble vocal avec alignement des paroles selon le contexte"

  lsrtags = "contexts-and-engravers, template, text, vocal-music"

  texidoc = "
This template is basically the same as the simple @qq{Vocal ensemble}
template, with the exception that here all the lyrics lines are placed
using @code{alignAboveContext} and @code{alignBelowContext}.

"
  doctitle = "Vocal ensemble template with lyrics aligned below and above the staves"
} % begin verbatim


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
altoWords = \lyricmode {
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
  \new ChoirStaff <<
    \new Staff = "women" <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"women" }
      \lyricsto "sopranos" \sopWords
    \new Lyrics \with { alignBelowContext = #"women" }
      \lyricsto "altos" \altoWords
    % we could remove the line about this with the line below, since
    % we want the alto lyrics to be below the alto Voice anyway.
    % \new Lyrics \lyricsto "altos" \altoWords

    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"men" }
      \lyricsto "tenors" \tenorWords
    \new Lyrics \with { alignBelowContext = #"men" }
      \lyricsto "basses" \bassWords
    % again, we could replace the line above this with the line below.
    % \new Lyrics \lyricsto "basses" \bassWords
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
