FROM python:3.8-slim
LABEL maintainer="Kazuya Takei <myself@attakei.net>"

# Add apt packages
RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Add python package into global
RUN pip3 install poetry
