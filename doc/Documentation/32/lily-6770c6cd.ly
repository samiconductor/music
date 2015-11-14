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
\sourcefilename "preventing-final-mark-from-removing-final-tuplet.ly"
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
L'ajout d'une marque-repère en fin de pièce peut entraîner la perte de
la dernière indication de nolet.  La désactivation de @code{TupletBracket
#'full-length-to-extent} pallie ce problème.

"
  doctitlefr = "Préservation de l'indication de nolet lors d'un repère final"

  lsrtags = "rhythms"

  texidoc = "
The addition of a final @code{mark} can result in the loss of a final
tuplet marking.  This can be overcome by setting @code{TupletBracket
#'full-length-to-extent} to @code{false}.

"
  doctitle = "Preventing final mark from removing final tuplet"
} % begin verbatim


\new Staff {
   \set tupletFullLength = ##t
   \time 1/8
   \times 2/3 { c'16 c'16 c'16 }
   \times 2/3 { c'16 c'16 c'16 }
   \times 2/3 { c'16 c'16 c'16 }
   \override Score.RehearsalMark #'break-visibility = #'#(#t #t #t)
   \override Score.RehearsalMark #'direction = #DOWN
   \override Score.RehearsalMark #'self-alignment-X = #RIGHT
% due to issue 2362 the following line is commented
%   \mark "Composed Feb 2007 - Feb 2008"
% and a shorter mark is used.
   \mark "1234"
}

\new Staff {
  \set tupletFullLength = ##t

  \override TupletBracket #'full-length-to-extent = ##f

  \time 1/8
  \times 2/3 { c'16 c'16 c'16 }
  \times 2/3 { c'16 c'16 c'16 }
  \times 2/3 { c'16 c'16 c'16 }
  \override Score.RehearsalMark #'break-visibility = #'#(#t #t #t)
  \override Score.RehearsalMark #'direction = #DOWN
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
% due to issue 2362 the following line is commented
%   \mark "Composed Feb 2007 - Feb 2008"
% and a shorter mark is used.
   \mark "1234"
}



% ****************************************************************
% end ly snippet
% ****************************************************************