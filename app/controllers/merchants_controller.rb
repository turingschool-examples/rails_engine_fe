class MerchantsController < ApplicationController
 def index
  @merchants = MerchantFacade.merchants_details
 end
 
 def show
  @merchant = MerchantFacade.merchant_details(params[:id])

  # @items = ItemFacade.merchant_items(params[:merchant_id])??
 end
end
