\version "2.21.0"

\relative c'' {
  \stopStaff
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \override TextScript.padding = 3
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \tuplet 3/2  {
    c32 ^\markup "Default (baseMoment 1/8)"
    c c c  c c c c  c c c c
  }
  s4

  \tuplet 3/2  {
    c32 ^\markup "Correct"
    c c
    \set stemRightBeamCount = 1
    c
    \set stemLeftBeamCount = 1
    c
    \set stemRightBeamCount = 3
    c
    \set stemLeftBeamCount = 3
    c
    \set stemRightBeamCount = 1
    c
    \set stemLeftBeamCount = 1
    c c c c
  }

  s4
}

\relative c'' {
  \stopStaff
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \override TextScript.padding = 3
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  c32 ^\markup "Default (baseMoment 1/16)"
  c
  \tuplet 3/2  {
    c64 c c c  c c c c  c c c c
  }
  c32 c
  s4

  c32 ^\markup "Correct"
  c
  \tuplet 3/2  {
    c64 c c
    \set stemRightBeamCount = 2
    c
    \set stemLeftBeamCount = 2
    c
    \set stemRightBeamCount = 4
    c
    \set stemLeftBeamCount = 4
    c
    \set stemRightBeamCount = 2
    c
    \set stemLeftBeamCount = 2
    c c c c
  }
  c32 c
  s4
}