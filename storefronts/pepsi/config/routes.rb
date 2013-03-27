Backstage::Core::Engine.register_routes(:pepsi) do
  resources :products, only: [:index, :show]
end
