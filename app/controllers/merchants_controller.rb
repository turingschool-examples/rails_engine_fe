class MerchantsController < ApplicationController 

  def index 
    @merchants = MerchantsService.all_merchants
  end
end