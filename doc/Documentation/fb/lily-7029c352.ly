%% Generated by lilypond-book.py
%% Options: [exampleindent=0.4\in,indent=0\mm,line-width=6\in,quote,ragged-right]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 6\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 6\in - 2.0 * 0.4\in
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
\sourcefileline 1394
\include "engraver-example.ily"
\score {
   <<
      \new Staff << \topVoice \\ \botVoice >>
      \new Staff << \pah \\ \hoom >>
   >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
