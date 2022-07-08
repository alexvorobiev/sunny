\version "2.22.2"

\header {
  title = "Sunny"
  composer = "Bobby Hebb"
}

intro = {
  r <d' e g b> r8 <d e g b>4. |
  e,4.         e8 e2          |

  r4 <d f g b> r8 <d f g b>4. |
  g4. g8 g2 |

  r4 <d e g b> r8 <d e g b>4. |
  c,4. c8 c2 |

  r4 <e a cis e> r8 <fis a cis dis>4. |
  fis4. fis8 b2 |

  \break

  r4 <d e g b> r8 <d e g b>4. |
  e,4. e8 e2 |

  r4 <d f g b> r8 <d f g b>4. |
  g4. g8 g2 |

  r4 <d e g b> r8 <d e g b>4. |
  c,4. c8 c2 |

  r4 <a cis e> r8 <a cis dis>4. |
  fis4. fis8 b2 |

  \bar "||"  \break
}

partA = {

  <d e g b>8 <d e g b>4. r2 |
  e,4. e8 e4 f8 fis8 |

  <f, b d>2 <f' b e>8 d'8 b8 a8 |
  g4. g8 g2 |

  g4. e8 <b g'>4 e8 b'8( |
  c,4. c8 c2 |

  b4) <c, e a>4 r8 <ees g a d>4. |
  fis4. fis8 b2 |

  \break

  <d e g b>8 <d e g b>4. r2 |
  e,4. e8 e4 e'8 ees8 |

  <a c f>4. b'8 <f b e>8 d'8 b8 a8 |
  d4. d8 g,2 |

  <b, e g>4 e4 <b e g>4 a'8 b8( |
  c,4. c8 c2 |

  b4) <a, c e>4 <a dis>4 g'8 a8 |
  fis4. fis8 b4 r4 |

}

\parallelMusic rh,lh {
  \intro
  \partA
}

\new PianoStaff <<
                                % \chords { e1:m }
                                % \new ChordNames {
                                % \set chordChanges = ##t
                                % \chordmode { e1:m g1:m }
                                % }

  \new Staff {
    \clef "treble" \key e \minor
    \relative c {
      \rh
    }
  }

  \new Staff {
    \clef "bass" \key e \minor
    \relative c {
      \lh
    }
  }
>>
