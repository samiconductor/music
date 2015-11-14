%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=110\mm,noragged-right,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 110\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##f
  line-width = 110\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1925
#(define zero-space '((padding . -inf.0) (basic-distance . 0)))

alignToZero = \with {
  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing = #zero-space
  \override VerticalAxisGroup #'nonstaff-nonstaff-spacing = #zero-space
}
lowerCaseChords = \with {
  chordNameLowercaseMinor = ##t
}
staffAffinityDown = \with {
  \override VerticalAxisGroup #'staff-affinity = #DOWN
}
labelContext =
#(define-music-function
     (parser location context)
     (string?)
   #{ s1*0^\markup { \typewriter #context } #})

\layout {
  \context { \Dynamics    \alignToZero }
  \context { \FiguredBass \alignToZero }
  \context { \Lyrics      \alignToZero }
  \context { \NoteNames   \alignToZero \staffAffinityDown }
  \context { \ChordNames  \alignToZero
                          \staffAffinityDown
			  \lowerCaseChords }
  \context { \FretBoards  \alignToZero \staffAffinityDown }
  \context { \Score
    \override BarLine #'stencil = ##f
    \override DynamicText #'self-alignment-X = #-1
    \override FretBoard #'X-offset = #1.75
    \override InstrumentName #'minimum-Y-extent = #'(-2 . 2)
    \override InstrumentName #'extra-offset = #'(0 . -0.5)
    \override TextScript #'minimum-Y-extent = #'(-2 . 3)
    \override TimeSignature #'stencil = ##f
  }
}

%% These contexts have reference points at the baseline:
%%   ChordNames, NoteNames, and Lyrics
<<
  \new ChordNames { \chords { g1:m } }
  \new NoteNames { s1 | g1 | }
  \new RhythmicStaff {
    \set RhythmicStaff.instrumentName = #"baseline "
    \textLengthOn
    \labelContext "ChordNames " s1 |
    \labelContext "NoteNames "  s1 |
    \labelContext "Lyrics"     s1 |
  }
  \new Lyrics { \lyrics { \skip 1*2 | ghijk1 | } }
>>

%% The reference point for Dynamics is its vertical center
<<
  \new RhythmicStaff {
    \set RhythmicStaff.instrumentName = #"vertical center "
    \labelContext "Dynamics" s1*3
  }
  \new Dynamics { s1\mp s\fp }
>>

%% The reference point for FiguredBass is its highest point
<<
  \new RhythmicStaff {
    \set RhythmicStaff.instrumentName = #"highest point "
    \labelContext "FiguredBass" s1
  }
  \new FiguredBass { \figuremode { <6 5>1 } }
>>

%% The reference point for FretBoards is the top line
\include "predefined-guitar-fretboards.ly"
<<
  \new FretBoards { \chordmode { e1 } }
  \new RhythmicStaff {
    \set RhythmicStaff.instrumentName = #"top line "
    \labelContext "FretBoards " s1
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
