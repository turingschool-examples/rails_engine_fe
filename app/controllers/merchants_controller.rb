class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.one_merchant(params[:id])[:data]
    @merchant_items = MerchantFacade.all_merchant_items(params[:id])
  end
end
