class ItemsController < ApplicationController
  def index
    @items = ItemFacade.items_data
  end

  def show
    @item = ItemFacade.item_data
  end
end