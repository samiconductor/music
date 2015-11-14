%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 311
<<
  \new Voice = "one" \relative c'' {
    \time 2/4
    c4 b8. a16 g4. f8 e4 d c2
  }

% 前で指定された演奏時間 2 を用います
  \new Lyrics \lyricmode {
    Joy to the earth!
  }

% 音符とは異なるリズムをセットするために、演奏時間を明示します
  \new Lyrics \lyricmode {
    Life4 is love,2. live4 life.2
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************