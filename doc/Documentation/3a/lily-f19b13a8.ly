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
\sourcefilename "generating-custom-flags.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.15
\version "2.16.0"

\header {
%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Une fonction Scheme personnalisée permet de redéfinir la propriété
@code{stencil} de l'objet @code{Flag}, de sorte à modifier le glyphe
utilisé pour les crochets de croche.

"
  doctitlefr = "Génération de crochets personnalisés"

  lsrtags = "rhythms, tweaks-and-overrides"

  texidoc = "
The @code{stencil} property of the Flag grob can be set to a custom scheme
function to generate the glyph for the flag.

"
  doctitle = "Generating custom flags"
} % begin verbatim


#(define-public (weight-flag grob)
   (let* ((stem-grob (ly:grob-parent grob X))
          (log (- (ly:grob-property stem-grob 'duration-log) 2))
          (is-up? (eqv? (ly:grob-property stem-grob 'direction) UP))
          (yext (if is-up? (cons (* log -0.8) 0) (cons 0 (* log 0.8))))
          (flag-stencil (make-filled-box-stencil '(-0.4 . 0.4) yext))
          (stroke-style (ly:grob-property grob 'stroke-style))
          (stroke-stencil (if (equal? stroke-style "grace")
                              (make-line-stencil 0.2 -0.9 -0.4 0.9 -0.4)
                              empty-stencil)))
     (ly:stencil-add flag-stencil stroke-stencil)))


% Create a flag stencil by looking up the glyph from the font
#(define (inverted-flag grob)
   (let* ((stem-grob (ly:grob-parent grob X))
          (dir (if (eqv? (ly:grob-property stem-grob 'direction) UP) "d" "u"))
          (flag (retrieve-glyph-flag "" dir "" grob))
          (line-thickness (ly:staff-symbol-line-thickness grob))
          (stem-thickness (ly:grob-property stem-grob 'thickness))
          (stem-width (* line-thickness stem-thickness))
          (stroke-style (ly:grob-property grob 'stroke-style))
          (stencil (if (null? stroke-style)
                       flag
                       (add-stroke-glyph flag stem-grob dir stroke-style "")))
          (rotated-flag (ly:stencil-rotate-absolute stencil 180 0 0)))
     (ly:stencil-translate rotated-flag (cons (- (/ stem-width 2)) 0))))

snippetexamplenotes = { \autoBeamOff c'8 d'16 c'32 d'64 \acciaccatura {c'8} d'64 }

{
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \time 1/4
  \mark "Normal flags"
  \snippetexamplenotes

  \mark "Custom flag: inverted"
  \override Flag #'stencil = #inverted-flag
  \snippetexamplenotes

  \mark "Custom flag: weight"
  \override Flag #'stencil = #weight-flag
  \snippetexamplenotes

  \mark "Revert to normal"
  \revert Flag #'stencil
  \snippetexamplenotes
}



% ****************************************************************
% end ly snippet
% ****************************************************************