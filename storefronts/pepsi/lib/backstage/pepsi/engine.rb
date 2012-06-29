module Backstage
  module Pepsi
    class Engine < Rails::Engine
      isolate_namespace Pepsi

      engine_name :pepsi

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end
  end
end
