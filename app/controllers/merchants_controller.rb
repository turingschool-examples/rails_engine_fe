class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.all_merchants

  end

  def show
    @merchant = MerchantsFacade.merchant_details(params[:id])
    @items = MerchantsFacade.merchants_items(params[:id])
  end

end
