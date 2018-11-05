for file in *.flv
do
    ./ffmpeg -i $file ${file%.flv}.mp4
done
