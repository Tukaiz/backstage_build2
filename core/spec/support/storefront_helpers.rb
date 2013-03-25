module StorefrontHelpers

  def mock_storefront!(name = :testing)
    engine = Class.new(Rails::Engine) do
      include Backstage::Engine

      engine_name name

      config.after_initialize do
        Backstage.register_storefront(engine_name)
      end
    end

    engine
  end
end
