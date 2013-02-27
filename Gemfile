source :rubygems

gem 'rails', '~> 3.2'

gem 'backstage-core', path: 'core'

group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'uglifier'
  gem 'execjs'
  gem 'turbo-sprockets-rails3'
end

gem 'haml-rails'
gem 'jquery-rails'

gem 'sqlite3'

gem 'responders'
gem 'simple_form'
gem 'draper'
gem 'decorates_before_rendering'
gem 'multi_fetch_fragments'

gem 'pry-rails'

group :development do
  gem 'thin'
  gem 'quiet_assets'
  gem 'pry-doc'
  gem 'newrelic_rpm'
  gem 'ruby-prof'
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
end

group :development, :test do
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'ffaker'
  gem 'spork-rails'
end
