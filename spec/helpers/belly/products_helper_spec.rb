require 'spec_helper'
require STOREFRONTS_ROOT.join('belly/lib/backstage/belly')

describe Belly::ProductsHelper do
  describe "#core_helper" do
    it 'returns Override the core helper from the ProductsHelper!!' do
      expect(core_helper).to eql('Override the core helper from the ProductsHelper!!')
    end
  end
end
