module Backstage
  module Belly
    class Engine < Rails::Engine
      include Backstage::Engine

      engine_name :belly

      config.root = Belly.root

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end
  end
end
