class Belly::CategoriesController < Belly::ApplicationController

  def index
    @categories = Belly::Category.all
  end

  def show
    @category = Belly::Category.find(params[:id])
  end

end