class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    @items = MerchantFacade.items(params[:id])
  end
end