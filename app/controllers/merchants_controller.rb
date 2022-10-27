class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end

  def show
    @items = MerchantFacade.merchant_items(params[:id])
  end
end
