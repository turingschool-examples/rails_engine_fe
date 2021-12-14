class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.all_merchants
  end

  def show
    @merchant = MerchantsFacade.merchant_by_id(params[:id])
    @items = MerchantsFacade.merchant_items(params[:id])
  end

  def search
    @merchants = MerchantsFacade.find_all_merchants_by_name(params[:name])
  end
end
