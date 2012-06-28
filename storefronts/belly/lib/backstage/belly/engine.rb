module Backstage
  module Belly
    class Engine < Rails::Engine
      isolate_namespace Backstage::Belly

      engine_name :backstage_belly

      config.after_initialize do
        Backstage.register_storefront(self.class)
      end
    end
  end
end
