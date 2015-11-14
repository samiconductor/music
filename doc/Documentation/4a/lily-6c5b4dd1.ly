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
\sourcefileline 1503
\header { tagline = ##f }
\book {
  \label #'ErstePartitur
  \score {
    {
      c'1
      \pageBreak \mark A \label #'ZeichenA
      c'1
    }
  }
  \markup { Die erste Partitur fängt auf
            Seite \page-ref #'ErstePartitur "0" "?" an.}
  \markup { Zeichen A befindet sich auf Seite
            \concat { \page-ref #'ZeichenA "0" "?" . } }
}



% ****************************************************************
% end ly snippet
% ****************************************************************