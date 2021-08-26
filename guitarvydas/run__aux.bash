#!/bin/bash
set -x

##### containment inferencing #########

#_details_
allContains1 (){
cp fb.pl _pre_contains1_fb.pl    
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain1).' -g 'allContains1.' -g 'halt.' | ./augment-fb.bash 
}
printAllDeepContains (){
cp fb.pl _pre_deep_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain2).' -g 'printAllDeepContains.' -g 'halt.' | ./augment-fb.bash 
}
printAllDirectContains (){
cp fb.pl _pre_direct_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(contain3).' -g 'printAllDirectContains.' -g 'halt.' | ./augment-fb.bash
cp fb.pl _post_direct_fb.pl
}
designRuleRectanglesMustNotIntersectOnTheSameDiagram (){
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(designRuleRectanglesMustNotIntersect).' -g 'designRuleRectanglesMustNotIntersectOnTheSameDiagram.' -g 'halt.' | ./check-design-rule.bash 
}
printAllPortContains (){
cp fb.pl _pre_portcontains_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(containsport).' -g 'printAllPortContains.' -g 'halt.' | ./augment-fb.bash 
}
printAllDirections (){
cp fb.pl _pre_directions_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(portdirection).' -g 'printAllDirections.' -g 'halt.' | ./augment-fb.bash 
}
assignNames (){
cp fb.pl _pre_names_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(component).' -g 'consult(names).' -g 'printNames.' -g 'halt.' | ./augment-fb.bash 
}
assignCode (){
cp fb.pl _pre_code_fb.pl
swipl -g 'consult(fb).'  -g 'consult(onSameDiagram).' -g 'consult(component).' -g 'consult(code).' -g 'printCode.' -g 'halt.' | ./augment-fb.bash 
}
to_json () {
# convert fb.pl to "structured" form
swipl -g 'use_module(library(http/json))' \
      -g 'consult(fb).' \
      -g 'consult(component).' \
      -g 'consult(names).' \
      -g 'consult(code).' \
      -g 'consult(jsoncomponent).'\
      -g 'allc.'\
      -g 'halt.'
}    

# pipeline
allContains1
printAllDeepContains
printAllDirectContains
designRuleRectanglesMustNotIntersectOnTheSameDiagram
printAllPortContains
printAllDirections

assignNames
assignCode

to_json
