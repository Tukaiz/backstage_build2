module Backstage
  module Pepsi
    require 'backstage/pepsi/engine'

    def self.root
      @root ||= Pathname(File.expand_path('../../../', __FILE__))
    end
  end
end
