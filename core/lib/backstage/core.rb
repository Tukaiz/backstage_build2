module Backstage
  autoload :StorefrontRouter,      'backstage/storefront_router'
  autoload :ApplicationResponder,  'backstage/application_responder'
  autoload :Engine,                'backstage/engine'

  class << self
    @@storefronts = []

    # Returns an array of modules representing currently registered Backstage storefronts
    def storefronts
      @@storefronts
    end

    # Register a Backstage storefront
    def register_storefront(storefront)
      return if storefront_registered?(storefront)
      register_assets(storefront)

      @@storefronts << storefront
    end

    def register_assets(storefront)
      Rails.application.config.assets.precompile += ["application_#{storefront}.css"]
    end

    # Returns true if a storefront is currently registered with Backstage
    def storefront_registered?(storefront)
      @@storefronts.include?(storefront)
    end
  end

  module Core
    def self.root
      APP_ROOT.join('core')
    end
  end
end

require 'backstage/core/engine'
