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
\sourcefilename "stand-alone-two-column-markup.ly"
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
Los textos independientes se pueden disponer en varias columnas
utilizando instrucciones @code{\\markup}:

"
  doctitlees = "Elemento de marcado de texto independiente en dos columnas"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Isolierter Text kann in mehreren Spalten mit @code{\\markup}-Befehlen
angeordnet werden:

"
  doctitlede = "Isolierter Text in zwei Spalten"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
L'utilisation de la commande @code{\\markup} permet de distribuer un bloc
de texte indépendant sur plusieurs colonnes.

"
  doctitlefr = "Bloc de texte indépendant sur deux colonnes"

  lsrtags = "text"

  texidoc = "
Stand-alone text may be arranged in several columns using
@code{\\markup} commands:

"
  doctitle = "Stand-alone two-column markup"
} % begin verbatim


\markup {
  \fill-line {
    \hspace #1
    \column {
      \line { O sacrum convivium }
      \line { in quo Christus sumitur, }
      \line { recolitur memoria passionis ejus, }
      \line { mens impletur gratia, }
      \line { futurae gloriae nobis pignus datur. }
      \line { Amen. }
    }
    \hspace #2
    \column {
      \line { \italic { O sacred feast } }
      \line { \italic { in which Christ is received, } }
      \line { \italic { the memory of His Passion is renewed, } }
      \line { \italic { the mind is filled with grace, } }
      \line { \italic { and a pledge of future glory is given to us. } }
      \line { \italic { Amen. } }
    }
    \hspace #1
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************