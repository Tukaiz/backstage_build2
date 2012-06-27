require 'backstage/core'
Dir[Rails.root.join('storefronts/*/lib/backstage-*.rb')].each { |file| require file }