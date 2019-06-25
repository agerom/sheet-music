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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ADD music notes and you will be amazed %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ADD music notes and you will be amazed %%%%%%%%%%%%
%%%%%%
genesis_muse = \relative ees,,{
%main theme [0:00-0:23]
\mark \markup {\box A}
<>^\markup{\bold{x2}}
ges8-> geses8 r4
ges8-> geses8 r4 
ges8-> geses8 r8
\deadNote aes8
bes4-> ces8 aes8  
%1st variation
ges8-> geses8 r4
ges8-> geses8 r4 
ges8-> geses8 r8
ees8 ees4-> ees8 ees8  
%again!!!
ges8-> geses8 r4
ges8-> geses8 r4 
ges8-> geses8 r8
\deadNote aes8
bes4-> ces8 aes8  
%2nd variation
ges8-> geses8 r4
ges8-> geses8 r4 
ges8-> geses8 r8
ees8 \glissando  f4\1  f8\1 f8\1
\bar"|."

%verse@[0:24-0:46]
\mark \markup { \box B }
<>^\markup{\bold{x4}}
\repeat unfold 24 { bes16 }
r8 eeses8 ees8-> eeses8
\repeat unfold 24 { ces16 }
r8 ces8 ces'8-"P" ces8-"P"
\bar"|."

<>_\markup{2\box \bold {A}}s1
<>_\markup{4\box \bold {B}}s1

\mark \markup { \box C }
<>^\markup{\bold{x4}}
%verse2 +solo @[1:33]
geses,8-> ees8 geses8 ees8
geses8-> ees8 geses8. ees16
geses8-> ees8 geses8 ees8
geses8-> ges8 ces4\bendAfter #+4 

geses8-> ees8 geses8 ees8
geses8-> ees8 geses8. ees16
geses8-> ees8 geses8 ees8
geses8-> ges8 ees4 
\bar"|."

<>_\markup{2\box \bold {A}}s1
<>_\markup{4\box \bold {B}}
s2\repeat unfold 4 { ces'16 }
ges8-> geses8->
\bar"|."
}


punk_n_glam_muse = \relative des,,{
%[0:00]-[0:26
\mark \markup { \box A }
<>^\markup{\bold{x8}}
des'4.->  r16 \repeat unfold 6 { des16 }
e16 des16 ces16 
\repeat unfold 16 {eeses16}
\bar"|."
\mark \markup { \box B }
<>^\markup{\bold{x4}}

ees,8\staccato ees8\staccato r8 ees8 fis4. -> a8~a4. ees8 fis8 a4. 
ees8\staccato ees8\staccato r8 ees8 fis4.-> a8~a4. bes8 a8 eeses'4.
\bar"|."
<>_\markup{8\box \bold {A}}s1
<>_\markup{4\box \bold {B}}s1

\mark \markup { \box C }
<>^\markup{\bold{x8}}

\repeat unfold 7 {fis,8}
fis16 eeses'16~eeses8 
des8 ces8 bes8 aeses8 aeses8 aeses8 aeses8
\bar"|."
<>_\markup{8\box \bold {A}}s1
<>_\markup{6\box \bold {B}}s1
ees1->~ees1
\bar"|."
}

zoe_muse=\relative ees,,{
<>^\markup{\bold{Intro}}
d''8 \repeat unfold 14 {d8} d8\glissando 
\mark \markup { \box A }
\bar"|."
<>^\markup{\bold{x4}}
aes,8 aes8 r8 aes8 b8 b8 r8 b8 bes8 bes8 d2.
fis,8 f8 ees2. fis8 f8 ees2.
\bar"|."

\mark \markup { \box B }
ees8 ees8 r8 ees8 fis8 a8\1 fis des8

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END OF NOTES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END OF NOTES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END OF NOTES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%ΓΕΝΕΣΙΣ %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
 \header {
  piece = \markup{ \huge\bold{ "ΓΕΝΕΣIΣ"} }
%  piece = \markup { "Concerto in D" \flat "Major" }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      %\key dis \minor %naaah 
     
      \time 4/4
      \override Score.MetronomeMark.padding = #5
      \tempo "" 4 = 165 
      \genesis_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \genesis_muse
  }  
>>
\layout{}
%\midi{}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% PUNK ΚΑΙ ΠΡΟΒΟΛΗ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pageBreak
\score{
 \header {
  piece = \markup{  \huge \bold{ "PUNK & ΠΡΟΒΟΛΗ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key des \minor
      \time 4/4
      \tempo  ""4 = 160
      \override Score.MetronomeMark.padding = #5
      \punk_n_glam_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \punk_n_glam_muse
  }  
>>
%\layout{}
%\midi{}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%ZOE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%{

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% ΘΑΛΑΜΟΣ 9%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
 \header {
  piece = \markup{\huge \bold{"ΘΑΛΑΜΟΣ 9"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key des \minor
      \time 4/4
      %\tempo "slow" 4 = 100
      \punk_n_glam_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \punk_n_glam_muse
  }  
>>
\layout{}
\midi{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%ΜΑΥΡΟ ΦΟΝΤΟ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
 \header {
  piece = \markup{ \huge \bold{"ΜΑΥΡΟ ΦΟΝΤΟ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key des \minor
      \time 4/4
      \tempo "slow" 4 = 100
      \punk_n_glam_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \punk_n_glam_muse
  }  
>>
\layout{}
\midi{}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%ΤΕΙΧΗ ΣΙΩΠΗΣ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
 \header {
  piece = \markup{ \huge\bold{"ΤΕΙΧΗ ΣΙΩΠΗΣ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key des \minor
      \time 4/4
      \tempo "slow" 4 = 100
      \punk_n_glam_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \punk_n_glam_muse
  }  
>>
\layout{}
\midi{}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%ΚΡΑΥΓΕΣ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
 \header {
  piece = \markup{\huge \bold{"ΚΡΑΥΓΕΣ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key des \minor
      \time 4/4
      \tempo "slow" 4 = 100
      \punk_n_glam_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \punk_n_glam_muse
  }  
>>
\layout{}
\midi{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%ΠΛΑΝΩΜΕΝΕΣ ΣΧΣΕΙΣ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
 \header {
  piece = \markup{ \huge\bold{"ΠΛΑΝΩΜΕΝΕΣ ΣΧΕΣΕΙΣ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key des \minor
      \time 4/4
      \tempo "slow" 4 = 100
      \punk_n_glam_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \punk_n_glam_muse
  }  
>>
\layout{}
\midi{}
}

%}











%Hammer on and pull off
%Hammer-on and pull-off can be obtained using slurs.

%\new TabStaff {
%  \relative c' {
%    d4( e\2)
%    a( g)
%  }
%}

