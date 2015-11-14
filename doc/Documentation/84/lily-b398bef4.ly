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
\sourcefileline 286
\relative c'' {
  b c  % c は b よりも 1 譜表スペース上なので、c は b の上になります
  b d  % d は 2 つ上または 5 つ下なので、d は上になります
  b e  % e は 3 つ上または 4 つ下なので、e は上になります
  b a  % a は 6 つ上または 1 つ下なので、a は下になります
  b g  % g は 5 つ上または 2 つ下なので、g は下になります
  b f  % f は 4 つ上または 3 つ下なので、f は下になります
}



% ****************************************************************
% end ly snippet
% ****************************************************************
