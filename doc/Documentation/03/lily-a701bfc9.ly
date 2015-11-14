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
\sourcefilename "glissandi-can-skip-grobs.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.12
\version "2.16.0"

\header {
%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidoces = "
Los objetos gráficos de columna de nota (los grobs @code{NoteColumn})
pueden ser sobrepasados por los glissandos.

"
  doctitlees = "Glissando por debajo de un objeto gráfico"

%% Translation of GIT committish: fc1ca638e0b5f66858b9b7a073ceefc1eccb3ed2
  texidocde = "@code{NoteColumn}-Grobs können bei Glissandos übersprungen werden."
  doctitlede = "Glissando kann Grobs überspringen"


%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Un glissando peut sauter un objet @code{NoteColumn}.

"
  doctitlefr = "Glissando par dessus un objet graphique"

  lsrtags = "expressive-marks, staff-notation, tweaks-and-overrides"
  doctitle = "Glissandi can skip grobs"
  texidoc = "@code{NoteColumn} grobs can be skipped over by glissandi."
} % begin verbatim


\relative c' {
  a2 \glissando
  \once \override NoteColumn #'glissando-skip = ##t
  f''4 d,
}



% ****************************************************************
% end ly snippet
% ****************************************************************
