class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.get_merchants
  end

  def show
    
  end
end