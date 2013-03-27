require 'spec_helper'

describe "Belly::Products" do
  describe "GET /belly_products" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get belly_products_index_path
      response.status.should be(200)
    end
  end
end
