module Backstage
  module Core
    module Middleware

      class CurrentStorefront
        def initialize(app)
          @app = app
        end

        def call(env)
          # Storefront.current =
          @app.call(env)
        end
      end
    end
  end
end
