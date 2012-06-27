class Product < Backstage::Core::BaseModel
  attr_accessible :title, :description

  validates :title, presence: true, uniqueness: true
end