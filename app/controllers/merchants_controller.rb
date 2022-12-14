class MerchantsController < ApplicationController 
  def index 
    @facade = MerchantsFacade.new
  end
end