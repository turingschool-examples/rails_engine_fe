class MerchantsController < ApplicationController 
  def index 
    @merchants = MerchantFacade.create_all_merchants
  end
end