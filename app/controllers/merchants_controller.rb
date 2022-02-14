class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.merchant_info(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end
end
