%% Generated by lilypond-book.py
%% Options: [exampleindent=0.4\in,indent=0\mm,line-width=14\cm,staffsize=19.5]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(set-global-staff-size 19.5)

\paper {
  indent = 0\mm
  line-width = 14\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 832
global = { \key g \minor }

partI = \relative c' {
  \voiceOne
  fis8 d' ees g, fis4 g
  r8 a16 bes c8 bes16 a d8 r r4
}

partII = \relative c' {
  \voiceTwo
  d4 r4 r8 d'16 c bes8 c16 d
  ees8 d c ees a, r r4
}

partIII = \relative c' {
  \voiceOne
  r2 r8 d ees g, fis4 g r8 a16 bes c8 bes16 a
}

partIV = \relative c {
  \voiceTwo
  d4 r r2
  r8 d ees g, fis4 a
}

\score {
  <<
    % \set Score.barNumberVisibility = #all-bar-numbers-visible
    % required in 2.13
    \set Score.currentBarNumber = #28
    \bar ""
    \new PianoStaff <<
      \new Staff = "RH"
      <<
        \global
        \new Voice = "voiceI" { \partI }
        \new Voice = "voiceII" { \partII }
      >>

      \new Staff = "LH" <<
        \clef "bass"
        \global
        \new Voice = "voiceIII" { \partIII }
        \new Voice = "voiceIV" { \partIV }
      >>
    >>
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
    \context {
      \PianoStaff
      \override StaffGrouper #'staff-staff-spacing #'padding = #1
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
