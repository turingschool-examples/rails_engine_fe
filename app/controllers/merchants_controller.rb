class MerchantsController < ApplicationController

  def index
    @merchants = MerchantsFacade.get_all_merchants
  end

  def show
    @items = MerchantsFacade.get_merchants_items(params[:id])
    @merchant = MerchantsFacade.get_merchant(params[:id])
  end

end
