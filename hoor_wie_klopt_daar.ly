\version "2.22.2"
\header {
  title = "Hoor wie klopt daar"
}

verseI = \lyricmode {
  \set stanza = #"1."
  Hoor wie klopt daar kind -- 'ren, hoor wie klopt daar kind -- 'ren.
  Hoor wie klopt daar zachtjes tegen het raam.
}

verseII = \lyricmode {
  \set stanza = #"2."
}

staffMelody = \relative c {
  \key f \major
  \clef "treble_8"	
  \time 3/4
  \partial 4 c8 c |
  a'8 f f f c c | a' f f f c c |
  g' fis g fis g a |
  \bar "|."
}

\score {
  <<
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

