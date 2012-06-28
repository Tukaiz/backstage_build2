Backstage::Core::Engine.routes.draw do
  root to: 'home#index'

  resources :products, only: [:index, :show]
end