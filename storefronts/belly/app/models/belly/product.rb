class Belly::Product < ActiveRecord::Base
  include Backstage::Core::Models::Product::Base

  has_many :product_categories, :dependent => :destroy
  has_many :categories, :through => :product_categories

  def price
    puts "old value #{super}"
    42
  end

end
