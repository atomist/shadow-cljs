FROM node:13.3.0

LABEL maintainer="Atomist <docker@atomist.com>"

RUN apt-get update && apt-get -q -y install \
      openjdk-8-jdk \
      curl \
    && curl -s https://download.clojure.org/install/linux-install-1.10.1.492.sh | bash \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp/build
