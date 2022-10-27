class ItemsController < ApplicationController
  def index
    @items = ItemFacade.items
  end

  def show
    # require 'pry';binding.pry
    @item = ItemFacade.item(params[:id])
  end
end