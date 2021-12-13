class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.all_items
  end

  def show
    
  end
end
