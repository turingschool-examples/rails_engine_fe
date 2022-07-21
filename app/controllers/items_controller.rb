class ItemsController < ApplicationController
  def show
    @item = ItemFacade.get_item(params[:id])
  end
end