module Backstage::Core::Controllers::ApplicationController

  extend ActiveSupport::Concern

  included do
    # helper_method :shared_method

    protect_from_forgery
  end

  # def shared_method
  #   do shared stuff
  # end

  # def render(*args)
  #   options = args.extract_options!
  #   options[:template] = "/#{controller_name}/#{params[:action]}"
  #   super(*(args << options))
  # end
end
