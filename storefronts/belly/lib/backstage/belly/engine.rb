module Backstage
  module Belly
    class Engine < Rails::Engine
      isolate_namespace Belly

      engine_name :belly

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end
  end
end
