FROM ghcr.io/actions/actions-runner:2.331.0

USER root

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
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
