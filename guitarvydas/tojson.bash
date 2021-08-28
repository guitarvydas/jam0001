#!/bin/bash
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
to_json
