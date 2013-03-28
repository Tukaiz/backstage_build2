class ApplicationController < ActionController::Base
  include Backstage::Core::Middleware::RequireUser

  layout 'core/application'
  protect_from_forgery

end
