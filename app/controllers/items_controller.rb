class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.find_all
  end

  def show
    @item = ItemsFacade.find_one(params[:id])
  end
end
