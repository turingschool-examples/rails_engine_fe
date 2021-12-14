class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.all_merchants
  end

  def show
    @merchant = MerchantsFacade.merchant_by_id(params[:id])
    @items = MerchantsFacade.merchant_items(params[:id])
  end
end
