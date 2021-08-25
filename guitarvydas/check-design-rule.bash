#!/bin/bash
cat - >_errors.txt
cat _errors.txt 1>&2
if grep -q 'FATAL' _errors.txt
then
    echo quitting
    exit 1
fi
rm _errors.txt
