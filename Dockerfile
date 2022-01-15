FROM ruby:2.6

LABEL maintainer=​"ajdin@codingexercises.com"

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs

COPY Gemfile* /usr/src/
WORKDIR /usr/src
RUN bundle install

COPY . /usr/src/

ENTRYPOINT ["/bin/sh", "-c"]

# CMD ["bundle exec rails s -b 0.0.0.0 -p $SERVER_PORT"]
CMD ["bundle exec rails s -b 0.0.0.0"]