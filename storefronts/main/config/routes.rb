Backstage::Application.routes.draw { mount Backstage::Core::Engine, at: '/' }
Backstage::Core::Engine.routes.append do
  root to: 'backstage/home#index'

  resources :products, only: [:index, :show]
end