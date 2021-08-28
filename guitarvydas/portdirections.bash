#!/bin/bash
printAllDirections (){
cp fb.pl _pre_directions_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(portdirection).' -g 'printAllDirections.' -g 'halt.' | ./augment-fb.bash 
}
printAllDirections
