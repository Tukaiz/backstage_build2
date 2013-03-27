require 'backstage/core'
require 'backstage/core/generators/feature_generator'
Dir[APP_ROOT.join('storefronts/*/lib/backstage-*.rb')].each {|f| require f }
