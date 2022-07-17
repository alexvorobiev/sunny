\version "2.22.2"

\header {
  title = "Sunny"
  composer = "Bobby Hebb"
}

intro = {
  r <d e g b> r8 <d e g b>4. |
  e4.         e8 e2          |

  r4 <d f g b> r8 <d f g b>4. |
  g4. g8 g2 |

  r4 <d e g b> r8 <d e g b>4. |
  c4. c8 c2 |

  r4 <e a cis' e'> r8 <fis a cis' dis'>4. |
  fis4. fis8 b2 |

  \break

  r4 <d e g b> r8 <d e g b>4. |
  e4. e8 e2 |

  r4 <d f g b> r8 <d f g b>4. |
  g4. g8 g2 |

  r4 <d e g b> r8 <d e g b>4. |
  c4. c8 c2 |

  r4 <a, cis e> r8 <a, cis dis>4. |
  fis4. fis8 b2 |

  \bar "||"  \break
}

partAa = {
  <d e g b>8 <d e g b>4. r2 |
  e4. e8 e4 f8 fis8 |

  <f, b, d>2 <f b e'>8 d'8 b8 a8 |
  g4. g8 g2 |

  g4. e8 <b, g>4 e8 b8( |
  c4. c8 c2 |

  b4) <c e a>4 r8 <ees g a d'>4. |
  fis4. fis8 b2 |

  \break

  <d e g b>8 <d e g b>4. r2 |
  e4. e8 e4 e'8 ees'8 |

  <a c f>4. b8 <f b e'>8 d'8 b8 a8 |
  d'4. d'8 g2 |

  <b, e g>4 e4 <b, e g>4 a8 b8( |
  c4. c8 c2 |

  b4) <a, c e>4 <a,  dis>4 g8 a8 |
  fis4. fis8 b4 r4 |

  \break

}

partAb = {
  <d e g b>8 <d e g b>4. r2 |
  e4. e8 e4 f8 fis8 |

  <f, b, d>2 <f b e'>8 d'8 b8 g8 |
  g4. g8 g2 |

  <e a>4 <e g>2 a8 b8( |
  c4. c8 c2 |

  b4) <c e a>4 r8 <ees g a d'>4. |
  fis4. fis8 b2 |

  \break

  <d e g b>8 <d e g b>4. r2 |
  e4. e8 e4 e'8 ees'8 |

  <a c f>2 <f' b e>8 d'8 b8 g8 |
  d'4. d'8 g2 |

  <e a>4 <e g>4 g8 a8 g8 b8( |
  c4. c8 c2 |

  b4) <a, c e>4 <a, dis>4. a8 |
  fis4. fis8 b2 |

  \break

}

partBa = {
  <d g b>8 g8 a8 <d g>8( <d g>4) a8 g8 |
  e4.             e8      e2             |

  <c f b>8 g8 a8 <b, f g>8( <b, f g>2)   |
  d4.           g8 g4               d8 des8 |

  <c e b>8 g8 a8 <c e g>8( <c e g>4) a |
  c4.              c8         c2           |

  <c ees g b>4 a4 <a, c ees g>2 |
  f4.            f8 f2            |

  \break

  <c e fis b>8 <c e fis b>4. <c e fis b>8 <c e fis b>4. |
  fis4.                 fis8 fis4                       a8 bes8 |

  <a, dis fis a>4 r4 <c ees g>4 a4  |
  b4-\staccato     r4 f2            |

  g8 <b, d e>4. <g, c>2 |
  e4.          e8 e2   |

  <g, cis>2   <g, c>2 |
  e4.     e8 e2     |

  \bar "||" \break
}

partBb = {
  <d g b>4 a8 <d g>8( <d g>4.) a8  |
  e4.             e8      e2             |

  <c f b>4 a8 <b, f g>8( <b, f g>4.) a8 |
  d4.           cis8 cis2           |

  <c e b>4 a8 <b, e g>8( <b, e g>2)  |
  c4.              c8         c2           |

  <c ees g b>8 <c ees g a>4 <c ees g>8( <c ees g>2) |
  f4.            f8 f2            |

  \break

  <c e fis b>8 <c e fis b>4. <c e fis b>8 <c e fis b>4. |
  fis4.                 fis8 fis4                       a8 bes8 |

  <a, dis fis a>4 r4 g4 a4  |
  b4-\staccato     r4 r2            |

  g8 <b, d e>4. r8 <b, d e g>4. |
  e4.          e8 e2   |

  <bes d e g>8 <bes d e g>8 <bes d e g>8 <bes d e g>8 <bes d e g>8 <bes d e g>8 <bes d e g>4-\staccato |
  c'8 c'8 c'8 c'8 c'8 c'8 c'4-\staccato     |

  \bar "||" \break
}

\parallelMusic rh,lh {
  \intro
  \partAa
  \partBa
  \partAb
  \partBb
  \key f \minor
  \transpose e f \partAa
  \transpose e f \partBa
  \key fis \minor
  \transpose e fis \partAb
  \transpose e fis \partBb
}

\score {
  \new PianoStaff <<
                                % \chords { e1:m }
                                % \new ChordNames {
                                % \set chordChanges = ##t
                                % \chordmode { e1:m g1:m }
                                % }

    \new Staff {
      \clef "treble" \key e \minor
      \fixed c' {
        \rh
      }
    }

    \new Staff {
      \clef "bass" \key e \minor
      \fixed c, {
        \lh
      }
    }
  >>

                                % \midi {}
}