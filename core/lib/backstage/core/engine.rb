module Backstage
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Backstage
      engine_name :backstage

      config.autoload_paths += %W( #{config.root}/lib )

      # config.to_prepare &method(:include_backstage_core!).to_proc

      initializer "backstage.encoding" do |app|
        app.config.encoding = 'utf-8'
      end

      def register_routes(storefront, &block)
        routes.prepend do
          constraints(StorefrontRouting.new(storefront), &block.bind(self))
        end
      end

      # def self.include_backstage_core!
      #   ::ApplicationController.send(:include, Backstage::ApplicationController)
      #   ::ApplicationController.send(:helper,  Backstage::Core::Engine.helpers)
      # end
    end
  end
end
