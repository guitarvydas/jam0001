#!/bin/bash
cat - >_errors.txt
if grep 'FATAL' _errors.txt
then
    echo quitting
    exit 1
fi
rm _errors.txt
