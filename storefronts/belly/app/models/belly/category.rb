class Belly::Category < ActiveRecord::Base

  has_many :product_categories, :dependent => :destroy
  has_many :products, :through => :product_categories

  attr_accessible :active, :title, :child, :parent
  validates :title, :uniqueness => true

end