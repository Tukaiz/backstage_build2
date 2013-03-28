Rails.application.routes.prepend do
  root to: 'home#index'

  resources :products, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]
end
