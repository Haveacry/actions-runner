FROM ghcr.io/actions/actions-runner:2.333.1

USER root

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    ansible \
    ansible-core \
    curl \
    jq \
    git \
    gpg \
    patch \
    unzip \
    wget &&\
    rm -rf /var/lib/apt/lists/*

USER runner
