#!/bin/bash
printAllDirectContains (){
cp fb.pl _pre_direct_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain3).' -g 'printAllDirectContains.' -g 'halt.' | ./augment-fb.bash
cp fb.pl _post_direct_fb.pl
}

printAllDirectContains
