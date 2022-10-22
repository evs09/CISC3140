#!/bin/bash

days_until_due(){
    d1=$(date -j -f "%b %d %Y" "Sep 28 2022" +%s)
    d2=$(date -j -f "%b %d %Y" "Oct 26 2022" +%s)
    d3=$(date -j -f "%b %d %Y" "Nov 23 2022" +%s)
    d4=$(date -j -f "%b %d %Y" "Dec 07 2022" +%s)
    now=`date +%s`

    date1=$(date -j -f "%b %d %Y" "Sep 28 2022" +%D)
    date2=$(date -j -f "%b %d %Y" "Oct 26 2022" +%D)
    date3=$(date -j -f "%b %d %Y" "Nov 23 2022" +%D)
    date4=$(date -j -f "%b %d %Y" "Dec 07 2022" +%D)

    printf "%d days left until $date1 \n" "$(( (d1-now)/86400 ))"
    printf "%d days left until $date2 \n" "$(( (d2-now)/86400 ))"
    printf "%d days left until $date3 \n" "$(( (d3-now)/86400 ))"
    printf "%d days left until $date4 \n" "$(( (d4-now)/86400 ))"
}

days_until_due