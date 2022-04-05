class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.find_merchant(params[:id])
    @items = MerchantItemsFacade.all_items(@merchant)

    # require "pry"; binding.pry
  end
end