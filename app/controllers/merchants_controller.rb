class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.merchants_all
  end

  def show
    @merchant = MerchantFacade.find_merchant(params[:id])
    @items = MerchantFacade.all_items(params[:id])
  end
end
