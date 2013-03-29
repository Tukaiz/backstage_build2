class Storefront < ActiveRecord::Base
  include Backstage::Core::Models::Storefront::Base
  attr_accessible :name, :description
  has_many :products

end
