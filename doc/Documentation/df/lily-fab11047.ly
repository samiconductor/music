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
\sourcefilename "skips-in-lyric-mode-2.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.16.0"

\header {
%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Sachant qu'un @code{s} au sein d'un bloc @code{\\lyricmode} est
interprété non comme de l'espace mais comme un mot, l'utilisation de
paires de guillemets informatiques (@code{\"\"}) ou un caractère
souligné simple (@code{_}) permet de « sauter » une note.

"
  doctitlefr = "Sauts de notes en mode paroles (2)"

  lsrtags = "really-simple, rhythms, vocal-music"

  texidoc = "
Although @code{s} skips cannot be used in @code{\\lyricmode} (it is
taken to be a literal @qq{s}, not a space), double quotes (@code{\"\"})
or underscores (@code{_}) are available.So for example:

"
  doctitle = "Skips in lyric mode (2)"
} % begin verbatim


<<
  \relative c'' { a4 b c d }
  \new Lyrics \lyricmode { a4 "" _ gap }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************