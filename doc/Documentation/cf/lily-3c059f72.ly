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
\sourcefilename "removing-connecting-bar-lines-on-staffgroup,-pianostaff,-or-grandstaff.ly"
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
De forma predeterminada, las líneas divisorias en los grupos
StaffGroup, PianoStaff o GrandStaff se conectan entre los pentagramas.
Se puede alterar este comportamiento pentagrama a pentagrama.

"
  doctitlees = "Quitar las barras de compás entre los pentagramas de un StaffGroup PianoStaff o GrandStaff"



%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Les barres de mesure des regroupements @code{StaffGroup},
@code{PianoStaff} et @code{GrandStaff} sont par défaut d'un seul tenant.
La portion entre les portées peut néanmoins être supprimée, portée par
portée.

"
  doctitlefr = "Suppression de la partie inter-portée des barres de mesure d'un regroupement autre que ChoirStaff"

  lsrtags = "rhythms, tweaks-and-overrides"

  texidoc = "
By default, bar lines in StaffGroup, PianoStaff, or GrandStaff groups
are connected between the staves.  This behaviour can be overridden on
a staff-by-staff basis.

"
  doctitle = "Removing connecting bar lines on StaffGroup PianoStaff or GrandStaff"
} % begin verbatim


\relative c' {
  \new StaffGroup <<
    \new Staff {
      e1 | e
      \once \override Staff.BarLine #'allow-span-bar = ##f
      e1 | e | e
    }
    \new Staff {
      c1 | c | c
      \once \override Staff.BarLine #'allow-span-bar = ##f
      c1 | c
    }
    \new Staff {
      a1 | a | a | a | a
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************