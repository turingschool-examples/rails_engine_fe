class ItemsController < ApplicationController 

  def index 
    @items = ItemFacade.items
  end

  def show
    @item = ItemFacade.item(params[:id])
    # binding.pry
  end
end
