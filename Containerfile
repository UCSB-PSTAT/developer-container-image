FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN apt update -qq && \
    apt upgrade -y && \
    apt install -y unzip \
    zip \
    s3cmd \
    bpytop \
    jq \
    rsync \
    rclone \
    g++ && \
    apt-get clean

#RUN mamba install -y astropy <libraries>

#RUN pip install <libraries>

USER $NB_USER
