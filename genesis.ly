my-tuning = \stringTuning <e, a, d g> %% => for example
 

  \header {
 title = "ΓΕΝΕΣΙΣ"
 composer = "'Ετικτε Χαος"
}

  tune = \relative a {
  % Notes go here
  \set TabStaff.minimumFret = #1
  \set TabStaff.restrainOpenStrings = ##t
  \override StringNumber #'transparent = ##t
  e2 a2 d2\0 g2
  %d1 g1 c,8[ d,8] e[ f] g[ a] b[ c]
  %c, d e g a c d\3 e\3 g\2 a\2 a a
}

\score { 
  \new FretBoards 
  \new StaffGroup  <<
  \new Staff  { \clef "bass" << \tune >> }
  \new TabStaff \with { stringTunings = #bass-tuning } 
  \tune 
  >> 
}