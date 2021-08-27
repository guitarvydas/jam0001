#!/bin/bash
allContains1 (){
cp fb.pl _pre_contains1_fb.pl    
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain1).' -g 'allContains1.' -g 'halt.' | ./augment-fb.bash 
}
allContains1
