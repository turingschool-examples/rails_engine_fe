class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.find_all
  end

  def show
    # merchants = MerchantsFacade.find_all
    # @merchant = merchants.find(params[:id])
    # require "pry"; binding.pry

    @merchant = MerchantsFacade.find_one(params[:id])
    @items = MerchantItemsFacade.find_all(params[:id])
  end
end
