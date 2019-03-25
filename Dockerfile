#
# Super simple example of a Dockerfile
#
FROM ubuntu:latest
MAINTAINER Benny Avelin "benny.avelin@math.uu.se"

RUN apt-get update
RUN apt-get install -y python3-pip ffmpeg pandoc
RUN pip3 install jupyter sklearn pandas matplotlib tensorflow RISE
RUN jupyter-nbextension install rise --py --sys-prefix
RUN pip3 install tornado==4.5.3
RUN pip3 install jupyterthemes
RUN echo 'alias dark="jt -t chesterish -T"' >> ~/.bashrc
RUN echo 'alias Jupyter="jupyter notebook --ip=0.0.0.0 --allow-root"' >> ~/.bashrc
RUN echo 'alias darkjupyter="dark; Jupyter"' >> ~/.bashrc

#RUN groupadd -g 999 appuser && \
#    useradd -m -u 999 -g appuser appuser
#USER appuser

WORKDIR /data
