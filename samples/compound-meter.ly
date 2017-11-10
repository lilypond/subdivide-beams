\version "2.21.0"

\relative c'' {
  \stopStaff
  \omit Staff.Clef
  \compoundMeter #'((2 4) (5 32))
  \set baseMoment = #(ly:make-moment 1/32)
  \set beatStructure = #'(8 8 2 3)
  e32 
  \set stemRightBeamCount = 2
  e 
  \set stemLeftBeamCount = 2
  e 
  \set stemRightBeamCount = 1
  e 
  \set stemLeftBeamCount = 1
  e 
  \set stemRightBeamCount = 2
  e 
  \set stemLeftBeamCount = 2
  e e
  e32 
  \set stemRightBeamCount = 2
  e 
  \set stemLeftBeamCount = 2
  e 
  \set stemRightBeamCount = 1
  e 
  \set stemLeftBeamCount = 1
  e 
  \set stemRightBeamCount = 2
  e 
  \set stemLeftBeamCount = 2
  e e
  e32 [ 
  \set stemRightBeamCount = 2
  e 
  \set stemLeftBeamCount = 2
  e e e ]
}