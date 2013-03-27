require 'spec_helper'

describe "Pepsi::Products" do
  describe "GET /pepsi_products" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get pepsi_products_index_path
      response.status.should be(200)
    end
  end
end
