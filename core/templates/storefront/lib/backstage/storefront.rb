module Backstage
  module Storefront

    def self.root
      @root ||= File.expand_path('../../../', __FILE__)
    end
  end
end

require 'backstage/storefront/engine'
