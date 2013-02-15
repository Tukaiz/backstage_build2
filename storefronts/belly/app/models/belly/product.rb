class Belly::Product < ActiveRecord::Base
  include Backstage::Core::Product::Base

  def price
    puts "old value #{super}"
    42
  end
end
