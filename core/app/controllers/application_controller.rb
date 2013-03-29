class ApplicationController < ActionController::Base
  include Backstage::Core::Controllers::ApplicationController
  include Backstage::Core::Helpers::RequireUser

  layout 'core/application'
end
