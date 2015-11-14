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
\sourcefilename "customizing-fretboard-fret-diagrams.ly"
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
Se pueden establecer las propiedades de los diagramas de
posiciones de acordes por medio de @code{'fret-diagram-details}.
Para los diagramas de posiciones de FretBoard, se aplican los
overrides (sobreescrituras) al objeto @code{FretBoards.FretBoard}.
Como @code{Voice}, @code{FretBoards} es un contexto del nivel
inferior, y por tanto se puede omitir su nombre en la
sobreescritura de propiedades.

"
  doctitlees = "Personalizar los diagramas de posiciones"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Eigenschaften von Bunddiagrammen können in
@code{'fret-diagram-details} verändert werden.  Einstellungen mit
dem @code{\override}-Befehl werden dem @code{FretBoards.FretBoard}-Objekt
zugewiesen.  Genauso wie @code{Voice} ist auch @code{FretBoards} ein
Kontext der niedrigsten Ebene, weshalb der Kontext auch in dem Befehl
weggelassen werden kann.

"
  doctitlede = "Bunddiagramme anpassen"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Les propriétés d'un diagramme de fret sont définies par les
@code{'fret-diagram-details}.  En matière de diagramme de fret, les
adaptations s'appliquent à l'objet @code{FretBoards.FretBoard}.  Un
@code{FretBoards} est comparable à un @code{Voice}@tie{}: il s'agit
d'un contexte du plus bas niveau, et il n'est donc pas primordial de
l'instancier de manière explicite pour adapter ses propriétés.

"
  doctitlefr = "Personnalisation de diagrammes de fret"


  lsrtags = "fretted-strings, tweaks-and-overrides"

  texidoc = "
Fret diagram properties can be set through
@code{'fret-diagram-details}.  For FretBoard fret diagrams, overrides
are applied to the @code{FretBoards.FretBoard} object. Like
@code{Voice}, @code{FretBoards} is a bottom level context, therefore
can be omitted in property overrides.

"
  doctitle = "Customizing fretboard fret diagrams"
} % begin verbatim


\include "predefined-guitar-fretboards.ly"
\storePredefinedDiagram #default-fret-table \chordmode { c' }
                        #guitar-tuning
                        #"x;1-1-(;3-2;3-3;3-4;1-1-);"
<<
  \new ChordNames {
    \chordmode { c1 | c | c | d }
  }
  \new FretBoards {
    % Set global properties of fret diagram
    \override FretBoards.FretBoard #'size = #'1.2
    \override FretBoard
      #'(fret-diagram-details finger-code) = #'in-dot
    \override FretBoard
      #'(fret-diagram-details dot-color) = #'white
    \chordmode {
      c
      \once \override FretBoard #'size = #'1.0
      \once \override FretBoard
        #'(fret-diagram-details barre-type) = #'straight
      \once \override FretBoard
        #'(fret-diagram-details dot-color) = #'black
      \once \override FretBoard
        #'(fret-diagram-details finger-code) = #'below-string
      c'
      \once \override FretBoard
        #'(fret-diagram-details barre-type) = #'none
      \once \override FretBoard
        #'(fret-diagram-details number-type) = #'arabic
      \once \override FretBoard
        #'(fret-diagram-details orientation) = #'landscape
      \once \override FretBoard
        #'(fret-diagram-details mute-string) = #"M"
      \once \override FretBoard
        #'(fret-diagram-details label-dir) = #LEFT
      \once \override FretBoard
        #'(fret-diagram-details dot-color) = #'black
      c'
      \once \override FretBoard
        #'(fret-diagram-details finger-code) = #'below-string
      \once \override FretBoard
        #'(fret-diagram-details dot-radius) = #0.35
      \once \override FretBoard
        #'(fret-diagram-details dot-position) = #0.5
      \once \override FretBoard
        #'(fret-diagram-details fret-count) = #3
      d
    }
  }
  \new Voice {
    c'1 | c' | c' | d'
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
