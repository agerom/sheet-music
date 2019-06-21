% ****************************************************************
% Autumn Leaves (Joseph Kosma)
%http://listenlearnread.blogspot.com/2010/10/guitar-tabs-with-lilypond.html
% ****************************************************************
\version "2.18.2"
\header {
 title = "Les Feuilles mortes (Autumn Leaves)"
 composer = "Joseph Kosma"
}
\sourcefilename "display-predefined-fretboards.ly"
\include "predefined-guitar-fretboards.ly"
\storePredefinedDiagram \chordmode {a:m6}
                        #guitar-tuning
                        #"x;o;2-2;2-3;1-1;2-4;"
\storePredefinedDiagram \chordmode {b:9-}
                        #guitar-tuning
                        #"x;2-2;1-1-(;2-3;1-1-);2-4;"
\storePredefinedDiagram \chordmode {g:maj7}
                        #guitar-tuning
                        #"3-2;2-1;o;o;o;2-3;"
theChords = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \partial 4 r4 
  \repeat volta 2 {
  a2:m7 d2:7 
  g2:maj7 c2
  a2:m6 b2 
  e1:m
  a2:m7 d2:7 
  g2:maj7 c2 
  a2:m6 b2:9-
  e1:m 
  b1
  e1:m
  d1
  g1
  b1:9- 
  e1:m7 
  a2:m6 b2:7}
 \alternative {
  { e1:m }
  { e1:m }
 }
}
staffMelody = {
   \key e \minor
   \partial 4 \times 2/3 { e'8 fis'8 g'8 } 
   \repeat volta 2 {
    c''2. \times 2/3 { d'8 e'8 fis'8 }
    b'4 b'4( b'8) r8 \times 2/3 { c'8 d'8 e'8 } 
    a'2. \times 2/3 { b8 cis'8 dis'8 } 
    g'2 (g'8) r8 \times 2/3 { e'8 fis'8 g'8 } \break
    c''2. \times 2/3 { d'8 e'8 fis'8 } 
    b'4 b'4( b'8) r8 \times 2/3 { c'8 d'8 e'8 }
    a'2( a'8) fis'8 a'8 g'8 
    e'2( e'8) r8 dis'8 e'8 \break
    fis'8 b8 fis'2 e'8 fis'8 
    g'4 g'4( g'8) g'8 fis'8 g'8
    a'2( a'8) d'8 d''8. c''16 
    b'2. ais'8 b'8 \break
    c''8 c''8 a'!8 a'8 fis'4 c''4
    b'4 b'2 e'4 
    a'4 a'8 g'8 fis'4 g'8. b16 }
   \alternative {
  { e'2( e'8) e'8 fis'8 g'8 }
  { e'2( e'8) r8 r4 \bar "|." }
 }
}
\score {
  <<
    \context ChordNames { \theChords }
    \context FretBoards { \theChords }
    \new Staff 
      \with {
      \consists "Volta_engraver"
    }
    {
      \context Voice = "voiceMelody" { \staffMelody }
    }
    \new TabStaff 
    { \transpose c' c \staffMelody }
  >>
  
\layout {
    \context {
      \Score
      \remove "Volta_engraver"
    }
  }
}