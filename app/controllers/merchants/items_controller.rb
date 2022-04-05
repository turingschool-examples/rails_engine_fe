class Merchants::ItemsController < ApplicationController
  def index
    @items = ItemFacade.merchant_items(params[:id])
    @merchant = MerchantFacade.get_merchant(params[:id])
  end
end
