\version "2.21.0"

\relative c'' {
  \stopStaff
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \override TextScript.padding = 3
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \tuplet 6/4  {
    c32 ^\markup "Default (baseMoment 1/8)"
    c c c  c c c c  c c c c
  }
  s4

  \tuplet 6/4  {
    c32 ^\markup "Correct"
    \set stemRightBeamCount = 2
    c
    \set stemLeftBeamCount = 2
    c
    \set stemRightBeamCount = 2
    c
    \set stemLeftBeamCount = 2
    c
    c
    c
    \set stemRightBeamCount = 2
    c
    \set stemLeftBeamCount = 2
    c
    \set stemRightBeamCount = 2
    c
    \set stemLeftBeamCount = 2
    c c
  }

  s4
}

%{
    \set stemRightBeamCount = 1
    \set stemLeftBeamCount = 1
    \set stemRightBeamCount = 3
    \set stemLeftBeamCount = 3
    \set stemRightBeamCount = 1
    \set stemLeftBeamCount = 1
%}

\relative c'' {
  \stopStaff
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \tupletSpan 16
  \tuplet 12/8 4 \repeat unfold 12 c32
}