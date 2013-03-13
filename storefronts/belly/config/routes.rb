Backstage::Core::Engine.register_routes(:belly) do
  root to: 'cool#index'
  #match '/home' => 'home#index'
  resources :products, only: [:index, :show]
end
