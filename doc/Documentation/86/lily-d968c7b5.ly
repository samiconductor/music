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
\sourcefilename "using-grace-note-slashes-with-normal-heads.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.15
\version "2.16.0"

\header {
%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidoces = "

Es posible aplicar la barrita que cruza la barra de las
acciaccaturas, en otras situaciones.

"

  doctitlees = "Utilizar la barra que tacha las notas de adorno con notas normales"



%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Le trait que l'on trouve sur les hampes des acciaccatures peut
être appliqué dans d'autres situations.

"
  doctitlefr = "Utilisation de hampe barrée pour une note normale"

  lsrtags = "rhythms"

  texidoc = "
The slash through the stem found in acciaccaturas can be applied in
other situations.

"
  doctitle = "Using grace note slashes with normal heads"
} % begin verbatim


\relative c'' {
  \override Flag #'stroke-style = #"grace"
  c8( d2) e8( f4)
}



% ****************************************************************
% end ly snippet
% ****************************************************************
