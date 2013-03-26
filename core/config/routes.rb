Rails.application.routes.prepend do
  root to: 'home#index'

  resources :products, only: [:index, :show]
end
