class MerchantsController < ApplicationController 

  def index 
    @merchants = MerchantFacade.merchant_info
  end 

  def show 
    @merchant = MerchantFacade.merchant_find(params[:id])
    @items = ItemFacade.merchant_items(params[:id])
  end 

end