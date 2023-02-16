class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants_data
  end

  def show
    @merchant = MerchantFacade.merchant_data(params[:id])
    @items = ItemFacade.merchant_items
  end
end
