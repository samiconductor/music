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
\sourcefilename "automatically-change-durations.ly"
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
@code{shiftDurations} permet de modifier la longueur des notes d'un
morceau.  Cette instruction prend deux arguments@tie{}: un coefficient
d'échelonnement (une puissance de deux) et un nombre de points
d'augmentation (entier positif).

"
  doctitlefr = "Changement automatique des durées"

  lsrtags = "rhythms"

  texidoc = "
<code>shiftDurations</code> can be used to change the note lengths of a
piece of music.  It takes two arguments - the scaling factor as a power
of two, and the number of dots to be added as a positive integer.

"
  doctitle = "Automatically change durations"
} % begin verbatim


\paper { indent = 0 }

music = \relative c'' { a1 b2 c4 d8 r }

\score {
  \new Voice {
    \time 4/2
    \music
    \time 4/4
    \shiftDurations #1 #0 { \music }
    \time 2/4
    \shiftDurations #2 #0 { \music }
    \time 4/1
    \shiftDurations #-1 #0 { \music }
    \time 8/1
    \shiftDurations #-2 #0 { \music }
    \time 6/2
    \shiftDurations #0 #1 { \music }
    \time 7/2
    \shiftDurations #0 #2 { \music }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************