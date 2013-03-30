module Backstage
  module Belly

    def self.root
      @root ||= File.expand_path('../../../', __FILE__)
    end
  end
end

require 'backstage/belly/engine'
