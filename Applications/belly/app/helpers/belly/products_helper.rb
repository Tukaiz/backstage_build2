module Belly
  module ProductsHelper
    include Backstage::Core::Helpers::ProductsHelper

    def core_helper
      'Override the core helper from the ProductsHelper!!'
    end
  end
end
