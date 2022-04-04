class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.get_merchants
    #binding.pry
  end

  def show
    #binding.pry
    @merchant =  MerchantFacade.merchant_find(params[:id])
    @merch_items = MerchantFacade.merch_items(params[:id])
  end
end
