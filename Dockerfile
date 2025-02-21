FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    Python3.10 \
    python3-pip \
    git

RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py  

copy entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
