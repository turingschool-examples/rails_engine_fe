class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.get_merchants
  end

  def show
    @merchant =  MerchantsFacade.merchant(params[:id])
  end
end
