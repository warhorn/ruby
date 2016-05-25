# convox/ruby

Convox base image for Ruby

## Usage

	FROM convox/ruby
	
	# copy only the files needed for bundle install
	COPY Gemfile      /app/Gemfile
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

### Ruby Environment

* `ruby`
* `bundler`
