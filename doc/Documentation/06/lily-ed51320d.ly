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
\sourcefilename "aligning-and-centering-instrument-names.ly"
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
La alineación horizontal de los nombres de instrumento se puede
trucar modificando la propiedad @code{Staff.InstrumentName
#'self-alignment-X}.  Las variables de @code{\\layout}
@code{indent} y @code{short-indent} definen el espacio en que se
alinean los nombres de instrumento antes del primer sistema y de
los siguientes, respectivamente.

"
  doctitlees = "Alinear y centrar los nombres de instrumento"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
L'alignement horizontal des noms d'instrument se gère à l'aide de la
propriété @code{Staff.InstrumentName #'self-alignment-X}.  Les variables
@code{indent} et @code{short-indent}, attachées au bloc @code{\\layout},
déterminent l'espace alloué à l'alignement des noms d'instrument,
respectivement dans leurs formes développée et abrégée.

"
  doctitlefr = "Alignement des noms d'instrument"

  lsrtags = "paper-and-layout, text, titles"

  texidoc = "
The horizontal alignment of instrument names is tweaked by changing the
@code{Staff.InstrumentName #'self-alignment-X} property. The
@code{\\layout} variables @code{indent} and @code{short-indent} define
the space in which the instrument names are aligned before the first
and the following systems, respectively.

"
  doctitle = "Aligning and centering instrument names"
} % begin verbatim


\paper {
  left-margin = 3\cm
}

\score {
  \new StaffGroup <<
    \new Staff {
      \override Staff.InstrumentName #'self-alignment-X = #LEFT
      \set Staff.instrumentName = \markup \left-column {
        "Left aligned"
        "instrument name"
      }
      \set Staff.shortInstrumentName = #"Left"
      c''1
      \break
      c''1
    }
    \new Staff {
      \override Staff.InstrumentName #'self-alignment-X = #CENTER
      \set Staff.instrumentName = \markup \center-column {
        Centered
        "instrument name"
      }
      \set Staff.shortInstrumentName = #"Centered"
      g'1
      g'1
    }
    \new Staff {
      \override Staff.InstrumentName #'self-alignment-X = #RIGHT
      \set Staff.instrumentName = \markup \right-column {
        "Right aligned"
        "instrument name"
      }
      \set Staff.shortInstrumentName = #"Right"
      e'1
      e'1
    }
  >>
  \layout {
    ragged-right = ##t
    indent = 4\cm
    short-indent = 2\cm
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
