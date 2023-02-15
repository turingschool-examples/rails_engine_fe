class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchant_data
  end

  def show
    
  end
end