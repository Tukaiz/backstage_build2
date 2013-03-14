class ApplicationController < ActionController::Base
  layout 'core/application'
  protect_from_forgery

  def current_store
    request.params[:storefront] || request.subdomain
  end
end
