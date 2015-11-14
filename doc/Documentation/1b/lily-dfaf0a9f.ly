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
\sourcefilename "hiding-the-extender-line-for-text-dynamics.ly"
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
Los cambios de dinámica con estilo de texto (como cresc. y dim.)
se imprimen con una línea intermitente que muestra su alcance.
Esta línea se puede suprimir de la siguiente manera:

"
  doctitlees = "Ocultar la línea de extensión de las expresiones textuales de dinámica"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Dynamik-Texte (wie cresc. und dim.) werden mit einer gestrichelten Linie
gesetzt, die ihre Dauer anzeigt.  Diese Linie kann auf folgende Weise
unterdrückt werden:

"
  doctitlede = "Crescendo-Linien von Dynamik-Texten unterdrücken"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Les crescendos et decrescendos indiqués textuellement -- tels que
@emph{cresc.} ou @emph{dim.} -- sont suivis de pointillés qui montrent
leur étendue.  On peut empêcher l'impression de ces pointillés.

"
  doctitlefr = "Masquage de l'extension des nuances textuelles"


  lsrtags = "expressive-marks"

  texidoc = "
Text style dynamic changes (such as cresc. and dim.) are printed with a
dashed line showing their extent.  This line can be suppressed in the
following way:

"
  doctitle = "Hiding the extender line for text dynamics"
} % begin verbatim


\relative c'' {
  \override DynamicTextSpanner #'style = #'none
  \crescTextCresc
  c1\< | d | b | c\!
}



% ****************************************************************
% end ly snippet
% ****************************************************************
