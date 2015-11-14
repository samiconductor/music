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
\sourcefilename "adding-beams,-slurs,-ties-etc.-when-using-tuplet-and-non-tuplet-rhythms.ly"
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
La sintaxis de LilyPond puede implicar muchas colocaciones poco
comunes para los paréntesis, corchetes, etc, que a veces se tienen
que intercalar. Por ejemplo, al introducir una barra manual, el
corchete izquierdo de apertura se debe escribir después de la nota
inicial y de su duración, no antes. De forma similar, el corchete
derecho de cierre debe seguir inmediatamente a la nota que se
quiere situar al final del barrado, incluso si esta nota resulta
estar dentro de un grupo de valoración especial. Este fragmento de
código muestra cómo combinar el barrado manual, las ligaduras de
expresión y de unión y las ligaduras de fraseo, con secciones de
valoración especial (encerradas entre llaves).

"
  doctitlees = "Añadir barras, ligaduras de expresión y de unión, etc. cuando se usan ritmos con y sin grupos de valoración especial."

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
La syntaxe de LilyPond demande parfois un positionnement inhabituel des
parenthèses, crochets etc. qui peuvent s'entrelacer.  Par exemple, le
crochet ouvrant une ligature manuelle se place à la suite de la note
de départ et sa durée, non pas avant.  De même, le crochet fermant se
place à la fin de la ligature, y compris lorsque la dernière note se
trouve incluse dans un nolet.  Cet extrait illustre la manière de
combiner ligatures manuelles, liaisons d'articulation, de prolongation
ou de phrasé, avec des nolets bornés par des parenthèses.

"
  doctitlefr = "Coexistence de ligatures et liaisons avec des rythmes comprenant des nolets"

  lsrtags = "expressive-marks, rhythms"

  texidoc = "
LilyPond syntax can involve many unusual placements for parentheses,
brackets etc., which might sometimes have to be interleaved. For
example, when entering a manual beam, the left square bracket has to be
placed after the starting note and its duration, not before. Similarly,
the right square bracket should directly follow the note which is to be
at the end of the requested beaming, even if this note happens to be
inside a tuplet section. This snippet demonstrates how to combine
manual beaming, manual slurs, ties and phrasing slurs with tuplet
sections (enclosed within curly braces).

"
  doctitle = "Adding beams slurs ties etc. when using tuplet and non-tuplet rhythms"
} % begin verbatim


{
  r16[ g16 \times 2/3 { r16 e'8] }
  g16( a \times 2/3 { b d e') }
  g8[( a \times 2/3 { b d') e'] ~ }
  \time 2/4
  \times 4/5 { e'32\( a b d' e' } a'4.\)
}



% ****************************************************************
% end ly snippet
% ****************************************************************