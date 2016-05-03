FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -yy install build-essential ruby-dev

RUN gem install bundler

WORKDIR /app
