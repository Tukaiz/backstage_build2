require 'spec_helper'
require APP_ROOT.join('storefronts/belly/lib/backstage/belly')

describe Belly::ProductsHelper do
  describe "#core_helper" do
    it 'returns Override the core helper from the ProductsHelper!!' do
      expect(core_helper).to eql('Override the core helper from the ProductsHelper!!')
    end
  end
end
