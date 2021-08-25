#!/bin/bash
c1 () {
node details.js >details.pl
  }
seqEmitJSON () {
 c2
 }
c2 () {
./seq__run__aux.bash >sequence.json
  }
emitTopo () {
 c3
 }
c3 () {
node emittopological.js >topo1.txt
  }
topologicalSort () {
 c4
 }
c4 () {
tsort topo1.txt >topo.txt
  }
detailsStart () {
 c5
 }
c5 () {
echo BBB detailsStart BBB
./detStart
cat details.pl temp.pl | sort >fb.pl
  }
detailsEmitJSON () {
 c7
 }
c7 () {
./run__aux.bash >details.json
  }
emitFunctions () {
 c8
 }
c8 () {
node emitfunctions.js >topo1.txt
  }
combine () {
 c9
 }
c9 () {
cat header.txt functions.txt topo.txt trailer.txt >rfinal.bash
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
echo AAA sequenceStart AAA
./seqStart
cat sequence.pl temp.pl | sort >fb.pl
  }
buildSequence () {
 c12
 }
c12 () {
node sequence.js >sequence.pl
  }
buildDetails () {
 c1
 }
