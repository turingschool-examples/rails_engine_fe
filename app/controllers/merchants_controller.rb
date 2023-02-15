class MerchantsController < ApplicationController 

  def index 
    @merchants = MerchantsService.get_all_merchants
  end
end