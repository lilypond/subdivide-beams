\version "2.21.0"

notes = \relative c'' {
  \tuplet 3/2 \repeat unfold 12 c32
}

\score {
  <<
    \new Staff \notes
    \new Staff {
      \tupletSpan 8
      \notes
    }
    \new Staff {
      \tupletSpan 16
      \notes
    }
  >>
  \layout {
    \context {
      \Staff
      \omit Clef
      \omit TimeSignature
      \omit StaffSymbol
    }
  }
}

\relative c'' {
  \stopStaff
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \override TextScript.padding = 3
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)

  \tuplet 3/2  {
    c32 ^\markup "baseMoment 1/16"
    \set stemRightBeamCount = 2
    c 
    \set stemLeftBeamCount = 2
    \set stemRightBeamCount = 3
    c
    \set stemRightBeamCount = 1
    \set stemLeftBeamCount = 3
    c
    \set stemLeftBeamCount = 1
    c
    \set stemRightBeamCount = 2
    c
    \set stemLeftBeamCount = 2
    c
    \set stemRightBeamCount = 1
    c
    \set stemLeftBeamCount = 1
    \set stemRightBeamCount = 3
    c 
    \set stemLeftBeamCount = 3
    \set stemRightBeamCount = 2
    c 
    \set stemLeftBeamCount = 2
    c c
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

  \tuplet 3/2 8 {
    c32 ^\markup "baseMoment 1/16, tupletSpan 1/8"
    \set stemRightBeamCount = 2
    c 
    \set stemLeftBeamCount = 2
    \set stemRightBeamCount = 3
    c 
    \set stemRightBeamCount = 2
    \set stemLeftBeamCount = 3
    c 
    \set stemLeftBeamCount = 2
    c c c 
    \set stemRightBeamCount = 2
    c 
    \set stemLeftBeamCount = 2
    \set stemRightBeamCount = 3
    c 
    \set stemRightBeamCount = 2
    \set stemLeftBeamCount = 3
    c 
    \set stemLeftBeamCount = 2
    c c 
  }

  s4
}

{
  \stopStaff
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \tupletSpan 16
  \notes
}
