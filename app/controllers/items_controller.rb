class ItemsController < ApplicationController
  def index
    @items = ItemFacade.items_index
  end

  def show
    @item = ItemFacade.item_show(params[:id])
  end
end