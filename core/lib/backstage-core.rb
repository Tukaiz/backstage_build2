require 'backstage/core'
Dir[APP_ROOT.join('storefronts/*/lib/backstage-*.rb')].each {|f| require f }
