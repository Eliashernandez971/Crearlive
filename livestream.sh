#!/bin/bash

YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"
KEY="ywp8-sj4w-zw12-wuag-476e"

VIDEO_SOURCE="https://ia601608.us.archive.org/8/items/c-4rs-hd-720p-699968/C4r%27s_HD__720p___699968.mp4"
AUDIO_SOURCE="ruta/al/tu/audio.mp3"

while true; do
    ffmpeg -re -i "$VIDEO_SOURCE" -i "$AUDIO_SOURCE" \
    -c:v libx264 -preset superfast -b:v 4500k \
    -c:a aac -b:a 128k \
    -f flv "$YOUTUBE_URL/$KEY" > log.txt 2>&1
done
