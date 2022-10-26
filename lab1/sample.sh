#!/bin/bash

printf "Call functions in build.sh \n"
source build.sh < sampleinput.txt

printf "Call functions in bash date calculator \n"
source due_date_calculator.sh < sampleinput2.txt