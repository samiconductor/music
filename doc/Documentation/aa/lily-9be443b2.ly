%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=1.5\cm,line-width=160\mm,quote,relative=2]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 1.5\cm
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



\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 904
<<
  \new Staff \with {
    instrumentName = #"Flute"
  }
  { f2 g4 f }
  \new Staff \with {
    instrumentName = \markup {
      \center-column { "Clarinet" }
      \line { "in B" \smaller \flat }
    }
  }
  { c4 b c2 }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
}
