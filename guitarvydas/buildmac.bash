#!/bin/bash
swipl -q \
      -c details \
      -g rects \
      -g 'printRects.' \
      -g 'halt.' \
      -o sequence1
