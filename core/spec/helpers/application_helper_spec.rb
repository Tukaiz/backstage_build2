require File.expand_path('../../spec_helper', __FILE__)
require Backstage::Core.root.join("lib/backstage/core/engine")

describe Backstage::Core::Helpers::ApplicationHelper do
  describe '#core_products_helper' do
    it 'returns This is a core products helper.' do
      expect(core_helper).to eql('This is a CORE application helper')
    end
  end
end
