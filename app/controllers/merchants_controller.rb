class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
    # require 'pry'; binding.pry
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    @items = ItemFacade.merchant_items(params[:id])
  end
end