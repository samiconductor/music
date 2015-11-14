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
\sourcefilename "centering-markup-on-note-heads-automatically.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.31
\version "2.16.0"

\header {
%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Des raisons techniques sont à l'origine de la difficulté de centrer des
scripts textuels attachés à des têtes de note, ce qui n'est pas le cas
des articulations.

Plutôt que de procéder par tâtonnement, voici comment élaborer un
graveur en Scheme, chargé de redéfinir le parent horizontal de chaque
@emph{markup} sur un empilement de notes (un @code{NoteColumn}).  Il
permet aussi au texte de suivre les têtes ayant été décalées par un
@code{force-hshift}.
"
  doctitlefr = "Centrage automatique d'un @emph{markup} sur la tête de note"

  lsrtags = "text, tweaks-and-overrides, contexts-and-engravers"
  texidoc = "
For technical reasons, text scripts attached to note heads cannot
easily be centered on a note head's width, unlike articulations.

Instead of using trial-and-error offset tweaks, this snippet uses a
Scheme engraver to reset the horizontal parent of each markup to a
@code{NoteColumn}.  This also allows text to follow note heads which have
been shifted via @code{force-hshift}.
"
  doctitle = "Centering markup on note heads automatically"
} % begin verbatim


#(define (Text_align_engraver ctx)
  (let ((scripts '())
        (note-column #f))
    (make-engraver
     (acknowledgers
      ((note-column-interface trans grob source)
       ;; cache NoteColumn in this Voice context
       (set! note-column grob))
      ((text-script-interface trans grob source)
       ;; whenever a TextScript is acknowledged,
       ;; add it to `scripts' list
       (set! scripts (cons grob scripts))))
     ((stop-translation-timestep trans)
      ;; if any TextScript grobs exist,
      ;; set NoteColumn as X-parent
      (for-each (lambda (script)
		  (set! (ly:grob-parent script X) note-column))
		scripts)
      ;; clear scripts ready for next timestep
      (set! scripts '())))))

\layout {
  \context {
    \Voice
    \consists #Text_align_engraver
    \override TextScript #'X-offset =
      #ly:self-alignment-interface::aligned-on-x-parent
    \override TextScript #'self-alignment-X = #CENTER
  }
}

\new Staff <<
  \relative c'' {
    \override NoteColumn #'force-hshift = #3
    c1-\markup { \arrow-head #Y #DOWN ##t }
  }
  \\
  \relative c' {
    a4 a-\markup { \huge ^ } a a
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
