# Create a Jeykyll container from a ruby Alpine image

# Github pages(Jekyll 3.9.x):
FROM ruby:2.7-alpine3.15


# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and install Jeykyl;
RUN gem update bundler && gem install bundler jekyll
