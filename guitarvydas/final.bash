#!/bin/bash
seqEmitJSON () {
 c1
c1
 }
c1 () {
./seq__run__aux.bash 
  }
emitTopo () {
 c2
c2
 }
c2 () {
node emittopological.js 
  }
topologicalSort () {
 c3
c3
 }
c3 () {
tsort topo1.txt 
  }
detailsStart () {
 c4
c4
 }
c4 () {
echo BBB detailsStart BBB
cat details.pl temp.pl | sort 
  }
detailsEmitJSON () {
 c5
c5
 }
c5 () {
./run__aux.bash 
  }
emitFunctions () {
 c7
c7
 }
c7 () {
node emitfunctions.js 
  }
combine () {
 c8
c8
 }
c8 () {
cat header.txt functions.txt topo.txt trailer.txt 
  }
top__level () {
  }
sequenceStart () {
 c10
c10
 }
c10 () {
echo '*** sequenceStart ***'
cat sequence.pl temp.pl | sort 
  }
buildSequence () {
 c11
c11
 }
c11 () {
node sequence.js 
  }
buildDetails () {
 c12
c12
 }
c12 () {
node details.js 
  }
convert__to__fb
make__rects
check__edges
senders
receivers
bounding__boxes
check__bounding__boxes
contains1
deepcontains
directcontains
rectangles__must__not__intersect
port__contains
port__directions
assign__names
assign__code
