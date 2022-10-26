class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.merchants_all
  end

  def show
  end
end
