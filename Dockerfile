#
# GitLab CI: Android v0.2
#
# https://hub.docker.com/r/jangrewe/gitlab-ci-android/
# https://git.faked.org/jan/gitlab-ci-android
#

FROM ubuntu:18.04
MAINTAINER Jan Grewe <jan@faked.org>


ENV NODEJS_VERSION=8.15.0 \
    PATH=$PATH:/opt/node/bin

WORKDIR "/node"

RUN apt-get update && apt-get install -y curl git ca-certificates --no-install-recommends && \
    curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1 && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

