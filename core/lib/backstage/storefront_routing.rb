class Backstage::StorefrontRouting

  def initialize(storefront)
    @storefront = storefront
  end

  def matches?(request)
    # binding.pry
    request.params[:storefront] == @storefront.to_s
  end
end