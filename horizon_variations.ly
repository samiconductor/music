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

        d,1~ | d2 ees2 |
        d1~ | d2 ees2 |

        d1~ | d2 ees2 |
        d1~ | d1 |

        d1~ | d2 ees2 |
        d1~ | d2 ees2 |

        d1~ | d2 ees2 |
        d1~ | d1 |

        <g, bes d>1~ | <g bes d>1
      }

      \new Voice = "melody" {
        \voiceTwo
        bes'1 | bes2. g8 aes8 |
        bes2. aes8 g8 | f1 |
        bes2. aes8 g8 | f2. aes4 |
        bes2. aes8 g8 | f1 |

        \clef "bass"
        bes,8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes
        bes8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes

        bes8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes
        bes8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes

        bes8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes
        bes8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes

        bes8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes
        bes8 g8 bes g bes g bes g
        bes8 aes8 bes aes bes aes bes aes
      }
    >>

    \new Staff {
      \clef "bass"
      \key ees \major

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f>
      <c ees f>8 <c ees f> <c ees f> <c ees f> |

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f>
      <c ees f>8 <c ees f> <c ees f> <c ees f> |

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f>
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f> |

      <g, ees'>8 bes8 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>8 bes8 <aes ees'> bes <aes ees'> bes <aes ees'> bes
      <bes f'>8 ees8 <bes f'> ees <bes f'> ees <bes f'> ees
      <c f>8 ees8 <c f> ees <c f> ees <c f> ees

      <g, ees'>8 bes8 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>8 bes8 <aes ees'> bes <aes ees'> bes <aes ees'> bes
      <bes f'>8 ees8 <bes f'> ees <bes f'> ees <bes f'> ees
      <aes, ees'>8 bes8 <aes ees'> bes <aes ees'> bes <aes ees'> bes

      <g ees'>8 bes8 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>8 bes8 <aes ees'> bes <aes ees'> bes <aes ees'> bes
      <bes f'>8 ees8 <bes f'> ees <bes f'> ees <bes f'> ees
      <c f>8 ees8 <c f> ees <c f> ees <c f> ees

      <g, ees'>8 bes8 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>8 bes8 <aes ees'> bes <aes ees'> bes <aes ees'> bes
      <bes f'>8 ees8 <bes f'> ees <bes f'> ees <bes f'> ees
      <aes, ees'>8 bes8 <aes ees'> bes <aes ees'> bes <aes ees'> bes

      <ees, bes'>1~ | <ees bes'>1
    }
  >>
}
