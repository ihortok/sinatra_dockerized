FROM ruby:2.7.5

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "shotgun", "--host", "0.0.0.0", "-p", "9292"]
