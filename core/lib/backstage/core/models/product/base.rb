module Backstage::Core::Models::Product::Base
  extend ActiveSupport::Concern
  include Pricing

  included do
    # noop
  end
end
