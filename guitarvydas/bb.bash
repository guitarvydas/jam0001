#!/bin/bash
set -e
trap 'catch' ERR

catch () {
    echo '*** FATAL ERROR in bb.bash ***'
    exit 1
}
swipl -g 'consult(fb).' \
      -g 'consult(boundingBoxes).' \
      -g 'printBB.' \
      -g 'halt.' \
      >temp2.pl

# augment the factbase (fb.pl) after every inferencing step
cat fb.pl temp2.pl | sort >temp3.pl
mv temp3.pl fb.pl
cp fb.pl bb_fin_fb.pl
