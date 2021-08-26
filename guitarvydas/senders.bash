#!/bin/bash
senders (){
cp fb.pl _pre_code_fb.pl
swipl -g 'consult(fb).' -g 'consult(senders).' -g 'consult(lookup).' -g 'sendersmain.' -g 'halt.' | ./augment-fb.bash 
}
senders

