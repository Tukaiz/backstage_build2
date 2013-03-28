source 'https://rubygems.org'

gem 'rails', '~> 4.0.0.beta1'
gem 'bundler'

gem 'backstage-core', path: 'core'

group :assets do
  gem 'sass-rails', github: 'rails/sass-rails'
  gem 'bootstrap-sass', '~> 2.3.0.1'
  gem 'uglifier'
  gem 'haml_coffee_assets'
  gem 'execjs'
  gem 'turbo-sprockets-rails3'
end

gem 'coffee-rails', github: 'rails/coffee-rails'
gem 'haml-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks', github: 'kossnocorp/jquery.turbolinks'

gem 'pg'

gem 'responders'
gem 'multi_fetch_fragments'

gem 'pry-rails'

group :development do
  gem 'thin'
  gem 'launchy'
  gem 'quiet_assets'
  gem 'newrelic_rpm'
  gem 'bullet'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'poltergeist'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'ffaker'
end
