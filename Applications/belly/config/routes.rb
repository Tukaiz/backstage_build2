Backstage::Core::Engine.register_routes(:belly) do
  root to: 'products#index'
  resources :products, only: [:index, :show]
  resources :categories, only: [:index, :show]
end
