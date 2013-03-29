describe 'Storefront routing' do

  before do
    @storefront = mock_storefront!(:foo)
  end

  describe 'based on storefront parameter' do
    before do
      Backstage::Core::Engine.register_routes(:foo) do
        resources :products
      end

      class Foo::ProductsController < ApplicationController

        def index
          render text: 'you a foo!'
        end
      end
      Rails.application.reload_routes!
    end

    it 'should route to the correct namespaced controller' do
      pending do
        visit('/products?storefront=foo')
        expect(page).to have_content('you a foo!')
      end
    end
  end
end
