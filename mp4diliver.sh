#!/bin/bash
startTime=0
endTime=0
length=11530
i=0
while [ $endTime -le $length ]; do
#statements
    i=$[$i+1]
    endTime=$[$startTime+840]
    ./ffmpeg -i $0 -ss $startTime -to $endTime -acodec copy -vcodec copy $i.mp4
    startTime=$[endTime]

done
