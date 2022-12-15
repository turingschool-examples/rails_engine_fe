class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants
  end
end