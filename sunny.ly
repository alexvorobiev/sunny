\version "2.22.2"

\header {
  title = "Sunny"
  composer = "Bobby Hebb"
}

\new PianoStaff <<
  \new Staff {
    \clef "treble" \key e \minor
    \relative {
      r <d' e g b> r8 <d e g b>4. |
      r4 <d f g b> r8 <d f g b>4. |
      r4 <d e g b> r8 <d e g b>4. |
      r4 <e a cis e> r8 <fis a cis dis>4. | \break

      r4 <d' e g b> r8 <d e g b>4. |
      r4 <d f g b> r8 <d f g b>4. |
      r4 <d e g b> r8 <d e g b>4. |
      r4 <a, cis e> r8 <a cis dis>4. \bar "||" \break

    }
  }

  \new Staff {
    \clef "bass" \key e \minor
    \relative {
      e,4. e8 e2 |
      g4. g8 g2 |
      c,4. c8 c2 |
      fis4. fis8 b2 | \break

      e,4. e8 e2 |
      g4. g8 g2 |
      c,4. c8 c2 |
      fis4. fis8 b2 \bar "||" \break


    }
  }
>>
