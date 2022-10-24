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
    printf " $(days_left ${calculatelist[$1-1]}) days left until ${dateslist[$1-1]} \n"
}

echo "Select one of the following: "

for (( i=1 ; i<5 ; i++ ))
do
    echo [ $i ] ${dateslist[$i-1]}
done

read input
inputHandler $input