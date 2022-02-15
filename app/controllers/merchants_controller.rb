class MerchantsController < ApplicationController

  def index
    @merchants = MerchantsFacade.get_all_merchants
  end

  def show
    @items = MerchantsFacade.get_merchant_items(params[:id])
  end
end
