class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.single_merchant(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end
end
