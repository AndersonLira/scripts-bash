#!/bin/bash


ffmpeg -i $1 -af asetrate=44100*1.0,aresample=44100,atempo=1/1.0 $2c1.mp3
ffmpeg -i $1 -af asetrate=44100*1.12,aresample=44100,atempo=1/1.12 $2d1.mp3
ffmpeg -i $1 -af asetrate=44100*1.26,aresample=44100,atempo=1/1.26 $2e2.mp3
ffmpeg -i $1 -af asetrate=44100*1,33,aresample=44100,atempo=1/1.33 $2f2.mp3
ffmpeg -i $1 -af asetrate=44100*1.5,aresample=44100,atempo=1/1.5 $2g2.mp3
ffmpeg -i $1 -af asetrate=44100*1.68,aresample=44100,atempo=1/1.68 $2a2.mp3
ffmpeg -i $1 -af asetrate=44100*1.88,aresample=44100,atempo=1/1.88 $2b2.mp3
ffmpeg -i $1 -af asetrate=44100*2.0,aresample=44100,atempo=1/2.0 $2c2.mp3
