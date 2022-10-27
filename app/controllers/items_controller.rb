class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.items
  end

  def show
    @item = ItemsFacade.item(params[:id])
  end
end