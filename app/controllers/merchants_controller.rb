class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchant_list
  end
end