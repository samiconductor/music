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
\sourcefilename "printing-the-bar-number-for-the-first-measure.ly"
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

De forma predeterminada se suprime el número del primer compás de una
partitura si es menor o igual a @q{1}.  Al establecer el valor de
@code{barNumberVisibility} a @code{all-bar-numbers-visible}, se puede
imprimir cualquier número de compás para el primer compás y todos los
siguientes.  Observe que, para que esto funcione, se debe insertar una
líinea divisoria vacía antes de la primera nota.

"

  doctitlees = "Imprimir el número de compás en el primer compás"



%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Standardmäßig wird die erste Taktzahl einer Partitur nicht gesetzt,
wenn sie weniger oder gleich '1' ist.  Indem man @code{barNumberVisibility}
auf @code{all-bar-numbers-visible} setzt, kann eine beliebige
Taktzahl für den ersten und die folgenden Takte gesetzt werden.
Eine leere Taktlinie muss jedoch vor der ersten Note eingefügt
werden, damit das funktioniert.

"
  doctitlede = "Setzen der Taktnummer für den ersten Takt"



%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Par défaut, LilyPond n'affiche pas le premier numéro de mesure s'il est
inférieur à@tie{}2. Le fait de définir @code{barNumberVisibility} à
@code{all-bar-numbers-visible} vous permettra d'imprimer n'importe quel
numéro pour la première mesure.  Notez que l'impression d'un numéro
de mesure ne peut intervenir que s'il y a une barre.  Aussi, pour
pouvoir le faire au début d'un morceau, devrez-vous ajouter une barre
vide avant la première note.

"
  doctitlefr = "Afficher le numéro de la première mesure"

  lsrtags = "rhythms"

  texidoc = "
By default, the first bar number in a score is suppressed if it is less
than or equal to `1'.  By setting @code{barNumberVisibility} to
@code{all-bar-numbers-visible}, any bar number can be printed for the
first measure and all subsequent measures.  Note that an empty bar line
must be inserted before the first note for this to work.

"
  doctitle = "Printing the bar number for the first measure"
} % begin verbatim


\relative c' {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \bar ""
  c1 | d | e | f \break
  g1 | e | d | c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
