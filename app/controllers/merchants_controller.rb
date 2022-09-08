class MerchantsController < ApplicationController

  def index
    @merchant = MerchantFacade.create_merchants
  end
end