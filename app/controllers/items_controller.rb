class ItemsController < ApplicationController
  def index
    @items = ItemFacade.all_items
  end

  def show
    @item = ItemFacade.all_item_details(params[:id])
  end
end
