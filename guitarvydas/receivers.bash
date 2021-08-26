#!/bin/bash

receivers (){
cp fb.pl _pre_code_fb.pl
swipl -g 'consult(fb).' -g 'consult(receivers).'consult(lookup).' -g 'receiversmain.' -g 'halt.' | ./augment-fb.bash 
}

receivers
