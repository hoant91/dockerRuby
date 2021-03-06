FROM ubuntu:16.04
FROM ruby:2.5

RUN apt-get -y update
RUN apt-get install -y sqlite3 libsqlite3-dev
 
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

RUN mkdir -p /app
WORKDIR /app
 
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5
 
COPY . ./
 
EXPOSE 3000
 
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

