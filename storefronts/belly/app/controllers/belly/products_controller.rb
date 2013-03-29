class Belly::ProductsController < Belly::ApplicationController
  respond_to :html

  before_filter :find_all_products

  def index
    @categories = Belly::Category.all
    respond_with(@products)
  end

  def show
    @product = @products.find(params[:id])
    respond_with(@product)
  end

  protected

  def find_all_products
    @products = Belly::Product.order('title DESC')
  end


end
