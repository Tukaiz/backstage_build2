require 'backstage/core'
Dir[STOREFRONTS_ROOT.join('*/lib/backstage-*.rb')].each {|f| require f }