#!/bin/bash
emit__topological () {
 c17
 }
topological__sort () {
 c18
 }
c1 () {
## create rect fact for every vertex that is not an edge/ellipse/text
## sequence.drawio file contains vertexes, and marks all edge and ellipse (and text)
## but does not mark rectangles (the default)
## this pass finds the defaults and creates explicit rect(...) facts
swipl -q \
   -g 'consult(sequence).' \
   -g 'consult(rects).' \
   -g 'printRects.' \
   -g 'halt.' \
   > temp.pl
# augment the factbase (fb.pl) after every inferencing step
cat sequence.pl temp.pl | sort >fb.pl
cp fb.pl _seq_end_fb.pl
  }
c2 () {
./senders.bash
  }
receivers () {
 c3
 }
c3 () {
./receivers.bash
  }
c4 () {
./designRuleCheckEdges.bash
  }
bounding__boxes () {
 c5
 }
c5 () {
./bb.bash
  }
check__bounding__boxes () {
 c7
 }
c7 () {
./designRuleCheckBoundingBoxes.bash
  }
contains1 () {
 c8
 }
c8 () {
./contains1.bash
  }
rectangles__must__not__intersect () {
 c9
 }
c9 () {
./designRule1.bash
  }
deepcontains () {
 c10
 }
c10 () {
./deepcontains.bash
  }
directcontains () {
 c11
 }
c11 () {
./directcontains.bash
  }
port__contains () {
 c13
 }
c13 () {
./portcontains.bash
  }
port__directions () {
 c14
 }
c14 () {
./portdirections.bash
  }
assign__names () {
 c15
 }
c15 () {
./assignnames.bash
  }
assign__code () {
 c16
 }
c16 () {
./assigncode.bash
  }
c17 () {
node emittopological.js > topo1.txt
  }
c18 () {
tsort topo1.txt >topo.txt
  }
c19 () {
echo
  }
convert__to__fb () {
 c25
 }
convert__to__JSON () {
 c20
 }
c20 () {
./tojson.bash >out.json
  }
sequencing () {
 c21
 }
c21 () {
echo
  }
details () {
 c22
 }
c22 () {
echo
  }
fixups () {
 c23
 }
c23 () {
./fixup.bash <outd.json > details.json 
  }
create__sequence__JSON () {
 c24
 }
c24 () {
cp out.json details.json 
  }
c25 () {
node sequence.js >sequence.pl
  }
convert__to__JSON__details () {
 c26
 }
c26 () {
./tojson.bash >outd.json
  }
create__functions () {
 c27
 }
create__final__script () {
 c28
 }
c27 () {
node emitfunctions.js >functions.txt 
  }
c28 () {
cat header.txt functions.txt topo.txt trailer.txt | ./deleteBlankLines.bash >final.bash
  }
parse__details__diagram () {
 c29
 }
c29 () {
node details.js >details.pl
  }
top__level () {
 c19
 }
make__rects () {
 c1
 }
check__edges () {
 c4
 }
senders () {
 c2
 }
convert__to__fb
parse__details__diagram
make__rects
senders
receivers
check__edges
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
convert__to__JSON
create__sequence__JSON
convert__to__JSON__details
emit__topological
fixups
topological__sort
create__functions
create__final__script
