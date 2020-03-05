FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y --no-install-recommends python3.7 python3-pip python3.7-venv python3.7-dev && rm -rf /var/lib/apt/lists/*
RUN add-apt-repository --remove ppa:deadsnakes/ppa
RUN rm /usr/bin/python3
RUN ln -s /usr/bin/python3.7 /usr/bin/python3
RUN ln -s /usr/bin/python3.7 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip
