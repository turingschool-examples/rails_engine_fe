class MerchantsController < ApplicationController
  def index
    # merchants = Merchants.all
    @merchants = MerchantsFacade.all_merchants
  end
end
