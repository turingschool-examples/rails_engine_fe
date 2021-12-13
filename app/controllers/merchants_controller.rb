class MerchantsController < ApplicationController

  def new
  end

  def index
    @merchants = MerchantFacade.find_merchants
  end

  def show
    @merchant = MerchantFacade.find_one_merchant(params[:id])
  end
end
