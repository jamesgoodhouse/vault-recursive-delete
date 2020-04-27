FROM ruby:2.7.1-alpine3.11

WORKDIR /src

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle

COPY vault-recursive-delete.rb .

ENTRYPOINT ["ruby",  "/src/vault-recursive-delete.rb"]
