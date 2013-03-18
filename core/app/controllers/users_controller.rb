class UsersController < ApplicationController
  respond_to :html

  def index
    render text: 'Core controller User Index'
  end

  def show
    render text: 'Core controller User Show'
  end
end
