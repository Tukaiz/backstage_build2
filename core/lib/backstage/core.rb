module Backstage
  autoload :StorefrontRouter,      'backstage/storefront_router'
  autoload :ApplicationController, 'backstage/application_controller'

  class << self
    @@storefronts = []

    # Returns an array of modules representing currently registered Backstage storefronts
    def storefronts
      @@storefronts
    end

    # Register a Backstage storefront
    def register_storefront(storefront)
      return if storefront_registered?(storefront)

      @@storefronts << storefront
    end

    # Returns true if a storefront is currently registered with Backstage
    def storefront_registered?(storefront)
      @@storefronts.include?(storefront)
    end
  end

  module Core
    require 'backstage/core/engine'

    # Returns a Pathname to the root of the Backstage core
    def self.root
      APP_CORE.join('core')
    end
  end
end