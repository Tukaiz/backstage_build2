module Backstage::Core::Models::Storefront::Current
  extend ActiveSupport::Concern

  included do
  end

  def self.current
    Thread.current[:storefront]
  end

  def self.current=(storefront)
    Thread.current[:storefront] = storefront
  end
end
