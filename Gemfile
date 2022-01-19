# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in rubrik.gemspec.
gemspec

gem "sprockets-rails"
gem "sqlite3"
gem "webrick"

group :development do
  gem "debug", ">= 1.0.0"
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end
