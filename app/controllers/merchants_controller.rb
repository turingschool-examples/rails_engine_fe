class MerchantsController < ApplicationController 
  def index 
    @merchants = MerchantFacade.all_merchants
  end

  def show 
    @merchant = MerchantFacade.merchant(params[:id])
    @items = MerchantFacade.merch_items(@merchant.id)
  end
end