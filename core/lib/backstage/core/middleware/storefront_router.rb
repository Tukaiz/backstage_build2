module Backstage
  module Core
    module Middleware
      class StorefrontRouter

        def initialize(app)
          @app = app
        end

        def call(env)
          request = Rack::Request.new(env)

          binding.pry
          env['PATH_INFO']
        end
      end
    end
  end
end