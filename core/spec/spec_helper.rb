Dir[Backstage::Core.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.include StorefrontHelpers
end
