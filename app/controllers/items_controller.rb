class ItemsController < ApplicationController
  def show
    @item = ItemFacade.find_item(item_params[:id])
  end

  private

  def item_params
    params.permit(:id)
  end
end
