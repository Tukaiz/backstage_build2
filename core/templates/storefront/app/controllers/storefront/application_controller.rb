class Storefront::ApplicationController < ActionController::Base
  include Backstage::Core::Helpers::CurrentStorefront
  include Backstage::Core::Helpers::RequireStorefront
  #layout 'belly/application'
end
