#!/bin/bash
clear
set -x
set -e
trap 'catch' ERR

catch () {
    echo '*** FATAL ERROR in run.bash ***'
    exit 1
}

# sequence
node sequence.js >sequence.pl

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

./designRuleCheckEdges.bash
cp fb.pl _pre_bb.pl
./bb.bash
cp fb.pl _post_bb.pl
./designRuleCheckBoundingBoxes.bash

./senders.bash
./receivers.bash

./run__aux.bash >sequence.json

node emittopological.js >topo1.txt
tsort topo1.txt >topo.txt

### 
exit 0

# debug
mv fb.pl seqfb.pl

## now do details.drawio
node details.js >details.pl

swipl -q \
      -g 'consult(details).' \
      -g 'consult(rects).' \
      -g 'printRects.' \
      -g 'halt.' \
      > temp.pl

# augment the factbase (fb.pl) after every inferencing step
cat details.pl temp.pl | sort >fb.pl

# no edges, therefore no edge check
./bb.bash
./designRuleCheckBoundingBoxes.bash

./contains1.bash
./run__aux.bash | ./fixup.bash >details.json

node emitfunctions.js >functions.txt

# debug
mv fb.pl detfb.pl

cat header.txt functions.txt topo.txt trailer.txt | sed -e '/^ *$/d' >final.bash
# source final.bash
