class Redbox::ProductsController < Redbox::ApplicationController
  respond_to :html

  before_filter :require_storefront

  def index
    @products = Redbox::Product.all
    respond_with(@products)
  end

end
