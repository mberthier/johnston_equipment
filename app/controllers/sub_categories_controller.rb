class SubCategoriesController < ApplicationController
  def index
    @sub_categories = SubCategory.all
  end

  def show
    @sub_ategory = SubCategory.find(params[:id])
  end
end
