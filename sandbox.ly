
\header {
  title = "Testing"
  composer = "F.Art"
}
music = \relative c,, {
  ees4 fes geses ges
  aes4 beses bes ces 
  des4 eeses ees fes
  ges4 aeses aes beses r1 r1
  ees,, aes des ges
  \bar "|."
  c,8[ d8] e[ f] g[ a] b[ c]
  c d e g a c d,\4 e\3 g\2 a\2  a r8
  ges,\4 ges\3 ges\2 ges\1 %overridin
}
\makeDefaultStringTuning #'bass-tuning \stringTuning <ees,, aes,, des, ges,>

\score{
\new StaffGroup
<<
  \new Staff {
    \clef "bass_8"
    \key c \minor
    \time 4/4
    \tempo "slow" 4 = 100
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
\midi{}
}
