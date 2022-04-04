class MerchantsController < ApplicationController
  def index 
    @merchants = MerchantFacade.merchants
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end

  def results 
    @merchant = MerchantFacade.single_merchant_search(params[:name])
  end
end