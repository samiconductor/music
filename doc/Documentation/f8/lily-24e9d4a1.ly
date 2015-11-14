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
\sourcefilename "dynamics-text-spanner-postfix.ly"
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
Los objetos de extensión \cresc, \dim y \decresc ahora se pueden
redefinir como operadores postfijos y producir un solo objeto de
extensión de texto.  La definición de extensores personalizados
también es fácil.  Se pueden mezclar con facilidad los crescendi
textuales y en forma de reguladores. \< y \> producen reguladores
gráficos de forma predeterminada, \cresc etc. producen elementos
extensores de texto de forma predeterminada.

"

  doctitlees = "Objetos extensores de texto postfijos para dinámica"

%%   Translation of GIT committish: ab9e3136d78bfaf15cc6d77ed1975d252c3fe506


  texidocde = "Die \cresc, \dim und \decresc Strecker können umdefiniert werden,
um nachgestellt zu funktionieren und einen Textstrecker zu produzieren.  Eigene
Strecker können auch einfach definiert werden.  Klammer- und Textcrescendi können
einfach vermischt werden.  \< und \> erstellen normalerweise Klammern, \cresc
usw. dagegen normalerweise Textspanner.

"
  doctitlede = "Dynamiktextstrecker nachgestellt"



%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Les lignes d'extension des commandes @code{\\cresc}, @code{\\dim} et
@code{\\decresc} peuvent désormais être personnalisées facilement sous
forme d'opérateurs postfix.  Soufflets et (de)crescendos peuvent
cohabiter.  @code{\\<} et @code{\\>} produiront par défaut des
soufflets, alors que @code{\\cresc} etc. produiront une indication
textuelle avec extension.

"
  doctitlefr = "Extensions de nuance postfix"


  lsrtags = "expressive-marks, tweaks-and-overrides"

  texidoc = "
Custom text spanners can be defined and used with hairpin and text
crescendos.  @code{\\<} and @code{\\>} produce hairpins by default,
@code{\\cresc} etc. produce text spanners by default.

"
  doctitle = "Dynamics text spanner postfix"
} % begin verbatim

% Some sample text dynamic spanners, to be used as postfix operators
crpoco =
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "cresc. poco a poco")

\relative c' {
  c4\cresc d4 e4 f4 |
  g4 a4\! b4\crpoco c4 |
  c4 d4 e4 f4 |
  g4 a4\! b4\< c4 |
  g4\dim a4 b4\decresc c4\!
}



% ****************************************************************
% end ly snippet
% ****************************************************************
