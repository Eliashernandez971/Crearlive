#!/bin/bash

YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"
KEY="tu-clave-de-transmision"

VIDEO_SOURCE="ruta/al/tu/video.mkv"
AUDIO_SOURCE="ruta/al/tu/audio.mp3"

while true; do
    ffmpeg -re -i "$VIDEO_SOURCE" -i "$AUDIO_SOURCE" \
    -c:v libx264 -preset superfast -b:v 4500k \
    -c:a aac -b:a 128k \
    -f flv "$YOUTUBE_URL/$KEY"
done
