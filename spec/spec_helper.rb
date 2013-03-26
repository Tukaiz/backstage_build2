require 'spork'

ENV['RAILS_ENV'] ||= 'test'

Spork.prefork do
  unless ENV['DRB']
    require 'simplecov'
    SimpleCov.start 'rails'
  end

  require  File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'shoulda/matchers/integrations/rspec'


  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  Dir[Rails.root.join("**/spec_helper.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.mock_with   :rspec
    config.expect_with(:rspec) {|c| c.syntax = :expect }

    # config.extend  ControllerMacros,    type: :controller
    config.include Haml::Helpers,       type: :helper

    config.alias_it_should_behave_like_to :it_has_behavior, 'has behavior:'

    config.before(:suite) do
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.clean_with(:truncation)
    end

    config.before(:each, type: :helper) { init_haml_helpers }

    config.before(:each) do |group|
      unless group.example.metadata[:no_database_cleaner]
        DatabaseCleaner.start
      end
    end

    config.before(:each, type: :helper) { init_haml_helpers }

    config.after(:each) do |group|
      unless group.example.metadata[:no_database_cleaner]
        DatabaseCleaner.clean
      end
    end
  end
end

Spork.each_run do
  if ENV['DRB']
    require 'simplecov'
    SimpleCov.start 'rails'
  end

  Rails.cache.clear
  ActiveSupport::Dependencies.clear
  Fabrication.clear_definitions
end
