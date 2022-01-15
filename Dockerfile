FROM ruby:2.7.5

WORKDIR /app
COPY . /app
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "9292"]
