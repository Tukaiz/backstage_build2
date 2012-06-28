Dir[APP_ROOT.join('storefronts/*/lib/backstage-*.rb')].each { |file| require file }
require 'backstage/core'