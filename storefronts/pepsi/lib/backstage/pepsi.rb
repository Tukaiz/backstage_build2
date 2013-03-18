module Backstage
  module Pepsi

    def self.root
      @root ||= File.expand_path('../../../', __FILE__)
    end
  end
end

require 'backstage/pepsi/engine'
