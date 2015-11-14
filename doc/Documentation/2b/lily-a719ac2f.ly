%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "cross-staff-stems.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.42
\version "2.16.0"

\header {
%% Translation of GIT committish: a0077273ac8bf29ae472c8712bc78a02d138f898
  texidocde = "
Dieses Schnipsel zeigt den Einsatz von {Span_stem_engraver} und
@code{\\crossStaff}, um Hälse über Systeme hinweg automatisch zu
verbinden.  Die Länge des Halses muss definiert werden, da der
variable Abstand zwischen Notenköpfen und Notensystemen automatisch
errechnet wird.
"
  doctitlede = "Hälse über beide Systeme"


  lsrtags = "staff-notation, tweaks-and-overrides, contexts-and-engravers"
  texidoc = "
This snippet shows the use of the @code{Span_stem_engraver}
and @code{\\crossStaff} to connect stems across staves automatically.
The stem length need not be specified, as the variable distance
between noteheads and staves is calculated automatically.
"
  doctitle = "Cross staff stems"
} % begin verbatim


\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

{
  \new PianoStaff <<
    \new Staff {
      <b d'>4 r d'16\> e'8. g8 r\!
      e'8 f' g'4 e'2
    }
    \new Staff {
      \clef bass
      \voiceOne
      \autoBeamOff
      \crossStaff { <e g>4 e, g16 a8. c8} d
      \autoBeamOn
      g8 f g4 c2
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************