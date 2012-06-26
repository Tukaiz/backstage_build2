Backstage::Core::Engine.register_routes(:belly) do
  root to: 'belly/cool#index'
  match '/home' => 'belly/home#index'
end