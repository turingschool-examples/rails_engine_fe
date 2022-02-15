class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_list
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    @items = MerchantFacade.merch_items(params[:id])
  end

  def find
    @merchants = MerchantFacade.found_merchants(params[:find])
  end
end
