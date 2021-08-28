#!/bin/bash
printAllPortContains (){
cp fb.pl _pre_portcontains_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(containsport).' -g 'printAllPortContains.' -g 'halt.' | ./augment-fb.bash 
}
printAllPortContains
