class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.get_all_items
  end

  def show
  end
end
