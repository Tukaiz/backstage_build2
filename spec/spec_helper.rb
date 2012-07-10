require 'spork'

ENV['RAILS_ENV'] ||= 'test'

Spork.prefork do
  require  File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.mock_with :rspec
  end
end

Spork.each_run do
  Rails.cache.clear
  ActiveSupport::Dependencies.clear
  Fabrication.clear_definitions
end