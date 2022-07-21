class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.get_all_merchants
  end

  def show
    @merchant = MerchantFacade.get_a_merchant(params[:id])
    @items = MerchantFacade.get_merchants_items(params[:id])
    binding.pry
  end
end
