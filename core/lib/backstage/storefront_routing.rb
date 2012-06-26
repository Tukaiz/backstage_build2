class StorefrontRouting

  def initialize(storefront)
    @storefront = storefront
  end

  def matches?(request)
    request.path_parameters.starts_with?("/#{@storefront.to_s}")
  end
end