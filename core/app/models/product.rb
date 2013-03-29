class Product < ActiveRecord::Base
  include Backstage::Core::Models::Product::Base
  attr_accessible :title, :description, :storefront_id

  belongs_to :storefront

end
