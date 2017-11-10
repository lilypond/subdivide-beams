\version "2.21.0"

\relative c'' {
  \stopStaff
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \once \tupletUp
  \once \override TupletBracket.bracket-visibility = ##t
  \tuplet 5/4  {
    c32 
    \set stemRightBeamCount = 2
    c 
    \set stemLeftBeamCount = 2
    c 
    \set stemRightBeamCount = 2
    c
      \tuplet 3/2 {
        \set stemLeftBeamCount = 2
        c64 c c
        \set stemRightBeamCount = 2
        c 
        \set stemLeftBeamCount = 2
        c c c
        \set stemRightBeamCount = 2
        c 
        \set stemLeftBeamCount = 2
        c c c
        \set stemRightBeamCount = 2
        c
      }
    \set stemLeftBeamCount = 2
    c32 c
  }
  s4

}