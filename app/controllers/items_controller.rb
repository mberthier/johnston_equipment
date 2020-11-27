class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def featured
    @featured = Item.where(featured: true)
  end
end
