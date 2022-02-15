class ItemsController < ApplicationController
  def index
    @items = ItemFacade.items_list
  end

  def show
    @item = ItemFacade.item(params[:id])
    @merchant = ItemFacade.item_merch(params[:id])
  end
end
