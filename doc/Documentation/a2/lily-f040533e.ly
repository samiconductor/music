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
\sourcefilename "adding-an-extra-staff.ly"
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
Se puede añadir (posiblemente de forma temporal) un pentagrama
nuevo una vez que la pieza ha comenzado.

"
  doctitlees = "Añadir un pentagrama nuevo"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Vous pouvez ajouter une nouvelle portée, éventuellement de manière
temporaire, après le début d'un morceau.

"
  doctitlefr = "Ajout d'une portée supplémentaire"


  lsrtags = "contexts-and-engravers, really-simple, staff-notation"

  texidoc = "
An extra staff can be added (possibly temporarily) after the start of a
piece.

"
  doctitle = "Adding an extra staff"
} % begin verbatim


\score {
  <<
    \new Staff \relative c'' {
      c1 | c | c | c | c
    }
    \new StaffGroup \relative c'' {
      \new Staff {
        c1 | c
        <<
          {
            c1 | d
          }
          \new Staff {
            \once \override Staff.TimeSignature #'stencil = ##f
            c1 | b
          }
        >>
        c1
      }
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************