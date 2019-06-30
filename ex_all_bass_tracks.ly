\version "2.18.2"

\header {
  title = "ΕΝΟΧΗ ΣΙΩΠΗ"
  composer = ""
  tagline  = ""  % removed footer
}
%http://lilypond.org/doc/v2.18/Documentation/notation/predefined-paper-sizes
\paper {
    indent = 0\mm

  #(set-paper-size "a4" 'landscape)%extremely careful for landscape punctuation
  system-separator-markup = \slashSeparator
  scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #5 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
      }
    }
}
\layout { 
  \omit Voice.StringNumber 
  \override Score.MetronomeMark.direction = #UP
}
%bass-tuning <e,, a,, d, g,> 
%bass-four-string-tuning <e,, a,, d, g,> 
%bass-drop-d-tuning <d,, a,, d, g,> 
%bass-five-string-tuning <b,,, e,, a,, d, g,>
%bass-six-string-tuning <b,,, e,, a,, d, g, c> 
%BASS TUNING SEMITONE DOWN
%http://lilypond.org/doc/v2.19/Documentation/notation/predefined-string-tunings
\makeDefaultStringTuning #'bass-tuning \stringTuning <ees,, aes,, des, ges,>
\markup { \bold{ "Bass Tuning: E"\super\flat---"A"\super\flat"---D"\super\flat---"G"\super\flat } }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ADD music notes and you will be amazed %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ADD music notes and you will be amazed %%%%%%%%%%%%
%%%%%%
genesis_muse = \relative ees,,{
%main theme [0:00-0:23]
\mark \markup{\box A}
<>^\markup{\bold{x2}}
ges8\4-> f\4 r4
ges8\4-> f\4 r4 
ges8\4-> f\4 r8
\deadNote aes8\3
bes4\3-> ces8\3 aes8\3  
%1st variation
ges8\4-> f\4 r4
ges8\4-> f\4 r4 
ges8\4-> f\4 r8
ees8\4 ees4\4-> ees8\4 ees8\4  
%again!!!
ges8\4-> f\4 r4\4
ges8\4-> f\4 r4\4 
ges8\4-> f\4 r8\4
\deadNote aes8\3
bes4\3-> ces8\3 aes8\3  

%2nd variation
ges8\4-> f\4 r4
ges8\4-> f\4 r4 
ges8\4-> f\4 r8
ees8\4 \glissando f'4->\4  f8\staccato\4 f8\staccato\4
\bar"||"

%verse@[0:24-0:46]
\mark \markup { \box B }
<>^\markup{\bold{x4}}
\repeat unfold 24 { bes,16\3 }
r8\2 d\2 ees8\2-> d\2
\repeat unfold 24 { ces16\3 }
r8 ces8\3 b'8\1-"P" b8\1-"P"
\bar"||"

<>_\markup{2\box \bold {A}}s1
\bar"||"
<>_\markup{4\box \bold {B}}s1
\bar"||"
\mark \markup { \box C }
<>^\markup{\bold{x4}}
%verse2 +solo @[1:33]
f,8\4-> ees8\4 f8\4 ees8\4
f\4-> ees8\4 f8.\4 ees16\4
f\4-> ees8\4 f8\4 ees8\4
f\4-> ges8\4 b4.\3\bendAfter #+4 

f8\4-> ees8\4 f8\4 ees8\4
f8\4-> ees8\4 f8\4 ees16\4
f8\4-> ees8\4 f8\4 ees8\4
f8\4-> ges8\4 ees4\4 
\bar"||"
<>_\markup{2\box \bold {A}}s1
\bar"||"
<>_\markup{4\box \bold {B}}s2
\repeat unfold 4 { b'16\3 }
ges8\4-> f8\4->
\bar"|."
}


punk_n_glam_muse = \relative des,,{
%[0:00]-[0:26]
\mark \markup { \box A }
<>^\markup{\bold{x8}}
des'8\2->  r8 \repeat unfold 6 { des16\2 }
e8\2 des8\2 ces8\3 
\repeat unfold 16 {eeses16\2}
\bar"||"
\mark \markup { \box B }
<>^\markup{\bold{x4}}

ees,8\4\staccato ees8\4\staccato r8 ees8\4 fis4.\4 -> a8\4~a4. ees8\4 fis8\4 a4.\4 
ees8\4\staccato ees8\4\staccato r8 ees8\4 fis4.\4-> a8\4~a4. b8\3 bes8\3 eeses4.\2
\bar"||"
<>_\markup{8\box \bold {A}}s1
\bar "||"

<>_\markup{4\box \bold {B}}s1
\mark \markup { \box C }
<>^\markup{\bold{x8}}
\bar "||"
\repeat unfold 7 {fis,8\4}
fis16\4 eeses'16\2~eeses8
des8\2 ces8\3 bes8\3 aeses8\4 aeses8\4 aeses8\4 aeses8\4
\bar"||"
<>_\markup{8\box \bold {A}}s1
\bar"||"
<>_\markup{6\box \bold {B}}s1
\bar"||"
ees1\4->~ees1\4\fermata
\bar"|."
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
zoe_muse = \relative ees,,{
<>^\markup{\bold{Intro}}
d''8 \repeat unfold 14 {d8} d8\glissando
\bar"||"  

\mark \markup {\box A}
<>^\markup{\bold{x4}}
aes,8\3 aes8\3 r8 aes8\3 b8\3 b8\3 r8\3 b8\3 bes8\3 bes8\3 d2.\2
fis,8\4 f8\4 ees2.\4 
fis8\4 f8\4 ees2.\4
\bar"||"

\mark \markup {\box B}
<>^\markup{\bold{x2}}

ees8\4-> ees8\4 r8 ees8\4 fis8\4 a8\4 ees4\4  

deses'4.\3 fis,8\4 a8\1 deses4.\3 

ees,8\4-> ees8\4 r8 ees8\4 fis8\4 a8\4 ees4\4  

deses'4.\3 a8\1-> ees8\4 aes8\4 ees8\4 ges8\4

ees8\4-> ees8\4 r8 ees8\4 fis8\4 a8\4 ees4\4  
c'4.\3 fis,8\4 a8\1 c4.\3 
ees,8\4-> ees8\4 r8 ees8\4 fis8\4 a8\4 ees4\4  
c'4.\3 des8\3 c8\3 e4.\2
\bar"||"
<>_\markup{4\box \bold {A}}s1
\bar"||"

<>_\markup{2\box \bold {Β}}s1
\bar"||"
ees,1->\4
<>_\markup{\bold x6}r1
\bar"||"

r2 r8 r8  ees8\4\glissando ees'8\4
\mark \markup {\box C}
<>^\markup{\bold{x8}}
\repeat unfold 8 {ees8\3} 
\repeat unfold 3 {des8\3} 
e4.\3 ges8\2 ees8\3
\bar"||"
<>_\markup{4\box \bold {A}}s1
ges,8\4-> ees2.\4\fermata
\bar"|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

thalamos_muse = \relative ees,,{
\mark \markup {\box A}
<>^\markup{\bold{x8}}
ees1->\4
ges2.\4 a8 aes8  
e1\4 
g1\4 
\bar"||"
ees1\4\fermata  
\bar "||"
<>_\markup{ \bold x4}r1
\bar"||" 
 \repeat unfold 8 {ees4\4}
 \repeat unfold 8 {e4\4}
 \mark \markup {\box B}
 \bar"||"

<>^\markup{\bold{x4}}
 \repeat unfold 16 {ees8\4-> ees8\4}
 \repeat unfold 16 {e8\4-> e8\4}
 \bar"||"
\mark \markup {\box C}
<>^\markup{\bold{x4}}
 \repeat unfold 12 {ees8\4}
 ees8\4 \repeat unfold 4 {ges8\4} 
 d'8\2->\repeat unfold 6{d8\2}
\repeat unfold 3{b8\3} bes8.\3 aes8\3
ges8\4 f8.\4

\bar "||"
<>_\markup{\box \bold {A}}s1
\bar "||"
<>_\markup{\box \bold {B}}s1
\bar "||"
<>_\markup{\box \bold {C}}s1
\bar "||"

ees1\4 ~ees1\4\fermata 
 \bar"|."

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mavro_fonto_muse = \relative ees,,{
<>^\markup{\bold{Intro}}

<>_\markup{\bold {x4}}r1
\bar"||"
bes'2\3 des2\3 
bes2\3 des2\3
b2\3 e,2\4
a2\1 e'2\2
\bar"||"

\mark \markup {\box A}
<>^\markup{\bold{x4}}
bes4\3->bes4\3 des4\3-> des4\3
bes4\3->bes4\3 des4\3-> des4\3
b4\3 b4\3 e,4\4 e4\4
a4\1 a4\1 e'4\2 e4\2
\bar"||"
\mark \markup {\box B}
<>^\markup{\bold{x2}}

fis,4.\4-> fis16\4fis16\4 
a4.\4-> a16\4 a16\4 
c4.\3-> c16\3 c16\3 
cis4.\3-> c16\3 a16\4
\bar "||"
\mark \markup {\box B'}
fis4\4-> fis16.\4fis32->\4fis16.\4fis32\4-> 
a4\4-> a16.\4 a32\4 a16.\4 a32\4
c4\3-> c16.\3 c32\3 c16.\3 c32\3
cis4.\3-> c16\3 a16\4
\bar"||"

<>_\markup{4\box \bold {A}}s1
\bar"||"

<>_\markup{2\box \bold {B}}s1
\bar"||"
\mark \markup {\box C}
<>^\markup{\bold{x4}}

\repeat unfold 2 {ees8-> ees8 ees8 ees8}
\repeat unfold 1 {ees8-> ees8 ees8 ees8}
ees8\4 -(bes'8\3 c8\3 des8\3-) 

c16\3 des16\3 des8\3 des8\3 des8\3
\repeat unfold 2 {ees,8-> ees8 ees8 ees8}
ees8\4 -(ges geses e)
\bar "||"
<>_\markup{\bold 4\box \bold {A}}s1
\bar "||"
<>_\markup{ \bold 4\box \bold {B'}}s1
\bar "||"
cis'4.\3-> c16\3 a16\4
ges2\fermata
\bar "|."

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

kravges_muse = \relative ees,,{
\mark \markup {\box A}
<>^\markup{\bold{x2}}  
c'1\3-(\glissando e\3 \glissando c1\3 \glissando e\3  )
\bar "||"
\mark \markup {\box B}
<>^\markup{\bold{x4}}  
\repeat unfold 16 {c4\3} 
\repeat unfold 32 {e8\2} 
\bar "||"
\mark \markup {\box C}
<>^\markup{\bold{x4}}  
\repeat unfold 8 {ees,\4} 
\repeat unfold 8 {a\3} 
\repeat unfold 8 {aes\3} 
\repeat unfold 8 {b\3} 
\bar "||"

\mark \markup {\box D}
<>^\markup{\bold{x4}}  
\repeat unfold 16 {ees\2} 
\repeat unfold 16 {d\2} 
\bar "||"
\mark \markup {\box E}
<>^\markup{\bold{x2}}  

\repeat unfold 16 {ees,\4} 
\repeat unfold 16 {g\4} 
\bar "||"

<>_\markup{\bold {4} \box C }r1
\bar "||"
<>_\markup{\bold {4} \box D }r1
\bar "||"
\mark \markup {\box F}
<>^\markup{\bold{x8}}
\bar "||"
ees16\4fis16\4a8. r8
ees16\4fis16\4aes8. r8
ees16\4fis16\4a8. r8
ees16\4fis16\4aes8. r8
ees8\4\staccato
ees8\4\staccato
<>^\markup{\bold{x4}} 
\bar"||" 
\mark \markup {\box G}
aes4->\3 \repeat unfold 6 {aes8\3}
b4\3-> \repeat unfold 6 {b8\3}
des4\2-> \repeat unfold 6 {des8\2}
e4\2-> \repeat unfold 6 {e8\2}
\bar "||"
aes,1\3 \fermata
\bar "|."

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

teixi_siopis_muse= \relative ees,,{
\mark \markup {\box A}
<>^\markup{\bold{x2}}    
b'1\3-( f1\4 b1\3 f1\4-)
bes1\3 -( e,1\4 bes'1\3 e,1\4-)
r1\fermata
\bar "||"
\mark \markup {\box B}
<>^\markup{\bold{x4}} 
b'8\3->\repeat unfold 3 {b8\3} b8\3\staccato b8\3\staccato r4
d8\2->\repeat unfold 3 {d8\2} des8\2\staccato des8\2\staccato r4
f,8\staccato->\4f8\staccato\4 r4 
f8\staccato->\4f8\staccato\4 r4 
aes8\staccato->\3aes8\staccato\3 r4 a2\3 
\bar "||"
\mark \markup {\box C}
%<>^\markup{\bold{x...}} 
\repeat unfold 8 {a8\3} 
\repeat unfold 8 {aes8\3} 
\repeat unfold 8 {a8\3} 
\repeat unfold 8 {aes8\3} 
a1\3 -(aes1\3-)
a1\3 -(aes1\3-)
\repeat unfold 8 {a8\3} 
\repeat unfold 8 {aes8\3} 
\repeat unfold 8 {a8\3} 
\repeat unfold 8 {aes8\3} 
\bar "||"
\mark \markup {\box D}
<>^\markup{\bold{x4}} 
\repeat unfold 4 {g4\4} 
\repeat unfold 4 {f4\4} 
\repeat unfold 4 {ees4\4} 
\repeat unfold 4 {e4\4} 
\bar "||"
<>_\markup{\box \bold {C}}s1
\bar"||"
<>_\markup{4\box \bold {D}}s1
\bar"||"
\mark \markup {\box E}
<>^\markup{\bold{x4}} 
\repeat unfold 3 {g4\4->r2 r4}
\repeat unfold 4 {g4\4->}
\repeat unfold 8 {g8\4\staccato}
\repeat unfold 8 {g8\4\staccato}
\repeat unfold 8 {g8\4\staccato}
\repeat unfold 3 {g8\4->}g8\4->\glissando
\repeat unfold 4 {g'8\4->}
<>^\markup{\bold{x4}} 
\bar"||" 
\mark \markup {\box F}
\repeat unfold 3 {c,8\3} r8
\repeat unfold 3 {c8\3} r8

\repeat unfold 3 {aes8\3} r8
\repeat unfold 3 {bes8\3} r8
\repeat unfold 3 {g8\4} r8
\repeat unfold 3 {g8\4} r8
\repeat unfold 3 {g8\4} r8
\repeat unfold 3 {g8\4} r8
\bar"||"
c1->\3\fermata
\bar "|."}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

planomenes_muse = \relative ees,,{
 \mark \markup {\box A}
<>^\markup{\bold{x2}} 
b'8.->\3b16\3b8\3b8\3
b8.->\3b16\3b8\3b8\3
ees8.->\2ees16\2ees8\2ees8\2
ees8.->\2ees16\2ees8\2ees8\2

b8.->\3b16\3b8\3b8\3
b8.->\3b16\3b8\3b8\3
ees8.->\2ees16\2ees8\2ees8\2
ees8.->\2ees16\2ees8\2ees8\2

des8.->\3des16\3des8\3des8\3
des8.->\3des16\3des8\3des8\3
deses8.->\3deses16\3deses8\3deses8\3
deses8.->\3deses16\3deses8\3deses8\3

des8.->\3des16\3des8\3des8\3
des8.->\3des16\3des8\3des8\3
deses8.->\3deses16\3deses8\3deses8\3
deses8.->\3deses16\3deses8\3deses8\3

\bar "||"
 \mark \markup {\box B}
<>^\markup{\bold{x2}} 
bes1\3 
e,1\4
bes'1\3 
des1\2 
d1\2

bes1\3 e,1\4
ees1\4 
aes1\3 
a1\3

\bar "||"
<>_\markup{\bold 2\box{A}}s1
\bar "||"
<>_\markup{\bold 2 \box{B}}s1
\bar "||"
bes8\3 %kolpo
\mark \markup {\box C }
<>^\markup{\bold{x8}} 
\repeat unfold 4 {bes8\3}  r4 aes8->\3\staccato

\repeat unfold 5 {b8\3} r4 aes8->\3\staccato
\bar "||"

<>_\markup{\bold 2 \box{A}}s1
\bar "||"
<>_\markup{\bold 3 \box {B}}s1
\bar "||"
bes1\3->\fermata
\bar "|."

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END OF NOTES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END OF NOTES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END OF NOTES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%ΓΕΝΕΣΙΣ %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
 \header {
  piece = \markup{ \huge\bold{ "ΓΕΝΕΣIΣ"} }
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
      minimumFret = #5
    restrainOpenStrings = ##t
  }
  {
    \genesis_muse
  }  
>>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% MAYRO FONTO%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pageBreak
\score{
 \header {
  piece = \markup{  \huge \bold{ "ΜΑΥΡΟ ΦΟΝΤΟ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      \time 4/4
      \tempo  ""4 = 180
      \override Score.MetronomeMark.padding = #5
        \mavro_fonto_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  {
    \mavro_fonto_muse
  }  
>>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% thalamos 9%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pageBreak
\score{
 \header {
  piece = \markup{  \huge \bold{ "ΘΑΛΑΜΟΣ 9"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      \time 4/4
      \tempo  ""4 = 120
      \override Score.MetronomeMark.padding = #5
        \thalamos_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
    minimumFret = #5
    restrainOpenStrings = ##t
  }
  {
    \thalamos_muse
  }  
>>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% ZOE%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pageBreak
\score{
 \header {
  piece = \markup{  \huge \bold{ "ΖΩΗ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      \time 4/4
      \tempo  ""4 = 160
      \override Score.MetronomeMark.padding = #5
      \zoe_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
    minimumFret = #5
    restrainOpenStrings = ##t
  }
  {
    \zoe_muse
  }  
>>
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
      \key ees \major
      \time 4/4
      \tempo  ""4 = 160
      \override Score.MetronomeMark.padding = #5
      \punk_n_glam_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
     minimumFret = #5
    restrainOpenStrings = ##t
  }
  {
    \punk_n_glam_muse
  }  
>>
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% ΠΛΑΝΩΜΕΝΕΣ ΣΧΕΣΕΙΣ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\pageBreak
\score{
 \header {
  piece = \markup{  \huge \bold{ "ΠΛΑΝΩΜΕΝΕΣ ΣΧΕΣΕΙΣ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      \time 4/4
      \tempo  ""4 = 160
      \override Score.MetronomeMark.padding = #5
        \planomenes_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
     minimumFret = #5
    restrainOpenStrings = ##t
  }
  {
    \planomenes_muse
  }  
>>
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% ΤΕΙΧΗ ΣΙΩΠΗΣ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pageBreak
\score{
 \header {
  piece = \markup{  \huge \bold{ "ΤΕΙΧΗ ΤΗΣ ΣΙΩΠΗΣ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      \time 4/4
      \tempo  ""4 = 160
      \override Score.MetronomeMark.padding = #5
        \teixi_siopis_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
     minimumFret = #5
    restrainOpenStrings = ##t
  }
  {
    \teixi_siopis_muse
  }  
>>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% ΚΡΑΥΓΕΣ%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pageBreak
\score{
 \header {
  piece = \markup{  \huge \bold{ "ΚΡΑΥΓΕΣ"} }
  }
  \new StaffGroup
  <<
    \new Staff {
      \clef "bass_8"
      \key ees \major
      \time 4/4
      \tempo  ""4 = 120
      \override Score.MetronomeMark.padding = #5
        \kravges_muse
    }
  \new TabStaff \with {
    stringTunings = #bass-tuning
     minimumFret = #5
    restrainOpenStrings = ##t
  }
  {
    \kravges_muse
  }  
>>
\layout{}
\midi{}
}







%Hammer on and pull off
%Hammer-on and pull-off can be obtained using slurs.

%\new TabStaff {
%  \relative c' {
%    d4( e\2)
%    a( g)
%  }
%}


