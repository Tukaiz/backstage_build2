Backstage::Core::Engine.register_routes(:belly) do
  root to: 'cool#index'
  resources :products, only: [:index, :show]
end
