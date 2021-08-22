#!/bin/bash


c1 () {

node details.js 
 
  }

seqEmitJSON () {
 
 c2
 }

c2 () {

./seq__run__aux.bash 
 
  }

emitTopo () {
 
 c3
 }

c3 () {

node emittopological.js 
 
  }

topologicalSort () {
 
 c4
 }

c4 () {

tsort topo1.txt 
 
  }

detailsStart () {
 
 c5
 }

c5 () {

swipl -q
 
 
 -g 'consult(details).'
 
 
 -g 'consult(rects).'
 
 
 -g 'printRects.'
 
 
 -g 'halt.'
 
 
 
 temp.pl
cat details.pl temp.pl | sort 
 
  }

detailsEmitJSON () {
 
 c7
 }

c7 () {

./details__run__aux.bash 
 
  }

emitFunctions () {
 
 c8
 }

c8 () {

node emitfunctions.js 
 
  }

combine () {
 
 c9
 }

c9 () {

cat header.txt functions.txt topo.txt trailer.txt 
 
  }

top__level () {
 
 seqEmitJSON
emitTopo
topologicalSort
detailsStart
detailsEmitJSON
emitFunctions
combine
sequenceStart
buildSequence
buildDetails
 }

sequenceStart () {
 
 c11
 }

c11 () {

echo *** sequenceStart ***
swipl -q
 
 
 -g 'consult(sequence).'
 
 
 -g 'consult(rects).'
 
 
 -g 'printRects.'
 
 
 -g 'halt.'
 
 
 
 temp.pl
cat sequence.pl temp.pl | sort 
 
  }

buildSequence () {
 
 c12
 }

c12 () {

node sequence.js 
 
  }

buildDetails () {
 
 c1
 }
buildDetails
buildSequence
detailsStart
sequenceStart
seqEmitJSON
emitTopo
detailsEmitJSON
emitFunctions
topologicalSort
combine
