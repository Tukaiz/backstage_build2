require 'spec_helper'
require STOREFRONTS_ROOT.join('pepsi/app/models/pepsi/product')

describe Pepsi::Product do

  let(:product) { Product.new }

  describe '#price' do

    it 'returns 9' do
      expect(product.price).to eql(9)
    end
  end
end
