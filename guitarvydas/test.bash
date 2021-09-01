#!/bin/bash
set -x
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

./run__aux.bash | ./fixup.bash >details.json

node emitfunctions.js >functions.txt
