module Backstage
  module Pepsi
    class Engine < Rails::Engine
      include Backstage::Engine

      engine_name :pepsi

      config.root = Pepsi.root

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end
  end
end
