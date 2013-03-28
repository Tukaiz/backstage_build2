Backstage::Core::Engine.register_routes(:belly) do
  root to: 'products#index'

  resources :products, only: [:index]
  resources :categories, only: [:index, :show]

end
