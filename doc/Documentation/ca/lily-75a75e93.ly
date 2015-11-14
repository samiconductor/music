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
\sourcefilename "display-predefined-string-tunings.ly"
\sourcefileline 0
\version "2.16.0"

#(define (filter-instrument instrument-name tuning-alist)
   (filter (lambda (entry)
             (string-prefix? instrument-name
                            (symbol->string (car entry))))
           tuning-alist))

#(define (chord-display tuning-alist-entry)
   (let* ((tuning-symbol (car tuning-alist-entry))
	  (pitches (cdr tuning-alist-entry)))
     (make-music 'EventChord
		 'elements
		 (cons (make-music 'TextScriptEvent
				   'direction 1
				   'text (symbol->string tuning-symbol))
		       (map (lambda (pitch)
			      (make-music 'NoteEvent
					  'duration (ly:make-duration 0 0 1 1)
					  'pitch pitch))
			    pitches)))))

displayInstrumentDefaultTunings =
#(define-music-function (parser location instrument) (string?)
   (let* ((filtered-instruments (filter-instrument instrument defaultStringTunings))
          (display-elements (map chord-display filtered-instruments)))
     (make-music 'SequentialMusic 'elements display-elements)))


\score {
  {
    \new Staff {
      \textLengthOn
      \override Score.RehearsalMark #'self-alignment-X = #LEFT

      \mark \markup {\left-align "Guitar tunings"}
      \clef "treble_8"
      \displayInstrumentDefaultTunings #"guitar"
      \break

      \mark \markup {\left-align "Bass tunings"}
      \clef "bass_8"
      \displayInstrumentDefaultTunings #"bass"
      \break

      \mark \markup {\left-align "Mandolin tunings"}
      \clef "treble"
      \displayInstrumentDefaultTunings #"mandolin"
      \break

      \mark \markup {\left-align "Banjo tunings"}
      \clef "treble_8"
      \displayInstrumentDefaultTunings #"banjo"
      \break

      \mark \markup {\left-align "Ukulele tunings"}
      \clef "treble"
      \displayInstrumentDefaultTunings #"ukulele"
      \clef "alto"
      \displayInstrumentDefaultTunings #"tenor-ukulele"
      \displayInstrumentDefaultTunings #"baritone-ukulele"
      \break

      \mark \markup {\left-align "Orchestral string tunings"}
      \clef "treble"
      \displayInstrumentDefaultTunings #"violin"
      \clef "alto"
      \displayInstrumentDefaultTunings #"viola"
      \clef "bass"
      \displayInstrumentDefaultTunings #"cello"
      \clef "bass_8"
      \displayInstrumentDefaultTunings #"double-bass"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
