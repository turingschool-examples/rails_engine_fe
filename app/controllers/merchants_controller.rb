class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.one_merchant(params[:id])
    @items = MerchantFacade.one_merchants_items(params[:id])
  end
end