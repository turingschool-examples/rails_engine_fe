class MerchantsController < ApplicationController 

  def index 
    @merchants = MerchantsFacade.all_merchants
  end

  def show 
    
  end
end