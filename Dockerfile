FROM ruby:2.1
MAINTAINER Port of Rotterdam <noreply@portofrotterdam.com>

# Install dashing and bundle
RUN gem install dashing
RUN gem install bundle

RUN apt-get update && apt-get install -y nodejs

ONBUILD USER root
ONBUILD COPY ./src /usr/src/
