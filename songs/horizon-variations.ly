\version "2.16.2"

\header {
  title = "Horizon Variations"
  composer = "Max Richter"
}

\relative c' {

  \new PianoStaff <<

    \new Staff <<
      \key ees \major

      \tempo 4 = 42

      \new Voice = "accent" {
        \voiceOne
        d'2. ees4 | d2. ees4 |
        d2. ees4 | <bes d>1 |

        d2. ees4 | <bes d>2. ees4 |
        d2. ees4 | <bes d>1 |

        d,2. ees4 | d2. ees4 |
        d2. ees4 | d1 |

        d2. ees4 | d2. ees4 |
        d2. ees4 | d1 |

        <g, bes d>1 |
      }

      \new Voice = "accompany" {
        \voiceTwo
        bes'1 | bes2. g8 aes8 |
        bes2. aes8 g8 | f1 |
        bes2. aes8 g8 | f2 r2 |
        bes2. aes8 g8 | f1 |

        \clef "bass"
        bes,16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes
        bes16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes

        bes16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes
        bes16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes

        bes16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes
        bes16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes

        bes16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes
        bes16 g16 bes g bes g bes g
        bes16 aes16 bes aes bes aes bes aes
      }
    >>

    \new Staff {
      \clef "bass"
      \key ees \major

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees g>8 <bes ees g> <bes ees g> <bes ees g>
      <c ees f>8 <c ees f> <c ees f> <c ees f> |

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f>
      <c ees g>8 <c ees g> <c ees aes> <c ees aes> |

      <g bes ees>8 <g bes ees> <g bes ees> <g bes ees>
      <aes bes ees>8 <aes bes ees> <aes bes ees> <aes bes ees> |
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f>
      <bes ees f>8 <bes ees f> <bes ees f> <bes ees f> |

      <g, ees'>16 bes16 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>16 bes16 <aes ees'> bes <aes ees'> bes <aes ees'> bes |
      <bes f'>16 ees16 <bes f'> ees <bes f'> ees <bes f'> ees
      <c f>16 ees16 <c f> ees <c f> ees <c f> ees |

      <g, ees'>16 bes16 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>16 bes16 <aes ees'> bes <aes ees'> bes <aes ees'> bes |
      <bes f'>16 ees16 <bes f'> ees <bes f'> ees <bes f'> ees
      <aes, ees'>16 bes16 <aes ees'> bes <aes ees'> bes <aes ees'> bes |

      <g ees'>16 bes16 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>16 bes16 <aes ees'> bes <aes ees'> bes <aes ees'> bes |
      <bes f'>16 ees16 <bes f'> ees <bes f'> ees <bes f'> ees
      <c f>16 ees16 <c f> ees <c f> ees <c f> ees |

      <g, ees'>16 bes16 <g ees'> bes <g ees'> bes <g ees'> bes
      <aes ees'>16 bes16 <aes ees'> bes <aes ees'> bes <aes ees'> bes |
      <bes f'>16 ees16 <bes f'> ees <bes f'> ees <bes f'> ees
      <aes, ees'>16 bes16 <aes ees'> bes <aes ees'> bes <aes ees'> bes |

      <ees, bes'>1 |
    }
  >>
}
