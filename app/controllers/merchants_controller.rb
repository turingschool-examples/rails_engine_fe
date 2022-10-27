class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.merchants_all
  end

  def show
    @merchant = MerchantFacade.find_merchant(params[:id])
  end
end
