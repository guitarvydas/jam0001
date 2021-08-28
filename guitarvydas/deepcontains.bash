#!/bin/bash
printAllDeepContains (){
cp fb.pl _pre_deep_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain2).' -g 'printAllDeepContains.' -g 'halt.' | ./augment-fb.bash 
}
printAllDeepContains
