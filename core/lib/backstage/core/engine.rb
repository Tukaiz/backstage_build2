require 'active_support/dependencies'

module Backstage
  module Core
    class Engine < ::Rails::Engine
      include Backstage::Engine

      config.root = Core.root

      engine_name :backstage

      def register_routes(storefront, &block)
        Rails.application.routes.prepend do
          scope module: storefront do
            constraints(StorefrontRouter.new(storefront), &block.bind(self))
          end
        end
        # Rails.application.reload_routes!
      end

      def self.include_backstage_core!
        ::ApplicationController.send(:include, Backstage::Core::Controllers::ApplicationController)
        ::ApplicationController.send(:helper,  Backstage::Core::Engine.helpers)
      end

      config.autoload_paths += %W(#{config.root}/lib)

      config.to_prepare &method(:include_backstage_core!).to_proc

      config.after_initialize do |app|
        app.eager_load!

        Backstage.storefronts.each do |storefront|

        end
      end
    end
  end
end
