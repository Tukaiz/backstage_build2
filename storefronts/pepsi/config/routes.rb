Backstage::Core::Engine.register_routes(:pepsi) do
  match '/products' => 'pepsi#index'
end