#!/bin/bash
assignNames (){
cp fb.pl _pre_names_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(component).' -g 'consult(names).' -g 'printNames.' -g 'halt.' | ./augment-fb.bash 
}
assignNames
