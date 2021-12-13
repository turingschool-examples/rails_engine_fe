class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_index
  end

  def show
    @merchant = MerchantFacade.merchant_show(params[:id])
    @items = MerchantFacade.merchants_items(params[:id])
  end
end