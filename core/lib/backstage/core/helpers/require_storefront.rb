module Backstage
  module Core
    module Helpers

      module RequireStorefront
        extend ActiveSupport::Concern

        included do
          #before_filter :require_storefront
        end

        def require_storefront
          redirect_to new_session_path unless current_storefront
        end

      end

    end
  end
end