FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -yy install build-essential ruby-dev git

RUN gem install bundler

WORKDIR /app
