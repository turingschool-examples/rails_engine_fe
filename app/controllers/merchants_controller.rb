class MerchantsController < ApplicationController 

  def index 
    @merchants = MerchantsFacade.all_merchants
  end

  def show 
    @merchant = MerchantsFacade.find_merchant(params[:id])
    @items = MerchantsFacade.merchant_items(@merchant.id)
  end
end