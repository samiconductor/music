%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,ragged-right,relative=1]
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



\relative c'
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 598
{
  \textLengthOn

  \time 2/2
  c1^\markup { \hspace #-2.0 \typewriter default }

  \override Staff.TimeSignature #'style = #'numbered
  \time 2/2
  c1^\markup { \hspace #-2.0 \typewriter numbered }

  \override Staff.TimeSignature #'style = #'mensural
  \time 2/2
  c1^\markup { \hspace #-2.0 \typewriter mensural }

  \override Staff.TimeSignature #'style = #'neomensural
  \time 2/2
  c1^\markup { \hspace #-2.0 \typewriter neomensural }
  \override Staff.TimeSignature #'style = #'single-digit
  \time 2/2
  c1^\markup { \hspace #-2.0 \typewriter single-digit }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
}
