Backstage::Core::Engine.register_routes(:pepsi) do
  root to: 'pepsi#index'

  match '/products' => 'pepsi#index'
end
