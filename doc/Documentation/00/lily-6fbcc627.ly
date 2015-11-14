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
\sourcefilename "creating-metronome-marks-in-markup-mode.ly"
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
Se pueden crear indicaciones metronómicas nuevas en modo de
marcado, pero no cambian el tempo en la salida MIDI.

"
  doctitlees = "Crear indicaciones metronómicas en modo de marcado"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Neue Metronombezeichnungen können als Textbeschriftung erstellt werden,
aber sie ändern nicht das Tempo für die MIDI-Ausgabe.

"

  doctitlede = "Eine Metronombezeichnung als Textbeschriftung erstellen"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Vous pouvez créer des indications de tempo sous la forme d'étiquettes
textuelles -- des objets @emph{markup} -- notamment des équivalences.
Cependant, elles n'apparaîtront pas dans le fichier MIDI.

"
  doctitlefr = "Création d'une indication métronomique sous forme d'étiquette"


  lsrtags = "rhythms"

  texidoc = "
New metronome marks can be created in markup mode, but they will not
change the tempo in MIDI output.

"
  doctitle = "Creating metronome marks in markup mode"
} % begin verbatim


\relative c' {
  \tempo \markup {
    \concat {
      (
      \smaller \general-align #Y #DOWN \note #"16." #1
      " = "
      \smaller \general-align #Y #DOWN \note #"8" #1
      )
    }
  }
  c1
  c4 c' c,2
}



% ****************************************************************
% end ly snippet
% ****************************************************************
