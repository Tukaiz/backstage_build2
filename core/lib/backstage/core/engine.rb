module Backstage
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Backstage
      engine_name :backstage

      def register_routes(storefront, &block)
        routes.prepend do
          scope module: storefront do
            constraints(StorefrontRouter.new(storefront), &block.bind(self))
          end
        end
      end



      def self.include_backstage_core!
        ::ApplicationController.send(:include, Backstage::ApplicationController)
        ::ApplicationController.send(:helper,  Backstage::Core::Engine.helpers)
      end

      config.autoload_paths += %W(#{config.root}/lib)

      config.to_prepare &method(:include_backstage_core!).to_proc

      config.after_initialize do |app|
        app.reload_routes!

        Backstage.storefronts.each do |storefront|

        end
      end
    end
  end
end
