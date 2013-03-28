require APP_ROOT.join('storefronts/pepsi/app/controllers/pepsi/products_controller')

describe Pepsi::ProductsController do

  describe 'GET #index' do

    let(:products) { mock_models(Product, 3) }

    before do
      Product.stub(:order).and_return(products)
      get(:index, storefront: 'pepsi')
    end

    it { should respond_with(:success) }
    it { should render_template(:index) }

    it 'should assign @products' do
      expect(assigns[:products]).to be_present
    end
  end
end
