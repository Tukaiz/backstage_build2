class Belly::HomeController < Belly::ApplicationController

  def index
    render text: 'Belly home'
  end
end
