class ProductsController < ApplicationController
  respond_to :html

  before_filter :find_all_products, except: [:create, :destroy, :update]

  def index
    respond_with(@products)
  end

  def show
    @product = @products.find(params[:id])
    respond_with(@product)
  end

  protected
  def find_all_products
    @products = Product.order('title DESC')
  end
end
