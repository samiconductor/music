%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=13\cm,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 13\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 13\cm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 966
\new PianoStaff <<
  \context Staff = "SA" {
    \relative c'' {
      \clef treble
      \time 4/4
      r8 g16 c e g, c e r8 g,16 c e g, c e
      r8 a,16 d f a, d f r8 a,16 d f a, d f
      \bar "||"
    }
  }
  \context Staff = "SB" {
    \relative c' {
      \clef bass
      <<
        {
          \voiceOne
          r16 e8. ( e4) r16 e8. ( e4)
          r16 d8. ( d4) r16 d8. ( d4)
        }
        \new Voice {
          \voiceTwo
          c2 c
          c2 c
        }
      >>
    }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************