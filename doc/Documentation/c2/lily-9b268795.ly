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
\sourcefileline 680
\new Staff \relative c' {
  % Main voice
  c16 d e f
  %    Voice "1"     Voice "2"                Voice "3"
  << { g4 f e } \\ { r8 e4 d c8~ } >> |
  << { d2 e }   \\ { c8 b16 a b8 g~ g2 } \\ { s4 b c2 } >> |
}



% ****************************************************************
% end ly snippet
% ****************************************************************
