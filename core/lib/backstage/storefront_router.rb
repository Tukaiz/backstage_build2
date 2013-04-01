class Backstage::StorefrontRouter

  def initialize(storefront)
    @storefront = storefront
  end

  def matches?(request)
    #(request.session[:storefront] || request.params[:storefront] || request.subdomain) == @storefront.to_s
    (request.params[:storefront] || URLS[request.host]) == @storefront.to_s
  end
end
