class ApplicationController < ActionController::Base
  include Backstage::Core::Controllers::ApplicationController

  layout 'core/application'
end
