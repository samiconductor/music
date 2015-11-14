%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
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
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "positioning-arpeggios.ly"
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
Si necesitamos alargar o acortar un símbolo de arpegio, podemos
modificar independientemente los extremos superior e inferior.

"
  doctitlees = "Posicionar símbolos de arpegio"



%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
L'ajustement de la taille d'une indication d'arpeggio s'effectue au
travers du positionnement de ses extrémités haute ou basse.

"
  doctitlefr = "Positionnement des arpeggios"

  lsrtags = "expressive-marks, tweaks-and-overrides"

  texidoc = "
If you need to extend or shorten an arpeggio, you can modify the upper
and lower start positions independently.

"
  doctitle = "Positioning arpeggios"
} % begin verbatim


\relative c' {
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(-5 . 0)
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(0 . 5)
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(-5 . 5)
  <c e g b>1\arpeggio
}



% ****************************************************************
% end ly snippet
% ****************************************************************