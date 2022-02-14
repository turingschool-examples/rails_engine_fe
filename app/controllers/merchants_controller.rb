class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_info
  end

  def show
    @merchant = MerchantFacade.merchant_info(params[:id])
    @items = MerchantFacade.item_info(params[:id])
  end
end
