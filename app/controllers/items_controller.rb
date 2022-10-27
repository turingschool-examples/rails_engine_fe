class ItemsController < ApplicationController

  def index
    @items = ItemFacade.items_all
  end

  def show
    @item = ItemFacade.find_item(params[:id])
  end
end
