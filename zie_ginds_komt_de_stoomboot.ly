\version "2.22.2"
\header {
  title = "Zie ginds komt de stoomboot"
}

verseI = \lyricmode {
  \set stanza = #"1."
  Zie ginds komt de stoom -- boot uit Span -- je weer aan.
  Hij brengt ons Sint Ni -- kolaas, ik zie hem al staan.
  Hoe hup -- pelt zijn paard -- je het dek op en neer,
  hoe waai -- e -- n d -- e wim -- pels al heen en al weer.
}

verseII = \lyricmode {
  \set stanza = #"2."
  Zijn knecht staat te lach -- en en roept ons reeds toe,
  wie zoet is krijgt lek -- kers, wie stout is de roe.
  Oh lie -- ve Sint Ni -- kolaas, kom ook eens bij mij,
  en rij to -- ch ni -- et stil -- etjes ons huis -- je voor -- bij.
}

theChords = \chordmode { 
  \time 3/4
  \set chordChanges = ##t
  s4 |
  g2. | d2. | d2.:7 | g2. |
  g2. | d2. | d2.:7 | g2. |
  d2. | g2. | c2. | d2. |
  g2. | d2. | d2.:7 | g2. |
}

staffMelody = \relative c {
  \key e \minor
  \clef "treble_8"	
  \time 3/4
  \partial 4 d4 |
  g g b | a a c | f, f a | g2
  d4 | g g b | a a c | f, f a | g2
  d'4 | a a d | b b d | c c b | a2
  d,4 | g g8 a b c | d4 b g | c a f | g2
  \bar "|."
}

\score {
  <<
    \context ChordNames { \theChords }
    \context FretBoards { \theChords }
    \new Staff {
      \context Voice = "voiceMelody" { \staffMelody }
    }
    \new Lyrics = "lyricsI" {
      \lyricsto "voiceMelody" \verseI
    }
    \new Lyrics = "lyricsII" {
      \lyricsto "voiceMelody" \verseII
    }
  >>

  \layout { }
}

