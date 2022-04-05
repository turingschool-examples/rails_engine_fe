class ItemsController < ApplicationController
  def show
    @item = ItemFacade.find_item(params[:id])
  end
end
