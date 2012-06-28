class Backstage::StorefrontRouter

  def initialize(storefront)
    @storefront = storefront
  end

  def matches?(request)
    request.params[:storefront] == @storefront.to_s
  end
end