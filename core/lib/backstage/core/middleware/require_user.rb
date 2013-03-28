module Backstage
  module Core
    module Middleware

      module RequireUser
        extend ActiveSupport::Concern

        included do
          helper_method :current_storefront
        end

        def require_storefront
          unless current_storefront
            redirect_to new_session_path
            return false
          end
        end

        def current_storefront
          session[:storefront]
        end

        def store_location
          session[:return_to] = request.url
        end

      end

    end
  end
end