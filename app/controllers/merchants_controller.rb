class MerchantsController < ApplicationController 
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.one_merchant(params[:id])
    @merchant_items = MerchantFacade.merchant_items(params[:id])
  end
end