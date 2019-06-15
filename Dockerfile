FROM ruby:2.6.3
RUN apt-get update && apt-get install -y build-essential nodejs
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler &&gem install bundler &&  bundle install
COPY . .
RUN rails db:migrate
CMD ["rails", "s"]
