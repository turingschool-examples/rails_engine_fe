class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.all_items
  end

  def show
    @item = ItemsFacade.item_by_id(params[:id])
  end
end
