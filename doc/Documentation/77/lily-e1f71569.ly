%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "adjusting-the-shape-of-falls-and-doits.ly"
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
Puede ser necesario trucar la propiedad
@code{shortest-duration-space} para poder ajustar el tamaño de las
caídas y subidas de tono («falls» y «doits»).

"
  doctitlees = "Ajustar la forma de las subidas y caídas de tono"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Die @code{shortest-duration-space}-Eigenschaft kann verändert werden, um
das Aussehen von unbestimmten Glissandi anzupassen.

"
  doctitlede = "Das Aussehen von unbestimmten Glissandi anpassen"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
La propriété @code{shortest-duration-space} peut devoir être retouchée
pour ajuster l'apparence des chutes ou sauts.

"
  doctitlefr = "Ajustement du galbe des chutes ou sauts"


  lsrtags = "expressive-marks"

  texidoc = "
The @code{shortest-duration-space} property may be tweaked to adjust
the shape of falls and doits.

"
  doctitle = "Adjusting the shape of falls and doits"
} % begin verbatim

\relative c'' {
  \override Score.SpacingSpanner #'shortest-duration-space = #4.0
  c2-\bendAfter #5
  c2-\bendAfter #-4.75
  c2-\bendAfter #8.5
  c2-\bendAfter #-6
}



% ****************************************************************
% end ly snippet
% ****************************************************************