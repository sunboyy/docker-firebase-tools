FROM ubuntu:22.04

RUN apt update && \
    apt install -y sudo curl && \
    curl -sL https://firebase.tools | bash
