class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
  end
end
