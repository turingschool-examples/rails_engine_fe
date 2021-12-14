class ItemsController < ApplicationController
  def index
    @items = ItemService.all_items
  end

  def show
    @item = ItemService.item_details(params[:id])
  end
end
