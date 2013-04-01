Backstage::Core::Engine.register_routes(:redbox) do
  root to: 'products#index'
  resources :products, only: [:index]
end
