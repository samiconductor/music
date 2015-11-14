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
\sourcefilename "changing-the-interval-of-lines-on-the-stave.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.16.0"

\header {
%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
@code{staffLineLayoutFunction} permet de changer le positionnement des
notes.  Dans cet exemple, la valeur qui lui est attribuée --
@code{ly:pitch-semitones} -- génère une gamme chromatique où l'écart
entre chaque ligne et interligne de la portée est ramené au demi ton.

"
  doctitlefr = "Modification de l'intervalle des lignes de la portée"

  lsrtags = "pitches"

  texidoc = "
@code{staffLineLayoutFunction} is used to change the position of notes.
This snippet shows setting its value to @code{ly:pitch-semitones} in
order to produce a chromatic scale with the distance between each space
and line of the stave equal to one semitone.

"
  doctitle = "Changing the interval of lines on the stave"
} % begin verbatim


scale = \relative c' {
  a4 ais b c
  cis4 d dis e
  f4 fis g gis
  a1
}

\new Staff \with {
  \remove "Accidental_engraver"
  staffLineLayoutFunction = #ly:pitch-semitones
}
{
  <<
    \scale
    \context NoteNames {
      \set printOctaveNames = ##f
      \scale
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************