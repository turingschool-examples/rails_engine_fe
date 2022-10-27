class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.get_items
  end

  def show
    @item  = ItemsFacade.get_item(params[:id])
  end
end