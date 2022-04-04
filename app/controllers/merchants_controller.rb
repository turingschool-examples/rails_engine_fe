class MerchantsController < ApplicationController

  def index 
    if params[:query] == "merchant_search"
      @merchants = MerchantFacade.find_all_merchants(params[:search])
    else 
      @merchants = MerchantFacade.all_merchants
    end
  end

  def show
    @merchant = MerchantFacade.merchant_info(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end
end