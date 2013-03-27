## Overwritting the integration generator to be spec/features folder
## instead of sepc/request

require 'generators/rspec'
require 'generators/rspec/integration/integration_generator'

module Rspec
  module Generators
    class IntegrationGenerator < Base
      def generate_request_spec
        return unless options[:request_specs]

        template 'request_spec.rb',
                 File.join('spec/features', class_path, "#{table_name}_spec.rb")
      end
    end
  end
end
