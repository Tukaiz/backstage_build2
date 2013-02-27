module Backstage
  module Belly
    class Engine < Rails::Engine
      include Backstage::Engine

      isolate_namespace Backstage

      engine_name :belly

      config.root = Pathname(File.expand_path('../../../../', __FILE__))

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end
  end
end
