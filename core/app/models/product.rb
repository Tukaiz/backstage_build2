class Product < ActiveRecord::Base
  include Backstage::Core::Models::Product::Base
  attr_accessible :title, :description

end
