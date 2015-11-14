%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=15.9\cm,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 15.9\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 15.9\cm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1497
\header {
  title = "Screech and boink"
  subtitle = "Random complex notation"
  composer = "Han-Wen Nienhuys"
}

\score {
  \context PianoStaff <<
    \new Staff = "up" {
      \time 4/8
      \key c \minor
      << {
        \revert Stem #'direction
        \change Staff = down
        \set subdivideBeams = ##t
        g16.[
          \change Staff = up
          c'''32
          \change Staff = down
          g32
          \change Staff = up
          c'''32
          \change Staff = down
          g16]
        \change Staff = up
        \stemUp
        \set followVoice = ##t
        c'''32([ b''16 a''16 gis''16 g''32)]
      } \\ {
        s4 \times 2/3 { d'16[ f' g'] } as'32[ b''32 e'' d'']
      } \\ {
        s4 \autoBeamOff d''8.. f''32
      } \\ {
        s4 es''4
      } >>
    }

    \new Staff = "down" {
      \clef bass
      \key c \minor
      \set subdivideBeams = ##f
      \override Stem  #'french-beaming = ##t
      \override Beam  #'beam-thickness = #0.3
      \override Stem  #'thickness = #4.0
      g'16[ b16 fis16 g16]
      << \makeClusters {
        as16 <as b>
        <g b>
        <g cis>
      } \\ {
        \override Staff.Arpeggio  #'arpeggio-direction =#down
        <cis, e, gis, b, cis>4\arpeggio
      }
    >> }
  >>
  \midi {
    \tempo 8 = 60
  }
  \layout {
    \context {
      \Staff
      \consists "Horizontal_bracket_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************