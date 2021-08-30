#!/bin/bash
pt () {
# convert fb.pl to "structured" form
swipl -g 'use_module(library(http/json))' \
      -g 'consult(fb).' \
      -g 'consult(component).' \
      -g 'consult(names).' \
      -g 'consult(code).' \
      -g 'consult(test).'  \
      -g 'consult(jsoncomponent).'\
      -g 'pt(S,SP,R,RP).'
}    
pt
