class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end

  def show
    @name = MerchantFacade.find_merchant_name(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end

  def search
    @merchants = MerchantFacade.search_for_merchants(params[:search])
  end
end