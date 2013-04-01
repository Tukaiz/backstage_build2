module Backstage
  module Redbox
    class Engine < Rails::Engine
      include Backstage::Engine

      engine_name :redbox

      config.root = Redbox.root

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end
  end
end
