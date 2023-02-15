class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
    # require 'pry'; binding.pry
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
  end
end