class SessionsController < ApplicationController
  respond_to :html

  def new
  end

  def create
    session[:storefront] = params[:storefront]
    redirect_to root_path
  end

  def destroy
    session[:storefront] = nil
    redirect_to new_session_path
  end

end