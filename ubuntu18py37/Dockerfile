FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y --no-install-recommends python3.7 python3-pip python3.7-venv python3.7-dev virtualenv && rm -rf /var/lib/apt/lists/*
RUN add-apt-repository --remove ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python-dev python-pip
# https://github.com/pypa/pip/issues/5599
RUN python2 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade pip
RUN rm /usr/bin/python && rm /usr/bin/python3 && ln -s /usr/bin/python3.7 /usr/bin/python && ln -s /usr/bin/python3.7 /usr/bin/python3
