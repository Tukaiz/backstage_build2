class Belly::ApplicationController < ActionController::Base
  include Backstage::Core::Controllers::ApplicationController
  include Backstage::Core::Helpers::CurrentStorefront
  include Backstage::Core::Helpers::RequireStorefront
  layout 'belly/application'
end
