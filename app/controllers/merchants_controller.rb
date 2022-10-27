class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.find_merchants
  end

  def show
    
  end
end