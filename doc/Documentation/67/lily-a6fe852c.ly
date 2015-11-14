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
\sourcefilename "makam-example.ly"
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
El «Makam» es un tipo de melodía de Turquía que
utiliza alteraciones microtonales de 1/9 de tono.  Consulte el
archivo de inicio @file{makam.ly} (véase el 'Manual de
aprendizaje @version{}, 4.6.3 Otras fuentes de información' para
averiguar la situación de este archivo) para ver detalles de los
nombres de las notas y las alteraciones.

"
  doctitlees = "Ejemplo de «Makam»"



%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Makam ist eine türkische Melodie, in der 1/9-Tonabstände
eingesetzt werden.  Sehen Sie sich die Initialisierungsdatei
@file{makam.ly} für weiter Information zu Tonhöhenbezeichnungen
und Alterationen an (siehe
Handbuch zum Lernen @version{}, 4.6.3 Weitere Information zu
Hinweisen, wo diese Datei gespeichert ist)."

  doctitlede = "Makam-Beispiel"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Le « makam » est une forme de mélodie turque qui utilise des altérations
d'un neuvième de ton.  Consultez le fichier d'initialisation
@file{makam.ly} pour plus de détails sur les hauteurs et altérations
utilisées (voir le chapitre 4.6.3 - Autres sources d'information du
manuel d'initiation pour le localiser).

"
  doctitlefr = "Exemple de musique « Makam »"

  lsrtags = "pitches, version-specific, world-music"

  texidoc = "
Makam is a type of melody from Turkey using 1/9th-tone microtonal
alterations. Consult the initialization file @samp{ly/makam.ly} for
details of pitch names and alterations.

"
  doctitle = "Makam example"
} % begin verbatim


% Initialize makam settings
\include "makam.ly"

\relative c' {
  \set Staff.keySignature = #`((6 . ,(- KOMA)) (3 . ,BAKIYE))
  c4 cc db fk
  gbm4 gfc gfb efk
  fk4 db cc c
}



% ****************************************************************
% end ly snippet
% ****************************************************************
