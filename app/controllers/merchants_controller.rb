class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.get_all_merchants
  end

  def show
  end
end
