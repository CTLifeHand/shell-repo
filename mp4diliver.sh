#!/bin/bash
startTime=0
endTime=0
length=11530
i=0
file=$1
while [ $endTime -le $length ]; do
#statements
    i=$[$i+1]
    endTime=$[$startTime+840]
    ./ffmpeg -ss $startTime -to $endTime -accurate_seek -i $1 -codec copy -avoid_negative_ts 1 ${file%.*}$i.mp4
    startTime=$[endTime]
done
