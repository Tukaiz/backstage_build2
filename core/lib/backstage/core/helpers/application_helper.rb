module Backstage::Core::Helpers::ApplicationHelper


  def login_for(storefront)
    if storefront
      link_to 'Logout', session_path(current_storefront), method: :delete
    else
      link_to 'Login', new_session_path
    end
  end

  def core_helper
    'This is a CORE application helper'
  end

end