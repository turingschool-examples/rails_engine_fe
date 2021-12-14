class MerchantsController < ApplicationController
  def index
    @merchants = MerchantService.all_merchants

  end

  def show
    @merchant = MerchantService.merchant_details(params[:id])
    @items = MerchantService.merchants_items(params[:id])
  end

end
