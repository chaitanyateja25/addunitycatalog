#!/bin/bash
set -e


# Execute the plugin migrations
bundle install --without development test --no-deployment
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
