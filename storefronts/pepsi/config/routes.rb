Backstage::Core::Engine.register_routes(:pepsi) do
  #match '/products' => 'pepsi#index'
  resources :products, only: [:index, :show]
end

