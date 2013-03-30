module Backstage
  module Core
    module Helpers

      module CurrentStorefront
        extend ActiveSupport::Concern

        included do
          helper_method :current_storefront
        end

        def current_storefront
          session[:storefront]
        end

      end

    end
  end
end