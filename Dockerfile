FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y sudo curl && \
    curl -sL https://firebase.tools | bash
