#!/bin/bash
assignCode (){
cp fb.pl _pre_code_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(component).' -g 'consult(code).' -g 'printCode.' -g 'halt.' | ./augment-fb.bash 
}
assignCode
