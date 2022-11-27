\version "2.22.2"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "小兔子乖乖 (unfinished)"
  subtitle = "Xiǎo tùzi guāi guāi"
}

guitar = \relative c {
  \key g \major
  \clef "treble_8"	
  \time 4/4
  fis' a8 fis8 e4 e 
  a,8[ e'] fis a e4 e
  fis e8 a, g4 g 
  a e'8 a, g a e4 
  
}

textPinYin = \lyricmode {
  Xiǎo tùzi _ guāi guāi
  bǎ _ mén _ kāi kāi
  kuài diǎn _ kāi kāi 
  wǒ yào _ jìn _ lái 
}

text = \lyricmode {
  小 兔子 _ 乖 乖
  把 _ 门 _ 开 开
  快 点 _ 开 开
  我 要 _  进 _ 来 
}

% The guitar and the banjo are transposing instruments, sounding an octave lower than written. Scores for these instruments should use the "treble_8" clef
\score {
  <<
    \new Voice = "voicemelody" { \guitar }
    
    \new Lyrics \lyricsto "voicemelody" \text
    \new Lyrics \with { \override LyricText #'font-size = #-3 } \lyricsto "voicemelody" \textPinYin

    \new TabStaff { \clef "moderntab" \guitar }
  >>
}
