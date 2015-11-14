\version "2.16.2"

\header {
  title = "Horizon Variations"
  composer = "Max Richter"
}

\relative c' {

  \new PianoStaff <<

    \new Staff <<
      \key ees \major

      \new Voice = "accent" {
        \voiceOne
        d'2. ees4 | d2. ees4 |
        d2. ees4 | <bes d>1 |
        d2. ees4 | <bes d>2. ees4 |
        d2. ees4 | <bes d>1 |
      }

      \new Voice = "melody" {
        \voiceTwo
        bes1 | bes2. g8 aes8 |
        bes2. aes8 g8 | f1 |
        bes2. aes8 g8 | f1 |
        bes2. aes8 g8 | f1 |
      }
    >>

    \new Staff {
      \clef "bass"
      \key ees \major

      <g, ees'>8 <g ees'> <g ees'> <g ees'>
      <aes ees'>8 <aes ees'> <aes ees'> <aes ees'> |
      <bes d ees>8 <bes d ees> <bes d ees> <bes d ees>
      <c ees>8 <c ees> <c ees> <c ees> |

      <g ees'>8 <g ees'> <g ees'> <g ees'>
      <aes ees'>8 <aes ees'> <aes ees'> <aes ees'> |
      <bes d ees>8 <bes d ees> <bes d ees> <bes d ees>
      <aes ees'>8 <aes ees'> <aes ees'> <aes ees'> |

      <g ees'>8 <g ees'> <g ees'> <g ees'>
      <aes ees'>8 <aes ees'> <aes ees'> <aes ees'> |
      <bes d ees>8 <bes d ees> <bes d ees> <bes d ees>
      <c ees>8 <c ees> <c ees> <c ees> |

      <g ees'>8 <g ees'> <g ees'> <g ees'>
      <aes ees'>8 <aes ees'> <aes ees'> <aes ees'> |
      <bes d ees>8 <bes d ees> <bes d ees> <bes d ees>
      <bes d ees>8 <bes d ees> <bes d ees> <bes d ees> |
    }
  >>
}
