FROM ghcr.io/actions/actions-runner:2.325.0

USER root

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y \
    curl \
    jq \
    git \
    gpg \
    patch \
    unzip \
    wget &&\
    rm -rf /var/lib/apt/lists/*

USER runner
