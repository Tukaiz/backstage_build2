require File.expand_path('../../spec_helper', __FILE__)
require APP_ROOT.join('config/environment')
require Backstage::Core.root.join("app/controllers/products_controller")

describe ProductsController do

  describe 'GET CORE #index' do

    let(:products) { mock_models(Product, 3) }

    before do
      Product.stub(:order).and_return(products)
      get(:index)
    end

    it { should respond_with(:success) }
    it { should render_template(:index) }

    it 'should assign @products' do
      expect(assigns[:products]).to be_present
    end
  end

  describe 'GET CORE #show' do
    pending do
      let(:product) { Product.new }

      before do
        Product.stub(:find).and_return(product)
        get(:show)
      end

      it { should respond_with(:success) }
      it { should render_template(:show) }

      it 'should assign @product' do
        expect(assigns[:product]).to be_present
      end
    end
  end
end
