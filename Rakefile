require File.expand_path('../config/application', __FILE__)
Backstage::Application.load_tasks

if defined? RSpec
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = "**/spec/**/*_spec.rb"
  end

  task :default => :spec
end
