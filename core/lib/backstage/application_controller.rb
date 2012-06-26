module Backstage
  module ApplicationController

    extend ActiveSupport::Concern

    included do
      # helper_method :shared_method

      protect_from_forgery
    end

    # def shared_method
    #   do shared stuff
    # end
  end
end