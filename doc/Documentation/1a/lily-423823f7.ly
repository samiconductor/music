%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=10.0\cm,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 10.0\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 10.0\cm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 238
nam = \lyricmode {
  cymc cyms cymr hh hhc hho hhho hhp
  cb hc bd sn ss tomh tommh tomml toml tomfh tomfl }
mus = \drummode {
  cymc cyms cymr hh hhc hho hhho hhp \break
  cb hc bd sn ss tomh tommh tomml toml tomfh tomfl s16 }
\score {
  << \new DrumStaff \with {
       \remove "Bar_engraver"
       \remove "Time_signature_engraver"
       \override Stem #'transparent = ##t
       \override Flag #'transparent = ##t
       \override Stem #'Y-extent = ##f
     } \mus
     \new Lyrics \nam
  >>
  \layout {
    \context {
      \Score
      \override LyricText #'font-family = #'typewriter
      \override BarNumber #'transparent =##T
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************