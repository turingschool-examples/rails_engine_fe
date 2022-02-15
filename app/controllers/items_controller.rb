class ItemsController < ApplicationController
  def show
    @item = ItemFacade.item_info(params[:id])
  end
end
