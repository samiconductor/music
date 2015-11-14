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
\sourcefileline 1421
#(set-global-staff-size 30)

#(define (mc-squared grob orig current)
  (let* ((interfaces (ly:grob-interfaces grob))
         (pos (ly:grob-property grob 'staff-position)))
    (if (memq 'note-head-interface interfaces)
        (begin
          (ly:grob-set-property! grob 'stencil
            (grob-interpret-markup grob
              (make-lower-markup 0.5
                (case pos
                  ((-5) "m")
                  ((-3) "c ")
                  ((-2) (make-smaller-markup (make-bold-markup "2")))
                  (else "bla")))))))))

\new Voice \relative c' {
  \stemUp
  \set autoBeaming = ##f
  \time 2/4
  <d f g>4
  \once \override NoteHead #'stencil = #note-head::brew-ez-stencil
  \once \override NoteHead #'font-size = #-7
  \once \override NoteHead #'font-family = #'sans
  \once \override NoteHead #'font-series = #'bold
  <d f g>4
  \once \override NoteHead #'style = #'cross
  <d f g>4
  \applyOutput #'Voice #mc-squared
  <d f g>4
  <<
    { d8[ es-( fis^^ g] fis2-) }
    \repeat unfold 5 { \applyOutput #'Voice #mc-squared s8 }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
