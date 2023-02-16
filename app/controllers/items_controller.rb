class ItemsController < ApplicationController 

  def index 
    @items = ItemsFacade.all_items
  end

  def show 
    @item = ItemsFacade.find_item(params[:id])
  end
end