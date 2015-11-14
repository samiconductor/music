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
\sourcefilename "setting-system-separators.ly"
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
Se pueden insertar separadores sistema entre los sistemas de una
página.  Se puede usar cualquier elemento de marcado, pero
@code{\\slashSeparator} está disponible como una elección
predeterminada adecuada.

"
  doctitlees = "Fijar un separador entre los sistemas"



%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
La séparation entre deux systèmes consécutifs peut être mise en
évidence par n'importe quel @emph{markup}.  LilyPond dispose à cet effet
d'une double oblique inversée : @code{\\slashSeparator}.

"
  doctitlefr = "Séparation visuelle entre les systèmes"

  lsrtags = "paper-and-layout, staff-notation, tweaks-and-overrides"

  texidoc = "
System separators can be inserted between systems.  Any markup can be
used, but @code{\\slashSeparator} has been provided as a sensible
default.

"
  doctitle = "Setting system separators"
} % begin verbatim


\paper {
  system-separator-markup = \slashSeparator
}

notes = \relative c' {
  c1 | c \break
  c1 | c \break
  c1 | c
}

\book {
  \score {
    \new GrandStaff <<
      \new Staff \notes
      \new Staff \notes
    >>
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
