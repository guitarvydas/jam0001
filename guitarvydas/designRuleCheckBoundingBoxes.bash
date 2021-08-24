#!/bin/bash
swipl -g 'consult(designRuleBoundingBoxes)' -g designRuleCheckBoundingBoxes | ./check-design-rule.bash
