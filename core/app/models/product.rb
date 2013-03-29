class Product < ActiveRecord::Base
  include Backstage::Core::Models::Product::Base

  belongs_to :storefront

end
