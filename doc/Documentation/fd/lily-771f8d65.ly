%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "aligning-marks-with-various-notation-objects.ly"
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
Si están especificadas, las marcas de texto se pueden alinear con
objetos de notación distintos a las líneas divisorias.  Entre estos
objetos se encuentran @code{ambitus}, @code{breathing-sign},
@code{clef}, @code{custos}, @code{staff-bar}, @code{left-edge},
@code{key-cancellation}, @code{key-signature} y @code{time-signature}.

En estos casos, las marcas de texto se centran horizontalmente sobre
el objeto, aunque esto se puede cambiar, como se muestra en la segunda
línea de este ejemplo (en una partitura con varios pentagramas, se
debe hacer este ajuste para todos los pentagramas).

"
  doctitlees = "Alinear marcas con varios objetos de notación"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Wenn angegeben, können Textzeichen auch an anderen Objekten als Taktstrichen
ausgerichtet werden.  Zu diesen Objekten gehören @code{ambitus},
@code{breathing-sign}, @code{clef}, @code{custos}, @code{staff-bar},
@code{left-edge}, @code{key-cancellation}, @code{key-signature} und
@code{time-signature}.

In diesem Fall werden die Zeichen horizontal über dem Objekt zentriert.
Diese Ausrichtung kann auch geändert werden, wie die zweite Zeile
des Beispiels zeigt.  In einer Partitur mit vielen Systemen sollte
diese Einstellung für alle Systeme gemacht werden.

"

  doctitlede = "Zeichen an verschiedenen Notationsobjekten ausrichten"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Les indications textuelles peuvent s'aligner par rapport à d'autres
objets que des barres de mesure, tels que @code{ambitus},
@code{breathing-sign}, @code{clef}, @code{custos}, @code{staff-bar},
@code{left-edge}, @code{key-cancellation}, @code{key-signature} ou
@code{time-signature}.

Par défaut, les indications textuelles sont alignées sur le milieu
des objets de notation.  Bien entendu, vous pouvez modifier les
propriétés des objets en question pour obtenir un autre résultat comme
l'illustre la deuxième ligne de l'exemple.  Dans le cas de portées
multiples, ces réglages doivent être faits pour chacune d'entre elles.

"
  doctitlefr = "Alignement des indications par rapport à divers objets de notation"


  lsrtags = "text"

  texidoc = "
If specified, text marks may be aligned with notation objects other
than bar lines.  These objects include @code{ambitus},
@code{breathing-sign}, @code{clef}, @code{custos}, @code{staff-bar},
@code{left-edge}, @code{key-cancellation}, @code{key-signature}, and
@code{time-signature}.



In such cases, text marks will be horizontally centered above the
object. However this can be changed, as demonstrated on the second line
of this example (in a score with multiple staves, this setting should
be done for all the staves).



"
  doctitle = "Aligning marks with various notation objects"
} % begin verbatim

\relative c' {
  e1

  % the RehearsalMark will be centered above the Clef
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \key a \major
  \clef treble
  \mark \markup { \char ##x2193 }
  e1

  % the RehearsalMark will be centered above the TimeSignature
  \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
  \key a \major
  \clef treble
  \time 3/4
  \mark \markup { \char ##x2193 }
  e2.

  % the RehearsalMark will be centered above the KeySignature
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \key a \major
  \clef treble
  \time 4/4
  \mark \markup { \char ##x2193 }
  e1

  \break
  e1

  % the RehearsalMark will be aligned with the left edge of the KeySignature
  \once \override Score.KeySignature #'break-align-anchor-alignment = #LEFT
  \mark \markup { \char ##x2193 }
  \key a \major
  e1

  % the RehearsalMark will be aligned with the right edge of the KeySignature
  \once \override Score.KeySignature #'break-align-anchor-alignment = #RIGHT
  \key a \major
  \mark \markup { \char ##x2193 }
  e1

  % the RehearsalMark will be aligned with the left edge of the KeySignature
  % and then shifted right by one unit.
  \once \override Score.KeySignature #'break-align-anchor = #1
  \key a \major
  \mark \markup { \char ##x2193 }
  e1
}



% ****************************************************************
% end ly snippet
% ****************************************************************
