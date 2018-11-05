for file in *.flv
do
    ./ffmpeg -i $file -c copy ${file%.flv}.mp4
done
