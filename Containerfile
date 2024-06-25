FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

# Install Infisical Repo

RUN curl -1sLf 'https://dl.cloudsmith.io/public/infisical/infisical-cli/setup.deb.sh' | sudo -E bash

# Update and install CLI/tools

RUN apt update -qq && \
    apt upgrade -y && \
    apt install -y unzip \
    zip \
    s3cmd \
    bpytop \
    jq \
    infisical \
    rsync \
    rclone \
    g++ && \
    apt-get clean

#RUN mamba install -y astropy <libraries>

#RUN pip install <libraries>

USER $NB_USER
