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
\sourcefileline 1004
\score {
  <<
    \new Staff {
      \new Voice {
        \relative c'' {
          a4^"Nuances en dessous" a a a
          a4 a a\ff a
        }
      }
    }
    \new Staff
    \with { \accidentalStyle "dodecaphonic" }
    {
      \new Voice
      \with { \dynamicUp }
      {
        \relative c'' {
          a4^"Nuances en surplomb" a a a
          a4 a a\ff a
        }
      }
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
