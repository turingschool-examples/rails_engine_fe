class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.merchant_names
  end

  def show
    @name = MerchantFacade.find_merchant(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end
end
