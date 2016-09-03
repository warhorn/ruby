FROM ubuntu:16.04

RUN apt-get update

# ruby dependencies
RUN apt-get -y install build-essential git ruby-dev zlib1g-dev liblzma-dev
RUN gem install bundler

# Warhorn app dependencies
RUN apt-get -y install libpq-dev

WORKDIR /app
