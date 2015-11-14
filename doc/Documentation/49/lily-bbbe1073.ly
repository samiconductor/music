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
\sourcefilename "vocal-headword.ly"
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
Vocal headword

"
  doctitle = "Vocal headword"
} % begin verbatim

\layout {
  \context {
    \Score
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
  }
}

% L. van Beethoven. Symphony No. 9 in D minor, op.125; Finale
% mm. 216 -- 236
% Text: F. von Schiller

\score {
  \new Staff \relative c' {
    \set Score.currentBarNumber = 216
    \bar ""  % make first bar number be shown
    \clef bass \key d \minor \time 3/4
    % \tempo "Presto"
    % \compressFullBarRests  R2.*8
    \tempo "Recitativo"
    \autoBeamOff
    r4^\markup { \small Baritono } r a
    \appoggiatura a8 e'2. ~
    e4 d8[ cis d e]
    e4 g, r8 g
    bes2 a8 e
    g4 f r
    R2.*2
    gis2 gis4
    r4 d'4. b8
    b4 gis8([ a b cis]
    e8[ d cis d)] b([ gis)]
    e8 d d4 fis8([ e)]
    d4 cis r
    \key d \major
    r4 r a'
    d4.( e8[ fis e)]
    e([ d)] d([ cis d a)]
    g8([ fis)] fis([ e d c)]
    c8([ b)] g'2~
    \once \override Script #'outside-staff-priority = #1 % put fermata closer to staff
    g4.\fermata ^\markup { \small \italic "ad libitum" } e8[ cis!] d
    d8 a a4 r \bar "||"

    % \time 4/4 \tempo "Allegro assai"
    % R1
    % e''4^\f d r2
    % R1
    % e4( ^\f d2) a8([ g)]
  }
  \addlyrics {
    O Freun -- _ _ de, nicht die -- _ se Tö -- ne!
    Son -- dern laßt uns an -- _ ge -- neh -- me -- re an -- stim -- men,
    und freu -- _ _ _ _ _ _ _ den -- vol -- le -- re!
    % Freu -- de, Freu -- de,__
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************