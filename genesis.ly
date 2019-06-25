\header {
  title = "ΕΝΟΧΗ ΣΙΩΠΗ"
  composer = ""
  tagline  = ""  % removed footer
}
%http://lilypond.org/doc/v2.18/Documentation/notation/predefined-paper-sizes
\paper {
  #(set-paper-size "a4" 'landscape)%extremely careful for landscape punctuation
  system-separator-markup = \slashSeparator

}
%bass-tuning <e,, a,, d, g,> 
%bass-four-string-tuning <e,, a,, d, g,> 
%bass-drop-d-tuning <d,, a,, d, g,> 
%bass-five-string-tuning <b,,, e,, a,, d, g,>
%bass-six-string-tuning <b,,, e,, a,, d, g, c> 
%BASS TUNING SEMITONE DOWN
%http://lilypond.org/doc/v2.19/Documentation/notation/predefined-string-tunings
\makeDefaultStringTuning #'bass-tuning \stringTuning <ees,, aes,, des, ges,>
\markup { \bold{ "Bass Tuning: E"\super\flat--"A"\super\flat"--D"\super\flat--"G"\super\flat } }
zoe_muse = \relative ees,,{
<>^\markup{\bold{Intro}}
d''8 \repeat unfold 14 {d8} d8
\glissando 
\bar"|."
\mark \markup { \box A }
<>^\markup{\bold{x4}}
aes,8 aes8 r8 aes8 b8 b8 r8 b8 bes8 bes8 d2.
fis,8 f8 ees2. 
fis8 f8 ees2.
\bar"|."
\mark \markup { \box B }
ees8-> ees8 r8 ees8 fis8 a8\1 fis des'8\2
fis,8 a8\1 des2. 
ees,8-> ees8 r8 ees8 fis8 a8\1 fis des'8\2
a8 ees8 aes8 ees8 fis'8
\bar"|."
}
\score{
 \header {
  piece = \markup{ \huge \bold{ "ΖΩΗ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      \time 4/4
      \override Score.MetronomeMark.padding = #5
      \tempo "" 4 = 180
      \zoe_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
  \zoe_muse
  }  
>>
%\layout{}
%\midi{}
}