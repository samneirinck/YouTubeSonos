#FROM anapsix/alpine-java:8
FROM gradle:4.6 as builder
USER root
RUN apt-get update && apt-get install -y \
    youtube-dl \
    ffmpeg
ADD . /app