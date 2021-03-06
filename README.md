# warhorn/ruby

Warhorn base image for Ruby apps

## Usage

  FROM warhorn/ruby

  # copy only the files needed for bundle install
  COPY Gemfile /app/Gemfile
  COPY Gemfile.lock /app/Gemfile.lock
  RUN bundle install

  # copy the rest of the app
  COPY . /app

## Expectations

Application using this image should:

* Copy their source files into `/app`

## Exports

None

## Includes

### Base Image: [ubuntu:16.04](https://hub.docker.com/_/ubuntu/)

### Development headers

* `build-essential`
* `ruby-dev`
* `git`

### Ruby environment

* `ruby`
* `bundler`

### Warhorn app dependencies

* `libpq-dev`
