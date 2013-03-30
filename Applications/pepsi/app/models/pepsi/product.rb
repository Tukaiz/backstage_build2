module Pepsi
  class Product < ActiveRecord::Base
    include Backstage::Core::Models::Product::Base
  end
end
