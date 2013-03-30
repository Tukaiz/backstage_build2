class Pepsi::ProductsController < Pepsi::ApplicationController
  respond_to :html

  before_filter :find_all_products

  def index
    respond_with(@products)
  end

  def show
    @product = @products.find(params[:id])
    respond_with(@product)
  end


  private

  def find_all_products
    @products = Pepsi::Product.order('title DESC')
  end
end
