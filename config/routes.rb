Backstage::Application.routes.draw do
  mount Backstage::Core::Engine, at: '/'
end
