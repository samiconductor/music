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
\sourcefilename "unfretted-headword.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.16.0"

\header {
  lsrtags = "headword"

  texidoc = "
Unfretted headword

"
  doctitle = "Unfretted headword"
} % begin verbatim

% #!lilypond lcp-extract.ly -*- coding: utf-8; -*-

%%%
%%% les-cinq-pieds:
%%% extract for the lilypond documentaton project
%%%

%% Title:	Les cinq pieds
%% Composer: 	David Séverin
%% Date:	Juillet 2007
%% Instrument:	Violon Solo
%% Dedication:	A mon épouse Lívia De Souza Vidal
%% Additional:	avec l'aide de Krzysztof Wagenaar

%% Statement:

%% Here by, I, the composer, agree that this extract of my composition
%% be in the public domain and can be part of, used and presented in
%% the LilyPond Documention Project.

%% Statement Date: Octber the 9th, 2008


%%%
%%% Abbreviations
%%%

db         = \markup { \musicglyph #"scripts.downbow" }
dub        = \markup { \line { \musicglyph #"scripts.downbow" " " \musicglyph #"scripts.upbow" } }
dubetc     = \markup { \line { \musicglyph #"scripts.downbow" " " \musicglyph #"scripts.upbow" "..." } }

ub         = \markup { \musicglyph #"scripts.upbow" }
udb        = \markup { \line { \musicglyph #"scripts.upbow" " " \musicglyph #"scripts.downbow" } }
udbetc     = \markup { \line { \musicglyph #"scripts.upbow" " " \musicglyph #"scripts.downbow" "..." } }

fermaTa    = \markup \musicglyph #"scripts.ufermata"

accel   = \markup \tiny \italic \bold "accel..."
ritar   = \markup \tiny \italic \bold "ritar..."

ignore     = \override NoteColumn #'ignore-collision = ##t


%%
%% Strings
%%

svib           = \markup \small "s. vib."
pvib           = \markup \small "p. vib."
mvib           = \markup \small "m. vib."
sulp           = \markup \small "s.p."
norm           = \markup \small "n."

quatre         = \markup \teeny "IV"


%%
%% Shifting Notes
%%

shift      = \once \override NoteColumn #'force-hshift = #0.9
shifta     = \once \override NoteColumn #'force-hshift = #1.2
shiftb     = \once \override NoteColumn #'force-hshift = #1.4


%%
%% Hairpin
%%

% aniente        = "a niente"
aniente        = \once \override Hairpin #'circled-tip = ##t


%%
%% Tuplets
%%

tupletbp       = \once \override Staff.TupletBracket #'padding = #2.25


%%
%% Flag [Note Head - Stem]
%%

noflag         = \once \override Flag #'style = #'no-flag

%%%
%%% Functions
%%%

#(define-markup-command (colmark layout props args)
  (markup-list?)
  (let ((entries (cons (list '(baseline-skip . 2.3)) props)
       ))
   (interpret-markup layout entries
    (make-column-markup
     (map (lambda (arg)
	   (markup arg))
      (reverse args))))))


%%%
%%% Instruments
%%%

ViolinSolo = \relative c' {

  \voiceOne

  \set Score.markFormatter     =  #format-mark-box-numbers
  \override Score.VoltaBracket #'font-name                  = #"sans"
  \override Score.VoltaBracket #'extra-offset               = #'(0 . 1)
  \override SpacingSpanner     #'uniform-stretching         = ##t


  %% Measure 1
  \time 25/8
  \mark \default
  r2 ^\markup \colmark { \italic "fatigué" " " \bold "lentement"} r4 r r8
  <<
    { \shift d2 \glissando ^\markup \colmark { \quatre \dubetc \svib } \shifta e1 } \\
    { d2 \open \mf \< ~ \aniente d1  \! \> r4 r ^\markup \colmark { " " \fermaTa } \! }
  >>


  %% Measure 2
  \time 7/4
  \set Score.repeatCommands = #'((volta "1) n.      2) s.p."))
  <<
    { \shift d2 \glissando ^\markup \colmark { \quatre \udbetc } \shifta e1 } \\
    { d2 \open \mf \< ~ d1 \! \> ~ d4 ^\markup \colmark { " " \fermaTa } \! }
  >>
  \set Score.repeatCommands = #'((volta #f))


  %% Measure 3
  \time 15/4
  <<
    { \shift d2 \glissando ^\markup \colmark { \quatre \dubetc \pvib \norm } \shifta e1 \glissando d2 } \\
    { d2 \open \mf \< ~ d1 ~ d2 \ff  ~ d1 \> ~ d2 ^\markup \colmark { " " " " \svib } ~ d4 \pp}
  >>
  \break

  %% Measure 4
  \time 4/4
  \stemUp
  \tupletDown
  \times 2/3 { d4 ^\markup \colmark { \quatre \db \accel } d d }
  \times 2/3 { d4 ^\markup \colmark { " " \db " " \sulp } d d }



  %% Measure 5
  \time 5/4
  \tupletbp \times 2/3 { d8 \mf \< ^\markup \colmark { \quatre \db \norm } d _\open d }
  \tupletbp \times 2/3 { d8 ^\markup \colmark { " " \db \sulp } d _\open d }
  \tupletbp \times 2/3 { d16 ^\markup \colmark { " " \db \norm } d _\open d d d _\open d }
  d2 \ff ^\markup \colmark { " " \pvib } \>


  %% Measure 6
  \time 5/8
  \once \override Beam #'grow-direction = #RIGHT  % \featherDurations #(ly:make-moment 2 3)
  { d16 \staccato
    [ d \staccato d \staccato d \staccato d \staccato d \staccato d \staccato d \staccato d \staccato d \staccato]
  }
  \break


  %% Measure 7
  \time 7/4
  \tupletbp \times 2/3 { d16 ^\markup \colmark { \quatre } d _\open d d d _\open d }
  \tupletbp \times 2/3 { d8 ^\markup \colmark { " " \db } d _\open d }
  \tupletbp \times 2/3 { d8 ^\markup \colmark { " " \db " " \sulp } d _\open d }
  \times 2/3 { d4 ^\markup \colmark { \quatre \db \ritar \norm } d d }
  \times 2/3 { d4 ^\markup \colmark { " " \db " " \sulp } d d \ppp ~ }


  %% Measure 8
  d4 ^\markup \colmark { " " " " \pvib \norm }
  deh2 d dih \<


  %% Measure 9
  <<
    { \shift d2 \glissando ^\markup \colmark { \quatre } \shifta e1 } \\
    { d2 \open ~ d1  ^\markup \colmark { " " " " \mvib } }
  >>
  \breathe r4 \!

}


%%%
%%% Score
%%%

\score {

  <<
    \relative <<
      \new Staff \ViolinSolo
    >>

    \override Score.Rest #'transparent = ##t
    \set Score.defaultBarType          = "empty"
  >>

  \layout  {
    indent       = 0.0
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
