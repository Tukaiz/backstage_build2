class Product < ActiveRecord::Base
  include Backstage::Core::Product::Base
  attr_accessible :title, :description

end
