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
\sourcefilename "forcing-horizontal-shift-of-notes.ly"
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

 doctitlees = "Forzar el desplazamiento horizontal de las notas"

texidoces = "
 Cuando el motor de tipografiado no es capaz de todo, se puede usar la
 sintaxis siguiente para sobreescribir las decisiones de tipografía.
 Las unidades de medida que se usan aquí son espacios de pentagrama.

"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Wenn es zu Zusammenstößen kommt, kann mit folgender Lösung eine andere
Position manuell eingestellt werden.  Die Einheiten hier sind
Notenlinienzwischenräume.

"
  doctitlede = "Horizontale Verschiebung von Noten erzwingen"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Quand LilyPond est dépassé, la propriété @code{force-hshift} de l'objet
@code{NoteColumn}, et des silences à hauteur déterminée, peuvent
s'avérer utiles pour dicter au programme les choix de placement.  On
travaille ici en espace de portée.

"
  doctitlefr = "Décalage horizontal forcé"


  lsrtags = "simultaneous-notes, tweaks-and-overrides"

  texidoc = "
When the typesetting engine cannot cope, the following syntax can be
used to override typesetting decisions. The units of measure used here
are staff spaces.

"
  doctitle = "Forcing horizontal shift of notes"
} % begin verbatim


\relative c' <<
  {
    <d g>2 <d g>
  }
  \\
  {
    <b f'>2
    \once \override NoteColumn #'force-hshift = #1.7
    <b f'>2
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************