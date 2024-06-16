FROM ghcr.io/actions/actions-runner:2.317.0

USER root

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y \
    curl=7.81.0-1ubuntu1.16 \
    jq=1.6-2.1ubuntu3 \
    git=1:2.45.2-0ppa1~ubuntu22.04.1 \
    gpg=2.2.27-3ubuntu2.1 \
    unzip=6.0-26ubuntu3.2 \
    wget=1.21.2-2ubuntu1 &&\
    rm -rf /var/lib/apt/lists/*
