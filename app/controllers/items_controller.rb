class ItemsController < ApplicationController
  def index
    @items = ItemFacade.all_items
  end

  def show
    @item = ItemFacade.find_item(params[:id])
  end
end
