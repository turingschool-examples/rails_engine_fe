class ItemsController < ApplicationController
  def index 
    @items = ItemFacade.all_items
  end

  def show  
    @item = ItemFacade.item_info(params[:id])
    @merchant = ItemFacade.item_merchant(params[:id])
  end
end