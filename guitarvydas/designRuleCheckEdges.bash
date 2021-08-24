#!/bin/bash
swipl -g 'consult(designRuleCheckEdges)' -g designRuleCheckEdges | ./check-design-rule.bash
