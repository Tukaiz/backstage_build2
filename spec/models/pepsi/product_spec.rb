require 'spec_helper'
require APP_ROOT.join('storefronts/pepsi/app/models/pepsi/product')

describe Pepsi::Product do

  let(:product) { Product.new }

  describe '#price' do

    it 'returns 9' do
      expect(product.price).to eql(9)
    end
  end
end
