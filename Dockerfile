FROM ruby:2.1

# Install dashing and bundle
RUN gem install dashing
RUN gem install bundle

RUN apt-get update && apt-get install -y nodejs

ONBUILD USER root

# Copy your current dashboard src files on building the image
ONBUILD COPY ./src /usr/src/
