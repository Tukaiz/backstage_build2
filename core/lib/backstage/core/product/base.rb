module Backstage::Core::Product::Base
  extend ActiveSupport::Concern
  include Pricing

  included do
    attr_accessible :title, :description
  end
end
