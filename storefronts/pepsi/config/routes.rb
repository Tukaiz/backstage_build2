Backstage::Core::Engine.register_routes(:pepsi) do
  root to: 'products#index'
  resources :products, only: [:index, :show]
end

