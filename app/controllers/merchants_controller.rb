class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.merchant_index
  end

  def show
    @merchant = MerchantFacade.merchant_show(params[:id])
  end

end
