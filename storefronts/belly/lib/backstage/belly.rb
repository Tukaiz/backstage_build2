module Backstage
  module Belly
    require 'backstage/belly/engine'

    def self.root
      @root ||= Pathname(File.expand_path('../../../', __FILE__))
    end
  end
end
