# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.145.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# Replace shell with bash so we can use more features.
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install some basic dev dependencies.
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y -q --no-install-recommends \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        wget \
        python3-pip \
        python3-dev \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip

RUN pip install numpy scipy matplotlib ipython jupyter pandas sympy nose
RUN pip install joblib
RUN pip install threadpoolctl
RUN pip install pytest
RUN pip install pytest-cov
RUN pip install flake8
RUN pip install mypy
RUN pip install cython
RUN pip install pre-commit
