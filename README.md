# Beam Subdivisions In LilyPond

This repository serves as a resource for a reimplementation of the
`beaming-pattern` code in [GNU LilyPond](http://lilypond.org).

The main document [beam-subdivisions.md](beam-subdivisions.md) can be compiled
to a PDF file using Pandoc and LaTeX, but it is quite nicely displayed in the
Github web interface as well. It provides a conceptual assessment of the topic
of beaming patterns, specifically beam subdivisions. This is unfortunately not
properly done in LilyPond (although it's already better than most of the
competitors).

The main document in this repository is intended to serve as a space to refine
the concepts and then to produce a plan for an implementation in LilyPond. An
earlier attempt at this (12/15 - 01/16) wasn't completed, and reinvestigating
the material and the subject led to the conclusion that the code should be
reconsidered from scratch.

This repository is intended to also serve as a sandbox to prepare regtests and
models (manually tweaked correct examples that show what LilyPond should produce
by default).

It is intended as a space for discussion, so please get in touch when you are
interested in the topic of beaming.
