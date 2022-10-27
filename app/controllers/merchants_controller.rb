class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.find_merchants
  end

  def show
    @merchant = MerchantFacade.find_merchant(params[:id])
    @items = MerchantFacade.find_merchant_items(params[:id])
  end
end