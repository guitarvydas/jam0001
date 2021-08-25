#!/bin/bash
swipl -g 'consult(fb).' -g 'consult(designRuleCheckBoundingBoxes).' -g designRuleCheckBoundingBoxes | ./check-design-rule.bash
