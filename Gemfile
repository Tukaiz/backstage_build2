source :rubygems

gem 'rails', '~> 3.2'

gem 'rake'
gem 'haml-rails'
gem 'sqlite3'

gem 'backstage-core', path: 'core'

group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'uglifier'
  gem 'execjs'
end

gem 'jquery-rails'
gem 'pry-rails'

gem 'responders'

group :development do
  gem 'pry-doc'
  gem 'newrelic_rpm'
  gem 'ruby-prof'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'spork'
end

group :development, :test do
  gem 'ffaker'
  gem 'fabrication'
  gem 'rspec-rails'
end