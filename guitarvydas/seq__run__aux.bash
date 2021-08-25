#!/bin/bash
trap 'catch' ERR
set -x
catch () {
    echo '*** FATAL ERROR in seq__run__aux.bash ***'
    exit 1
}


##### containment inferencing #########

#_details_
allContains1 (){
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain1).' -g 'allContains1.' -g 'halt.' | ./augment-fb.bash 
}
printAllDeepContains (){
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain2).' -g 'printAllDeepContains.' -g 'halt.' | ./augment-fb.bash 
}
printAllDirectContains (){
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain3).' -g 'printAllDirectContains.' -g 'halt.' | ./augment-fb.bash 
}
designRuleRectanglesMustNotIntersectOnTheSameDiagram (){
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(designRuleRectanglesMustNotIntersect).' -g 'designRuleRectanglesMustNotIntersectOnTheSameDiagram.' -g 'halt.' | ./check-design-rule.bash 
}
printAllPortContains (){
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(containsport).' -g 'printAllPortContains.' -g 'halt.' | ./augment-fb.bash 
}
printAllDirections (){
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(portdirection).' -g 'printAllDirections.' -g 'halt.' | ./augment-fb.bash 
}

# pipeline
set -x
echo sra 1 1>&2
./designRuleCheckBoundingBoxes.bash
allContains1
echo sra 2 1>&2
./designRuleCheckBoundingBoxes.bash
printAllDeepContains
echo sra 3 1>&2
./designRuleCheckBoundingBoxes.bash
printAllDirectContains
echo sra 4 1>&2
./designRuleCheckBoundingBoxes.bash
designRuleRectanglesMustNotIntersectOnTheSameDiagram
echo sra 5 1>&2
./designRuleCheckBoundingBoxes.bash
printAllPortContains
echo sra 6 1>&2
./designRuleCheckBoundingBoxes.bash
printAllDirections


# convert fb.pl to "structured" form
swipl -g 'use_module(library(http/json))' \
      -g 'consult(fb).' \
      -g 'consult(seq_component).' \
      -g 'consult(jsoncomponent).'\
      -g 'allc.'\
      -g 'halt.'
