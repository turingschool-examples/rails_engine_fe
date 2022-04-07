class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @items = ItemFacade.merchant_items(params[:id])
  end
end
