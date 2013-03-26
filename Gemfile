source "http://rubygems.org"

ruby "1.9.3", :engine => "rbx", :engine_version => "2.0.0.rc1"

gem "rails", "~> 3.2.12"
gem "puma",  "~> 2.0.0.b6"
gem "json"
gem "jquery-rails"

group :development do
  gem "sqlite3-ruby", :require => "sqlite3"
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
end
