#!/bin/bash

YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"
KEY="ywp8-sj4w-zw12-wuag-476e"

VIDEO_SOURCE="https://linear-351.frequency.stream/mt/studio/351/hls/master/playlist.m3u8"

while true; do
    ffmpeg -re -i "$VIDEO_SOURCE" -i "$AUDIO_SOURCE" \
    -c:v libx264 -preset superfast -b:v 4500k \
    -c:a aac -b:a 128k \
    -f flv "$YOUTUBE_URL/$KEY"
done
