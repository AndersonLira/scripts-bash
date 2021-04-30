#!/bin/bash


ffmpeg -i $1 -af asetrate=44100*1.0,aresample=44100,atempo=1/1.0 $2c1.mp3
ffmpeg -i $1 -af asetrate=44100*1.12,aresample=44100,atempo=1/1.12 $2d1.mp3
ffmpeg -i $1 -af asetrate=44100*1.26,aresample=44100,atempo=1/1.26 $2e1.mp3
ffmpeg -i $1 -af asetrate=44100*1.33,aresample=44100,atempo=1/1.33 $2f1.mp3
ffmpeg -i $1 -af asetrate=44100*1.5,aresample=44100,atempo=1/1.5 $2g1.mp3
ffmpeg -i $1 -af asetrate=44100*1.68,aresample=44100,atempo=1/1.68 $2a1.mp3
ffmpeg -i $1 -af asetrate=44100*1.88,aresample=44100,atempo=1/1.88 $2b1.mp3
ffmpeg -i $1 -af asetrate=44100*2.0,aresample=44100,atempo=1/2.0 $2c2.mp3


ffmpeg -i c1.mp3 -i d1.mp3 -i e1.mp3 -i f1.mp3 -i g1.mp3 -i a1.mp3 -i b1.mp3 -i c2.mp3 result.mp3