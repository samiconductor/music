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
\sourcefilename "adding-orchestral-cues-to-a-vocal-score.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.20
\version "2.16.0"

\header {
%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a

  texidoces = "
   Este ejemplo muestra una forma de simplificar la adición de muchas
notas guía orquestales a la reducción de piano en una partitura vocal.
La función musical @code{\\cueWhile} toma cuatro argumentos: la música
de la que se toma la cita, como viene definida por @code{\\addQuote},
el nombre que insertar antes de las notas guía, y después @code{#UP} o
@code{#DOWN} para especificar @code{\\voiceOne} con el nombre encima
del pentagrama o bien @code{\\voiceTwo} con el nombre debajo del
pentagrama, y finalmente la música de piano con la que las notas guía
deben aparecer en paralelo.  El nombre del instrumento citado se
posiciona a la izquierda de las notas guía.  Se pueden citar muchos
pasajes como guía, pero no se pueden superponer en el tiempo entre
ellos.

"

 doctitlees = "Añadir notas guía orquestales a una partitura vocal"




%% Translation of GIT committish: 27b1197f3bae8512c14d946752cd3e40e7c76016


  texidocde = "
Hier wird gezeigt, wie man das Hinzufügen von vielen Orchsterstichnoten
zu einem Klavierauszug hinzufügen kann.  Die musikalische Funktion
@code{\\cueWhile} braucht vier Argumente:  Die Noten, von denen die
Stichnoten formatiert werden sollen, definiert durch @code{\\addQuote},
die Bezeichnung, die mit den Noten angegeben werden soll, dann entweder
@code{#UP} (hoch) oder @code{#DOWN} (runter) zur Angabe von entweder
@code{\\voiceOne} mit der Bezeichnung über dem System oder @code{\\voiceTwo}
mit der Bezeichnung unter dem System, und schließlich die Klaviermusik,
die parallel zu den Stichnoten gespielt werden soll.  Die Bezeichnung des
Stichnoteninstruments wird links der Stichnoten positioniert.  Viele
Abschnitte können zitiert werden, aber sie dürfen sich nicht überlappen.

"
  doctitlede = "Orchesterstichnoten zu einem Klavierauszug hinzufügen"


%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Lorsque le nombre d'instruments cités dans la réduction pour piano se
multiplie, vous pourriez avoir intérêt à créer votre propre fonction
pour gérer ces repères.  La fonction musicale @code{\\cueWhile} prend
quatre arguments@tie{}: la musique d'où provient la citation, telle que
définie par @code{\\addQuote}, le nom qui sera mentionné en regard de
cette citation, son positionnement -- @code{UP} ou @code{DOWN} selon
qu'il sera attribué à @code{\\voiceOne} et placé au-dessus ou
@code{\\voiceTwo} et placé en dessous -- et enfin la musique du piano
qui interviendra en parallèle.  Le nom de l'instrument en question
viendra s'aligner sur la gauche de la citation.  Bien que vous puissiez
effectuer plusieurs citations, elle ne peuvent être simultanées.

"
 doctitlefr = "Indication de l'instrument cité dans l'accompagnement d'une partition pour chœur"


  lsrtags = "staff-notation, vocal-music"

  texidoc = "
This shows one approach to simplify adding many orchestral cues to the
piano reduction in a vocal score.  The music function @code{\\cueWhile}
takes four arguments: the music from which the cue is to be taken, as
defined by @code{\\addQuote}, the name to be inserted before the cue
notes, then either @code{#UP} or @code{#DOWN} to specify either
@code{\\voiceOne} with the name above the staff or @code{\\voiceTwo}
with the name below the staff, and finally the piano music in parallel
with which the cue notes are to appear.  The name of the cued
instrument is positioned to the left of the cued notes. Many passages
can be cued, but they cannot overlap each other in time.

"
  doctitle = "Adding orchestral cues to a vocal score"
} % begin verbatim


cueWhile =
#(define-music-function
   (parser location instrument name dir music)
   (string? string? ly:dir? ly:music?)
   #{
     \cueDuring $instrument #dir {
       \once \override TextScript #'self-alignment-X = #RIGHT
       \once \override TextScript #'direction = $dir
       <>-\markup { \tiny #name }
       $music
     }
   #})

flute = \relative c'' {
  \transposition c'
  s4 s4 e g
}
\addQuote "flute" { \flute }

clarinet = \relative c' {
  \transposition bes
  fis4 d d c
}
\addQuote "clarinet" { \clarinet }

singer = \relative c'' { c4. g8 g4 bes4 }
words = \lyricmode { here's the lyr -- ics }

pianoRH = \relative c'' {
  \transposition c'
  \cueWhile "clarinet" "Clar." #DOWN { c4. g8 }
  \cueWhile "flute" "Flute" #UP { g4 bes4 }
}
pianoLH = \relative c { c4 <c' e> e, <g c> }

\score {
  <<
    \new Staff {
      \new Voice = "singer" {
        \singer
      }
    }
    \new Lyrics {
      \lyricsto "singer"
      \words
    }
    \new PianoStaff <<
      \new Staff {
        \new Voice {
          \pianoRH
        }
      }
      \new Staff {
        \clef "bass"
        \pianoLH
      }
    >>
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
