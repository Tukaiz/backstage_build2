module Pepsi
  class ApplicationController < ActionController::Base
  	include Backstage::Core::Helpers::CurrentStorefront
    layout 'pepsi/application'

  end
end
