class MerchantsController < ApplicationController 
  def index 
    @merchants = MerchantFacade.create_all_merchants
  end

  def show 
    @merchant = MerchantFacade.create_merchant_search(params[:id])
    @items = MerchantFacade.create_items(params[:id])
  end
end