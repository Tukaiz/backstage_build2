class ApplicationController < ActionController::Base
  include Backstage::Core::Helpers::RequireUser

  layout 'core/application'
  protect_from_forgery

end
