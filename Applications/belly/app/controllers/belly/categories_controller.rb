class Belly::CategoriesController < Belly::ApplicationController
  before_filter :require_storefront
  
  def index
    @categories = Belly::Category.all
  end

  def show
    @category = Belly::Category.find(params[:id])
  end

end