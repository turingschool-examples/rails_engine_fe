class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.find_merchants
  end
end