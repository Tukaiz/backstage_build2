class Backstage::StorefrontRouter

  def initialize(storefront)
    @storefront = storefront
  end

  def matches?(request)
    (request.session[:storefront] || request.subdomain) == @storefront.to_s
  end
end
