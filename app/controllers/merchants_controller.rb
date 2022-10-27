class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.get_merchants
  end

  def show
    @merchants_items = MerchantFacade.get_merchants_items(params[:id])
  end
end