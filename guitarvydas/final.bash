#!/bin/bash


top__level {
    
    rects
    bounding__boxes
}

rects {
    
    c3
}

c3 {
    swipl -q  -g 'consult(fb).'  -g 'consult(rects).'  -g 'printRects.'  -g 'halt.'| ./augment__fb 
}

bounding__boxes {
    
    c4
}

c4 {
    swipl -q  -g 'consult(fb).'  -g 'consult(boundingBoxes).'  -g 'printBB.'  -g 'halt.'  | ./augment__fb 
}
rects
bounding__boxes
