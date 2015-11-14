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
\sourcefilename "ancient-notation-template----modern-transcription-of-mensural-music.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.16.0"

\header {
%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidoces = "
Al transcribir música mensural, es útil un «incipit» al compienzo
de la pieza para indicar la tonalidad y el tempo
originales. Aunque los músicos actuales están acostumbrados a las
barras de compás para reconocer con más facilidad los patrones
rítmicos, durante el período de la música mensural aún no se
habíen inventado las líneas divisorias; de hecho, la medida solía
cambiar a cada pocas notas. Como compromiso, a menudo las líneas
divisorias se imprimen entre los pentagramas en vez de hacerlo
encima de ellos.

"
  doctitlees = "Plantilla de notación de música antigua (transcripción moderna de música mensural)"


%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a
  texidocit = "
Quando si trascrive musica mensurale, può essere utile inserire all'inizio del
pezzo un incipit che indichi l'intonazione e il tempo originali. Le stanghette
di battuta, a cui i musicisti di oggi sono abituati e che aiutano a riconoscere
più velocemente gli schemi ritmici, durante l'epoca della musica mensurale non
erano ancora state introdotte; infatti il metro cambiava spesso ogni poche
note.  Come compromesso, le stanghette vengono spesso inserite tra i righi
invece che al loro interno.

"
  doctitleit = "Modello per notazione antica -- trascrizione moderna di musica mensurale"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Bei der Transkription von Mensuralmusik ist es oft erwünscht, ein
Incipit an den Anfang des Stückes zu stellen, damit klar ist, wie
Tempo und Schlüssel in der Originalnotation gesetzt waren. Während
heutzutage Musiker an Taktlinien gewöhnt sind, um Rhythmen schneller
zu erkennen, wurden diese in der Mensuralmusik nicht verwendet.
Tatsächlich ändern sich die Rhythmen auch oft alle paar Noten. Als
ein Kompromiss werden die Notenlinien nicht auf dem System, sondern
zwischen den Systemen geschrieben.
"

doctitlede = "Vorlage für Alte Notation -- moderne Transkription von Mensuralmusik"


%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Lorsque l'on transcrit de la musique mensurale, un @emph{incipit} permet
d'indiquer la tonalité et le tempo d'origine.  Si les musiciens sont de
nos jours habitués aux barres de mesure qui présentent la structure
rythmique d'une œuvre, elles n'étaient pas en vigueur à l'époque où ces
pièces ont été composées, d'autant plus que la @qq{métrique} pouvait
changer au fil des notes.  Un compromis consiste à imprimer des barres
entre les portées plutôt que sur chacune d'elles.

"
  doctitlefr = "Exemples de notation ancienne -- transcription moderne de musique mensurale"

  lsrtags = "ancient-notation, real-music, really-cool, template"

  texidoc = "
When transcribing mensural music, an incipit at the beginning of the
piece is useful to indicate the original key and tempo. While today
musicians are used to bar lines in order to faster recognize rhythmic
patterns, bar lines were not yet invented during the period of mensural
music; in fact, the meter often changed after every few notes. As a
compromise, bar lines are often printed between the staves rather than
on the staves.

"
  doctitle = "Ancient notation template -- modern transcription of mensural music"
} % begin verbatim


global = {
  \set Score.skipBars = ##t

  % incipit
  \once \override Score.SystemStartBracket #'transparent = ##t
   % Set tight spacing
  \override Score.SpacingSpanner #'spacing-increment = #1.0
  \key f \major
  \time 2/2
  \once \override Staff.TimeSignature #'style = #'neomensural
  \override Voice.NoteHead #'style = #'neomensural
  \override Voice.Rest #'style = #'neomensural
  \set Staff.printKeyCancellation = ##f
  \cadenzaOn % turn off bar lines
  \skip 1*10
  \once \override Staff.BarLine #'transparent = ##f
  \bar "||"
  \skip 1*1 % need this extra \skip such that clef change comes
            % after bar line
  \bar ""

  % main
  \cadenzaOff % turn bar lines on again
  \once \override Staff.Clef #'full-size-change = ##t
  \set Staff.forceClef = ##t
  \key g \major
  \time 4/4
  \override Voice.NoteHead #'style = #'default
  \override Voice.Rest #'style = #'default

  % Setting printKeyCancellation back to #t must not
  % occur in the first bar after the incipit.  Dto. for forceClef.
  % Therefore, we need an extra \skip.
  \skip 1*1
  \set Staff.printKeyCancellation = ##t
  \set Staff.forceClef = ##f

  \skip 1*7 % the actual music

  % let finis bar go through all staves
  \override Staff.BarLine #'transparent = ##f

  % finis bar
  \bar "|."
}

discantusNotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = #"Discantus  "

    % incipit
    \clef "neomensural-c1"
    c'1. s2   % two bars
    \skip 1*8 % eight bars
    \skip 1*1 % one bar

    % main
    \clef "treble"
    d'2. d'4 |
    b e' d'2 |
    c'4 e'4.( d'8 c' b |
    a4) b a2 |
    b4.( c'8 d'4) c'4 |
    \once \override NoteHead #'transparent = ##t c'1 |
    b\breve |
  }
}

discantusLyrics = \lyricmode {
  % incipit
  IV-

  % main
  Ju -- bi -- |
  la -- te De -- |
  o, om --
  nis ter -- |
  ra, __ om- |
  "..." |
  -us. |
}

altusNotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = #"Altus  "

    % incipit
    \clef "neomensural-c3"
    r1        % one bar
    f1. s2    % two bars
    \skip 1*7 % seven bars
    \skip 1*1 % one bar

    % main
    \clef "treble"
    r2 g2. e4 fis g | % two bars
    a2 g4 e |
    fis g4.( fis16 e fis4) |
    g1 |
    \once \override NoteHead #'transparent = ##t g1 |
    g\breve |
  }
}

altusLyrics = \lyricmode {
  % incipit
  IV-

  % main
  Ju -- bi -- la -- te | % two bars
  De -- o, om -- |
  nis ter -- ra, |
  "..." |
  -us. |
}

tenorNotes = {
  \transpose c' c' {
    \set Staff.instrumentName = #"Tenor  "

    % incipit
    \clef "neomensural-c4"
    r\longa   % four bars
    r\breve   % two bars
    r1        % one bar
    c'1. s2   % two bars
    \skip 1*1 % one bar
    \skip 1*1 % one bar

    % main
    \clef "treble_8"
    R1 |
    R1 |
    R1 |
    r2 d'2. d'4 b e' | % two bars
    \once \override NoteHead #'transparent = ##t e'1 |
    d'\breve |
  }
}

tenorLyrics = \lyricmode {
  % incipit
  IV-

  % main
  Ju -- bi -- la -- te | % two bars
  "..." |
  -us. |
}

bassusNotes = {
  \transpose c' c' {
    \set Staff.instrumentName = #"Bassus  "

    % incipit
    \clef "bass"
    r\maxima  % eight bars
    f1. s2    % two bars
    \skip 1*1 % one bar

    % main
    \clef "bass"
    R1 |
    R1 |
    R1 |
    R1 |
    g2. e4 |
    \once \override NoteHead #'transparent = ##t e1 |
    g\breve |
  }
}

bassusLyrics = \lyricmode {
  % incipit
  IV-

  % main
  Ju -- bi- |
  "..." |
  -us. |
}

\score {
  \new StaffGroup = choirStaff <<
    \new Voice =
      "discantusNotes" << \global \discantusNotes >>
    \new Lyrics =
      "discantusLyrics" \lyricsto discantusNotes { \discantusLyrics }
    \new Voice =
      "altusNotes" << \global \altusNotes >>
    \new Lyrics =
      "altusLyrics" \lyricsto altusNotes { \altusLyrics }
    \new Voice =
      "tenorNotes" << \global \tenorNotes >>
    \new Lyrics =
      "tenorLyrics" \lyricsto tenorNotes { \tenorLyrics }
    \new Voice =
      "bassusNotes" << \global \bassusNotes >>
    \new Lyrics =
      "bassusLyrics" \lyricsto bassusNotes { \bassusLyrics }
  >>
  \layout {
    \context {
      \Score

      % no bars in staves
      \override BarLine #'transparent = ##t

      % incipit should not start with a start delimiter
      \remove "System_start_delimiter_engraver"
    }
    \context {
      \Voice

      % no slurs
      \override Slur #'transparent = ##t

      % The command below can be commented out in
      % short scores, but especially for large scores you
      % will typically yield better line breaking and improve
      % overall spacing if you do not comment the command out.

      \remove "Forbid_line_break_engraver"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************