Backstage::Core::Engine.register_routes(:belly) do
  root to: 'cool#index'

  match '/products' => 'products#index'
  resources :products, only: [:index, :show]

end
