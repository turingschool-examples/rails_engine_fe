class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.all_merchants
  end
end
