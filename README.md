# Simple clicker app

# Installation

Make sure you have a JavaScript runtime such as node installed.

## If you do not have ruby installed

Install ruby version 2.6.0 with [rbenv](https://github.com/rbenv/rbenv).

Install bundler with `gem install bundler`

## If you already have ruby and bundler installed

run `bundle install` to install all dependencies specified in the Gemfile

## For development version

Run migrations with `rails db:migrate`

Run `rails s` to start the project in development mode

## For production version

Run migrations with `rails db:migrate RAILS_ENV=production`

Precompile your assets with `rake assets:precompile`

Run `rails s -e production` to start the project in production mode

(To get error output use `RAILS_LOG_TO_STDOUT=true rails s -e production`)

### The application by default runs in port 3000

## Run the application on Docker

To run the *rails-example-project*, clone the project first from

* https://github.com/LoserPanda/rails-example-project

Now, in the project root run these two commands:


```
docker build -t rails-example-project .
```

```
docker run -p 3000:3000 rails-example-project
```

As soon as the application is up and running, navigate to http://localhost:3000 and verify the application works by clicking the *Press* button.

In order to make the *rails-example-project* work with Docker, the *Gemfile* of the project was modified so that the ruby version number became '2.6.3'.
