FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    openssh-client \
    git \
    curl \
    nano \
    iputils-ping

RUN pip3 install ansible

WORKDIR /project

COPY . /project

CMD ["/bin/bash"]
