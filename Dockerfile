#
# Super simple example of a Dockerfile
#
FROM ubuntu:latest
MAINTAINER Benny Avelin "benny.avelin@math.uu.se"

RUN apt-get update
RUN apt-get install -y python3-pip ffmpeg pandoc
RUN pip3 install jupyter sklearn matplotlib tensorflow RISE
RUN jupyter-nbextension install rise --py --sys-prefix

#RUN groupadd -g 999 appuser && \
#    useradd -m -u 999 -g appuser appuser
#USER appuser

WORKDIR /data
