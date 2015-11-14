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
\sourcefilename "ambitus.ly"
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
Un @emph{ambitus} indique la tessiture, autrement dit les hauteurs
extrêmes d'une voix.

Seules seront affichées les altérations non comprises dans l'armure.
Les objets @code{AmbitusNoteHead} peuvent avoir des lignes
supplémentaires.

"
  doctitlefr = "Ambitus"

  lsrtags = "pitches, vocal-music"

  texidoc = "
Ambitus indicate pitch ranges for voices.


Accidentals only show up if they are not part of the key signature.
@code{AmbitusNoteHead} grobs also have ledger lines.

"
  doctitle = "Ambitus"
} % begin verbatim


\layout {
  \context {
    \Voice
    \consists "Ambitus_engraver"
  }
}

<<
  \new Staff {
    \relative c' {
      \time 2/4
      c4 f'
    }
  }
  \new Staff {
    \relative c' {
      \time  2/4
      \key d \major
      cis4 as'
    }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************