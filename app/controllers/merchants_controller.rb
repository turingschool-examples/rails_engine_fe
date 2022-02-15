class MerchantsController < ApplicationController


  def index
    @merchants = MerchantFacade.merchants
  end

  def show
    @merchant_items = MerchantFacade.merchant_items(params[:id])
  end
end
