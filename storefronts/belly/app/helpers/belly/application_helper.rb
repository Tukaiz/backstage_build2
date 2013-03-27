module Belly::ApplicationHelper
  include Backstage::Core::Helpers::ApplicationHelper

  def core_helper
    'Override the core helper!!'
  end
end