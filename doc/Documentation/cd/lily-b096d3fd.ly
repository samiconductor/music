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
\sourcefileline 912
collide = \once \override NoteColumn #'force-hshift = #0

\score {
  <<
    \new Voice = "sample" \relative c''{
      \key g \minor
      <<
        { \voiceOne g4 \collide g4 }
        \new Voice { \voiceTwo bes \collide bes }
      >>
    }
    \new Lyrics \lyricsto "sample" \lyricmode { "bien " " mal" }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
