module Pepsi
  class HomeController < Pepsi::ApplicationController

    def index
      render text: 'This is a pepsi specific products page!'
    end
  end
end
