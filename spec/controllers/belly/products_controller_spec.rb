require STOREFRONTS_ROOT.join('belly/app/controllers/belly/products_controller')

describe Belly::ProductsController do

  before do
    controller.stub(:current_storefront).and_return('belly')
  end

  describe 'Belly GET #index' do

    let(:products) { mock_models(Product, 3) }

    before do
      Belly::Product.stub(:order).and_return(products)
      get :index
    end

    it { expect(response).to be_success }
    it { expect(response).to render_template("layouts/belly/application") }
    it { expect(response).to render_template(:index) }

    it 'should assign @products' do
      expect(assigns[:products]).to be_present
    end
  end

  describe 'Belly GET #show' do
    let(:product) { Product.create() }

    before do
      get :show, id: product.id
      Product.stub(:find).and_return(product)
    end

    it { expect(response).to be_success }
    it { expect(response).to render_template("layouts/belly/application") }
    it { expect(response).to render_template(:show) }

    it 'should assign @product' do
      expect(assigns[:product]).to be_present
    end

  end
end
