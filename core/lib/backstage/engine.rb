module Backstage::Engine
  extend ActiveSupport::Concern

  included do
    paths["#{root}/app"]                 # => ["app"]
    paths["#{root}/app/controllers"]     # => ["app/controllers"]
    paths["#{root}/app/helpers"]         # => ["app/helpers"]
    paths["#{root}/app/models"]          # => ["app/models"]
    paths["#{root}/app/views"]           # => ["app/views"]
    paths["#{root}/lib"]                 # => ["lib"]
    paths["#{root}/lib/tasks"]           # => ["lib/tasks"]
    paths["#{root}/config"]              # => ["config"]
    paths["#{root}/config/initializers"] # => ["config/initializers"]
    paths["#{root}/config/locales"]      # => ["config/locales"]
    paths["#{root}/config/routes"]       # => ["config/routes.rb"]
  end
end
