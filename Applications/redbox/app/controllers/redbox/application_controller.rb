class Redbox::ApplicationController < ActionController::Base
  include Backstage::Core::Helpers::CurrentStorefront
  include Backstage::Core::Helpers::RequireStorefront

end
