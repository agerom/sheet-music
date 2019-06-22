
\header {
  title = "test"
  composer = "xaxax"
}
music = \relative c,, {
  ees4 fes geses ges
  aes4 beses bes ces 
  des4 eeses ees fes
  ges4 aeses aes bes ||
}
\makeDefaultStringTuning #'bass-tuning \stringTuning <ees,, aes,, des, ges,>

<<
  \new Staff {
    \clef "bass_8"
    \key c \minor
    \time 4/4
    \music

  }
  \new TabStaff \with {
    %tablatureFormat = #fret-letter-tablature-format
     stringTunings = #bass-tuning
  }
  {
    \music
  }
>>
\layout { }
\midi { }
