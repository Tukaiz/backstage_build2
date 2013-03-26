module StorefrontHelpers

  def mock_storefront!(name = :testing)
    klass = Class.new(Rails::Engine) do
      include Backstage::Engine

      engine_name name

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end
    Object.const_set(name.to_s.classify, klass)
  end
end
