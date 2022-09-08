class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.create_all_merchants
  end
  
  def show
    @merchant = MerchantFacade.create_merchant(params[:id])
  end
end
