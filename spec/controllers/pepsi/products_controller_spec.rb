require APP_ROOT.join('storefronts/pepsi/app/controllers/pepsi/products_controller')

describe Pepsi::ProductsController do

  describe 'PEPSI GET #index' do

    let(:products) { mock_models(Product, 3) }

    before do
      Product.stub(:order).and_return(products)
      get :index, storefront: 'pepsi'
    end

    it { expect(response).to be_success }
    it { expect(response).to render_template(:index) }

    it 'should assign @products' do
      expect(assigns[:products]).to be_present
    end
  end

  describe 'PEPSI GET #show' do
    let(:product) { Product.create() }

    before do
      get :show, storefront: 'pepsi', id: product.id
      Product.stub(:find).and_return(product)
    end

    it { expect(response).to be_success }
    it { expect(response).to render_template(:show) }

  end
end
