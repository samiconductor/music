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
\sourcefilename "ambitus-with-multiple-voices.ly"
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
  doctitlees = "Ámbitos con varias voces"
  texidoces = "
La adición del grabador @code{Ambitus_engraver} al contexto de
@code{Staff} crea un solo ámbito por pentagrama, incluso en el caso de
pentagramas con varias voces.

"


%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidocit = "
Se si aggiunge l'incisore @code{Ambitus_engraver} al contesto @code{Staff} viene
creato un solo ambitus per il rigo, anche nel caso di righi che hanno più
voci.

"
  doctitleit = "Ambitus su più voci"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Indem man den @code{Ambitus_engraver} im @code{Staff}-Kontext
hinzufügt, erhält man einen einzigen Ambitus pro System, auch in dem
Fall, dass mehrere Stimmen sich im gleichen System befinden.
"
  doctitlede = "Ambitus mit vielen Stimmen"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Si plusieurs voix se trouvent sur une même portée, on peut attribuer le
graveur @code{Ambitus_engraver} au contexte @code{Staff} afin d'obtenir
l'ambitus de toutes les voix cumulées, non d'une seule des voix actives.

"
  doctitlefr = "Ambitus sur plusieurs voix"


  lsrtags = "pitches, vocal-music"

  texidoc = "
Adding the @code{Ambitus_engraver} to the @code{Staff} context creates
a single ambitus per staff, even in the case of staves with multiple
voices.

"
  doctitle = "Ambitus with multiple voices"
} % begin verbatim


\new Staff \with {
  \consists "Ambitus_engraver"
  }
<<
  \new Voice \relative c'' {
    \voiceOne
    c4 a d e
    f1
  }
  \new Voice \relative c' {
    \voiceTwo
    es4 f g as
    b1
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************