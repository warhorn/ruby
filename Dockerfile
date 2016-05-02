FROM alpine:3.2

RUN apk update 
RUN apk add build-base curl-dev ruby-dev zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev sqlite-dev postgresql-dev mysql-dev
RUN apk add ruby ruby-bundler ruby-io-console ruby-json ruby-nokogiri ruby-raindrops

WORKDIR /app

RUN bundle config --global build.nokogiri "--use-system-libraries"
