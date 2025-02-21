FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    Python3.10 \
    python3-pip \
    git

- name: Install dependencies
  run: |
    sudo apt-get update
    sudo apt-get install -y python3-yaml

COPY feed.py /usr/bin/feed.py  

copy entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
