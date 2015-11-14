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
\sourcefilename "forcing-hyphens-to-be-shown.ly"
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

Si LilyPond no cree que haya sitio suficiente para un guión separador
de sílabas, lo omitirá.  Se puede sobreescribir este comportamiento
con la propiedad @code{minimum-distance} de @code{LyricHyphen}.

"
  doctitlees = "Forzar la visibilidad de los guiones separadores de sílabas"



%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
LilyPond n'imprimera de tiret entre deux syllabes que s'il juge qu'il y
a suffisamment d'espace.  Ce comportement peut être modifié grâce à la
propriété @code{minimum-distance} de @code{LyricHyphen}.

"
  doctitlefr = "Impression forcée de tirets entre syllabes"

  lsrtags = "vocal-music"

  texidoc = "
If LilyPond does not think there is space for a hyphen, it will be
omitted.  The behaviour can be overridden with the
@code{minimum-distance} property of @code{LyricHyphen}.

"
  doctitle = "Forcing hyphens to be shown"
} % begin verbatim


\relative c'' {
  c32 c c c
  c32 c c c
  c32 c c c
  c32 c c c
}
\addlyrics {
  syl -- lab word word
  \override LyricHyphen #'minimum-distance = #1.0
  syl -- lab word word
  \override LyricHyphen #'minimum-distance = #2.0
  syl -- lab word word
  \revert LyricHyphen #'minimum-distance
  syl -- lab word word
}



% ****************************************************************
% end ly snippet
% ****************************************************************
