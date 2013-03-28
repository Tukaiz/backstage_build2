require File.expand_path('../../spec_helper', __FILE__)
require Backstage::Core.root.join("lib/backstage/core/engine")

describe Backstage::Core::Helpers::ProductsHelper do
  describe '#core_products_helper' do
    it 'returns This is a core products helper.' do
      expect(core_products_helper).to eql('This is a core products helper.')
    end
  end
end
