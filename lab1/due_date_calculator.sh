#!/bin/bash

d1=$(date -j -f "%b %d %Y" "Sep 28 2022" +%s)
d2=$(date -j -f "%b %d %Y" "Oct 26 2022" +%s)
d3=$(date -j -f "%b %d %Y" "Nov 23 2022" +%s)
d4=$(date -j -f "%b %d %Y" "Dec 07 2022" +%s)
now=`date +%s`

date1=$(date -j -f "%b %d %Y" "Sep 28 2022" +%D)
date2=$(date -j -f "%b %d %Y" "Oct 26 2022" +%D)
date3=$(date -j -f "%b %d %Y" "Nov 23 2022" +%D)
date4=$(date -j -f "%b %d %Y" "Dec 07 2022" +%D)

dateslist=($date1 $date2 $date3 $date4)
calculatelist=($d1 $d2 $d3 $d4)

days_left(){
    d="$(( ($1 - now)/86400 ))"
    echo $d
}

inputHandler(){
    if [ $1 -eq 1 ]
    then
        printf " $(days_left $d1) days left until $date1 \n"
    elif [ $1 -eq 2 ]
    then
        printf " $(days_left $d2) days left until $date2 \n"
    elif [ $1 -eq 3 ]
    then
        printf " $(days_left $d3) days left until $date3 \n"
    else 
        printf " $(days_left $d4) days left until $date4 \n"
    fi 
}

echo "Select one of the following: "

for (( i=1 ; i<5 ; i++ ))
do
    echo [ $i ] ${dateslist[$i-1]}
done

read input
inputHandler $input