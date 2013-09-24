source "https://rubygems.org"

ruby "1.9.3", :engine => "rbx", :engine_version => "2.0.0.m8"


gem "rails", "~> 3.2.14"
gem "puma",  "~> 2.5.0"
gem "dang",  "~> 1.0.0"

gem "json"
gem "jquery-rails"

group :development do
  gem "sqlite3"
  gem "taps"
  gem "gx"
  gem "heroku"
end

group :assets do
  gem "sass-rails"
  gem "uglifier"
end

group :production do
  gem "pg"
  gem "newrelic_rpm"
  gem "rails_12factor"
end
