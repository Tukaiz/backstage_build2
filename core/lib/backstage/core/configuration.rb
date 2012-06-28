module Backstage
  module Core
    include ActiveSupport::Configurable

    config_accessor :site_name

    def self.site_name
      ::I18n.t('site_name', scope: 'backstage.core.config', default: config.site_name)
    end
  end
end