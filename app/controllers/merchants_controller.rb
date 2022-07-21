class MerchantsController < ApplicationController

  def index
    @merchants = MerchantsFacade.merchants
    # binding.pry
  end

  def show
    @merchant = MerchantsFacade.merchant(params[:merch_id])
    @merchant_items = MerchantsFacade.merchant_items(params[:merch_id])
  end
end