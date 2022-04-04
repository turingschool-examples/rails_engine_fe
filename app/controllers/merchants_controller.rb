class MerchantsController < ApplicationController

  def index 
    if params[:query]
      @merchants = MerchantFacade.find_all_merchants(params[:query])
    else 
      @merchants = MerchantFacade.all_merchants
    end
  end

  def show
    @merchant = MerchantFacade.merchant_info(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end
end