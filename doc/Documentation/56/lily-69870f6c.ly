%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,relative=1]
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



\relative c'
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 2161
\new Staff <<
  \time 7/8
  \set Staff.beatStructure = #'(2 3 2)
  \new Voice = one {
    \relative c'' {
        a8 a a a a a a
    }
  }
  \new Voice  = two {
    \relative c' {
      \voiceTwo
      \set Voice.beatStructure = #'(1 3 3)
      f8 f f f f f f
    }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
}
