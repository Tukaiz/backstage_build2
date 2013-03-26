source 'https://rubygems.org'

gem 'rails', '~> 3.2'
gem 'bundler'

gem 'backstage-core', path: 'core'

group :assets do
  gem 'sass-rails',     '~> 3.2'
  gem 'bootstrap-sass', '~> 2.3.0.1'
  gem 'uglifier'
  gem 'haml_coffee_assets'
  gem 'execjs'
  gem 'turbo-sprockets-rails3'
end

gem 'coffee-rails',   '~> 3.2'
gem 'haml-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks', github: 'kossnocorp/jquery.turbolinks'

gem 'pg'
gem 'squeel'

gem 'responders'
gem 'simple_form'
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
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'poltergeist'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'ffaker'
  gem 'spork-rails', github: 'gmanley/spork-rails', branch: 'gemspec-tweak'
end
