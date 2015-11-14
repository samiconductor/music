%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,ragged-right,relative=2,staffsize=18]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(set-global-staff-size 18)

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



\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 2664
\once \override TextScript #'outside-staff-padding = #0
a'^"This text is placed very close to the note"
\once \override TextScript #'outside-staff-padding = #3
c^"This text is padded away from the previous text"
c^"This text is placed close to the previous text"



% ****************************************************************
% end ly snippet
% ****************************************************************
}