class ItemsController < ApplicationController
  def show
    @item = ItemFacade.find_item(params[:id])
  end

  def index
    @items = ItemFacade.all_items
  end
end
